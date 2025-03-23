"""Data processing for the benchmark results."""
from dataclasses import dataclass, asdict

import json
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd


@dataclass
class MakespanResult:
    """Holds the makespan values for the baseline, simple, and extended algorithms."""

    baseline: float
    simple: float
    extended: float


@dataclass
class TimingResult:
    """Holds the timing values for the baseline, simple, and extended algorithms."""

    baseline: float
    simple: float
    extended: float

@dataclass
class Result:
    """Holds the result values for the baseline, simple, and extended algorithms."""
    
    algorithm: str
    ultilization: float
    through_put: float
    waitting_time: float
    response_time: float


@dataclass
class JobResultInfo:
    """Holds the job result information."""

    name: str
    machine: int
    start_time: float
    completion_time: float
    capacity: int
      
    def __repr__(self) -> str:
        return (
            f"Job: {self.name}, Machine: {self.machine}, "
            + f"Start Time: {self.start_time:.2f}, "
            + f"Completion Time: {self.completion_time:.2f}, "
            + f"Capacity: {self.capacity}"
        )

@dataclass
class UtilizationResult:
    """Holds the utilization values for the baseline, simple, and extended algorithms."""

    baseline: float
    simple: float
    extended: float

    def __repr__(self) -> str:
        return (
            f"Baseline Utilization: {self.baseline:.2%}\n"
            + f"Simple Utilization: {self.simple:.2%}\n"
            + f"Extended Utilization: {self.extended:.2%}"
        )
        


@dataclass
class ImprovementResult:
    """Holds the improvement values for the simple and extended algorithms."""

    simple_makespan: float
    simple_time: float
    extended_makespan: float
    extended_time: float

    def __repr__(self) -> str:
        return (
            f"Simple Makespan: {self.simple_makespan:.2%}\n"
            + f"Simple Time: {self.simple_time:.2e}\n"
            + f"Extended Makespan: {self.extended_makespan:.2%}\n"
            + f"Extended Time: {self.extended_time:.2e}"
        )


def analyze_benchmarks(in_file: str) -> dict[str, ImprovementResult]:
    """Visualizes the benchmark results and calculates the average improvements.

    Calculates Makespan and Timing improvements for the simple and extended algorithms.
    Makespan improvements are calculated as (baseline - algorithm) / baseline * 100
    Timing improvements are calculated as (algorithm / baseline)

    Args:
        in_file (str): The file containing the benchmark results.

    Returns:
        dict[str, ImprovementResult]: The calculated improvements for each setting.
    """
    with open(in_file, "r", encoding="utf-8") as f:
        data: list[dict] = json.load(f)
    numbers = {}
    for idx, setting in enumerate(data):
        title = str(setting["setting"])
        setting_machine = setting["setting"]
        benchmarks = setting["benchmarks"] 
        makespans, times = [], []
        results_analyze = []
        # Loop through each benchmark
        for benchmark in benchmarks:
            # Extract the makespan values
            results = benchmark["results"]
            makespans.append(
                MakespanResult(
                    baseline=results["baseline"]["makespan"],
                    simple=results["simple"]["makespan"],
                    extended=results["extended"]["makespan"],
                )
            )
            times.append(
                TimingResult(
                    baseline=results["baseline"]["time"],
                    simple=results["simple"]["time"],
                    extended=results["extended"]["time"],
                )
            )
            print(f"times: {type(times[0])} : {times[0].baseline}" )
            
            # Extract start and completion times all jobs
            algorithms = ["baseline", "simple", "extended"]
            for algorithm in algorithms:
                # Extract the job results
                jobs = results[algorithm]["jobs"]
                job_result = []
                for job in jobs:
                    job_result.append(
                        JobResultInfo(
                            name=job["name"],
                            machine=job["machine"],
                            start_time=job["start_time"],
                            completion_time=job["completion_time"],
                            capacity=job["capacity"],
                        )
                    )
                # print(job_result)
                
                # Calculate the utilization for each algorithm for machine
                analyze_ultilization = _calculate_ultization(setting_machine, job_result, makespans, algorithm)
                # Calculate the Throughput for each algorithm
                analyze_through_put = _calculate_throughput(job_result, makespans, times, algorithm)
                # Calculate the waiting time for each algorithm
                analyze_waitting_time = _calculate_waiting_time(job_result, times, algorithm)
                # Calculate the turn around time for each job
                analyze_response_time = _calculate_response_time(job_result, times, algorithm)
                
                results_analyze.append(
                    Result(
                        algorithm,
                        analyze_ultilization,
                        analyze_through_put,
                        analyze_waitting_time,
                        analyze_response_time
                    )
                )
        print(results_analyze)
        # plot result_analyze
        plot_analysis_results(results_analyze)
                                
        hide_x_axis = idx < len(data) - 1
        _plot_benchmark_result(
            makespans, title, (len(data), 1, idx + 1), hide_x_axis=hide_x_axis
        )
        numbers[title] = _caclulate_improvements(makespans, times)
        # Display the resulting plot
    plt.tight_layout()
    plt.savefig(in_file.replace(".json", ".pdf"))
    return numbers


def _plot_benchmark_result(
    makespans: list[MakespanResult],
    title: str,
    subplot: tuple[int, int, int],
    bar_width=0.25,
    hide_x_axis: bool = False,
) -> None:
    """Plot the makespan values for the baseline, simple, and extended algorithms."""

    data = pd.DataFrame(asdict(result) for result in makespans)
    x_pos_1 = np.arange(len(data["baseline"]))
    x_pos_2 = [x + bar_width for x in x_pos_1]
    x_pos_3 = [x + bar_width for x in x_pos_2]
    plt.subplot(*subplot)

    plt.bar(
        x_pos_1,
        data["baseline"],
        width=bar_width,
        label="baseline",
        edgecolor="white",
        color="#154060",
    )
    plt.bar(
        x_pos_2,
        data["simple"],
        width=bar_width,
        label="simple",
        edgecolor="white",
        color="#527a9c",
    )
    plt.bar(
        x_pos_3,
        data["extended"],
        width=bar_width,
        label="extended",
        edgecolor="white",
        color="#98c6ea",
    )

    if not hide_x_axis:
        plt.xlabel("Trial", fontweight="bold")
    plt.xticks(x_pos_2, [str(x) for x in x_pos_1])
    plt.ylabel("Total Makespan", fontweight="bold")
    plt.title(title, fontweight="bold")
    plt.legend()


def _caclulate_improvements(
    makespans: list[MakespanResult], times: list[TimingResult]
) -> ImprovementResult:
    """Calculates the average improvement for the simple and extended algorithms."""
    simple_makespans, extended_makespans = [], []
    simple_times, extended_times = [], []
    for makespan, time in zip(makespans, times):
        baseline = makespan.baseline
        baseline_time = time.baseline
        simple_makespans.append((baseline - makespan.simple) / baseline * 100)
        extended_makespans.append((baseline - makespan.extended) / baseline * 100)

        # TODO still not sure what the best metric for this is
        simple_times.append(time.simple / baseline_time)
        extended_times.append(time.extended / baseline_time)

    return ImprovementResult(
        float(np.average(simple_makespans)),
        float(np.average(simple_times)),
        float(np.average(extended_makespans)),
        float(np.average(extended_times)),
    )

def _calculate_response_time(
    job_result: list[JobResultInfo], times: list[TimingResult], algorithm: str
) -> float:
    """Calculates the response time for each job."""
    # TODO implement this
    respone_time = 0
    if algorithm == "baseline":
        for job in job_result:
            respone_time += times[0].baseline + job.completion_time
        print(f"Response time for {algorithm}: {respone_time:.2f}")
        return respone_time
        
    elif algorithm == "simple":
        for job in job_result:
            respone_time += times[0].simple + job.completion_time
        print(f"Response time for {algorithm}: {respone_time:.2f}")
        return respone_time
        
    elif algorithm == "extended":
        for job in job_result:
            respone_time += times[0].extended + job.completion_time
        print(f"Response time for {algorithm}: {respone_time:.2f}")
        return respone_time
    
    return -11111


def _calculate_waiting_time(
    job_result: list[JobResultInfo], times: list[TimingResult], algorithm: str
) -> float:
    """Calculates the waiting time for each job."""
    # TODO implement this
    waiting_time = 0
    if algorithm == "baseline":
        for job in job_result:
            waiting_time += times[0].baseline + job.start_time
        print(f"Waiting time for {algorithm}: {waiting_time:.2f}")
        return waiting_time
        
    elif algorithm == "simple":
        for job in job_result:
            waiting_time += times[0].simple + job.start_time
        print(f"Waiting time for {algorithm}: {waiting_time:.2f}")
        return waiting_time
        
    elif algorithm == "extended":
        for job in job_result:
            waiting_time += times[0].extended + job.start_time
        print(f"Waiting time for {algorithm}: {waiting_time:.2f}")
        return waiting_time
    
    return -11111
        
        
def _calculate_throughput(
    job_result: list[JobResultInfo], makespans: list[MakespanResult], times: list[TimingResult], algorithm: str
) -> float:
    """Calculates the throughput for each algorithm."""
    # TODO implement this
    # throughput =  makespans[0].baseline / len(job_result)
    throughput = 0
    if algorithm == "baseline":
        for job in job_result:
            throughput += times[0].baseline + makespans[0].baseline / len(job_result)
        print(f"Throughput for {algorithm}: {throughput:.2f}")
        return throughput
    elif algorithm == "simple":
        for job in job_result:
            throughput += times[0].simple + makespans[0].simple / len(job_result)
        print(f"Throughput for {algorithm}: {throughput:.2f}")
        return throughput
    elif algorithm == "extended":
        for job in job_result:
            throughput += times[0].extended + makespans[0].extended / len(job_result)
        print(f"Throughput for {algorithm}: {throughput:.2f}")
        return throughput
    return -11111
        

def _calculate_ultization(
    setting_machine: dict[str, int],
    job_result: list[JobResultInfo],
    makespans: list[MakespanResult],
    algorithm: str,
) -> float:
    """Calculates the utilization for each algorithm."""
    # TODO implement this
    utilization = 0
    total_capacity = 0
    for setting_value in setting_machine.values():
        total_capacity += setting_value
        
    if algorithm == "baseline":
        total_time_dot_job_cap = 0
        for job in job_result:
            total_time_dot_job_cap += (job.completion_time - job.start_time) * job.capacity
        utilization = total_time_dot_job_cap / (total_capacity * makespans[0].baseline)
    
        print(f"Utilization for {algorithm}: {utilization:.2%} for {setting_machine}")
        return utilization
    elif algorithm == "simple":
        total_time_dot_job_cap = 0
        for job in job_result:
            total_time_dot_job_cap += (job.completion_time - job.start_time) * job.capacity
        utilization = total_time_dot_job_cap / (total_capacity * makespans[0].simple)
    
        print(f"Utilization for {algorithm}: {utilization:.2%} for {setting_machine}")
        return utilization
    elif algorithm == "extended":
        total_time_dot_job_cap = 0
        for job in job_result:
            total_time_dot_job_cap += (job.completion_time - job.start_time) * job.capacity
        utilization = total_time_dot_job_cap / (total_capacity * makespans[0].extended)
    
        print(f"Utilization for {algorithm}: {utilization:.2%} for {setting_machine}")
        return utilization
    return -11111


def plot_linear_num_per_batch(results: list[Result]):
    """Visualize Utilization, Throughput, Waiting Time, and Response Time for 3 algorithms over batches."""
    import matplotlib.pyplot as plt

    # Convert list of dataclass Result to DataFrame
    df = pd.DataFrame([asdict(r) for r in results])

    # Prepare metrics
    metrics = ['ultilization', 'through_put', 'waitting_time', 'response_time']
    titles = ['Utilization', 'Throughput', 'Waiting Time', 'Response Time']
    colors = {'baseline': '#154060', 'simple': '#527a9c', 'extended': '#98c6ea'}

    fig, axs = plt.subplots(2, 2, figsize=(14, 10))
    axs = axs.flatten()

    for idx, metric in enumerate(metrics):
        ax = axs[idx]
        for algo in df['algorithm'].unique():
            values = df[df['algorithm'] == algo][metric].reset_index(drop=True)
            ax.plot(values, marker='o', label=algo, color=colors[algo])
        ax.set_title(titles[idx], fontweight='bold')
        ax.set_xlabel('Batch')
        ax.set_ylabel(metric.replace('_', ' ').title())
        ax.grid(True)
        ax.legend()

    plt.tight_layout()
    plt.show()

def plot_analysis_results(results: list[Result], save_path: str = "analysis_results.png"):
    """Plot and save 4 bar plots for Utilization, Throughput, Waiting Time, Response Time over 5 batches."""

    import matplotlib.pyplot as plt
    import numpy as np
    import pandas as pd

    # Convert to DataFrame
    df = pd.DataFrame([asdict(r) for r in results])
    
    # Add batch column (assuming 5 batches, each with 3 algorithms)
    df['batch'] = np.repeat(range(1, len(df) // 3 + 1), 3)

    # Set up plots
    metrics = ['ultilization', 'through_put', 'waitting_time', 'response_time']
    titles = ['Utilization', 'Throughput', 'Waiting Time', 'Response Time']
    ylabels = ['Utilization (%)', 'Throughput', 'Time (s)', 'Time (s)']
    colors = {'baseline': '#154060', 'simple': '#527a9c', 'extended': '#98c6ea'}

    fig, axs = plt.subplots(2, 2, figsize=(16, 10))
    axs = axs.flatten()

    bar_width = 0.25
    x = np.arange(len(df['batch'].unique()))  # 5 batches

    for idx, metric in enumerate(metrics):
        ax = axs[idx]
        for i, algo in enumerate(['baseline', 'simple', 'extended']):
            algo_data = df[df['algorithm'] == algo]
            ax.bar(x + i * bar_width,
                   algo_data[metric],
                   width=bar_width,
                   label=algo,
                   color=colors[algo])
        
        ax.set_title(titles[idx], fontweight='bold')
        ax.set_xticks(x + bar_width)
        ax.set_xticklabels([f"Batch {i}" for i in range(1, len(x) + 1)])
        ax.set_ylabel(ylabels[idx])
        ax.grid(True, linestyle='--', linewidth=0.5, alpha=0.7)
        ax.legend()

    plt.tight_layout()
    plt.savefig(save_path)
    print(f"✅ Saved plots to: {save_path}")
