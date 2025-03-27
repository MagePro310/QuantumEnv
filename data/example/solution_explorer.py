"""A utility script to visualize a solution to the scheduling problem."""

# TODO make usable with example_problem.py
# - Globals of milp are not available anymore
# - Need to read the json solution file
# - Move argparse to main
import argparse
import json

import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from matplotlib import ticker
from matplotlib.patches import Patch


def _read_solution_file(solution_file: str) -> pd.DataFrame:
    """Reads a solution file and returns a dataframe with job scheduling information.

    Args:
        solution_file (str): The solution file to read.

    Returns:
        pd.DataFrame: A dataframe with the columns job, qubits, machine, capacity,
        start, end, duration.
    """
    # Mở và đọc tệp JSON
    try:
        with open(solution_file, encoding="utf-8") as f:
            data = json.load(f)
    except FileNotFoundError:
        raise FileNotFoundError(f"Error: File '{solution_file}' not found.")
    except json.JSONDecodeError:
        raise ValueError(f"Error: File '{solution_file}' is not a valid JSON.")

    # Kiểm tra xem JSON có đúng cấu trúc không
    if "params" not in data or "variables" not in data:
        raise KeyError("Error: JSON file structure is incorrect. Missing 'params' or 'variables'.")

    params = data["params"]
    variables = data["variables"]

    # Lấy danh sách công việc và máy
    jobs = params.get("jobs", [])
    machines = params.get("machines", [])
    job_capacities = params.get("job_capcities", {})
    machine_capacities = params.get("machine_capacities", {})

    rows_list = []
    
    for job in jobs:
        # Tìm thời gian bắt đầu và kết thúc từ `variables`
        start_key = f"s_j_{jobs.index(job) + 1}"  # Vì job có index từ 1
        end_key = f"c_j_{jobs.index(job) + 1}"

        start = variables.get(start_key, None)
        end = variables.get(end_key, None)

        if start is None or end is None:
            print(f"Warning: Missing start or end time for job {job}. Skipping...")
            continue

        duration = end - start

        # Xác định máy được gán từ `variables`
        assigned_machine = None
        for machine in machines:
            machine_key = f"x_ik_{jobs.index(job) + 1}_{machine}"
            if variables.get(machine_key, 0) >= 0.5:
                assigned_machine = machine
                break
        
        if assigned_machine is None:
            print(f"Warning: No machine assigned for job {job}. Skipping...")
            continue

        capacity = machine_capacities.get(assigned_machine, None)

        # Thêm dữ liệu vào danh sách
        rows_list.append({
            "job": job,
            "qubits": job_capacities.get(job, None),
            "machine": assigned_machine,
            "capacity": capacity,
            "start": start,
            "end": end,
            "duration": duration,
        })

    # Chuyển đổi danh sách thành DataFrame
    df = pd.DataFrame(rows_list)
    # Save rows_list to a file
    with open('job_data.txt', 'w') as f:
        for item in rows_list:
            f.write("%s\n" % item)
    return df


def generate_schedule_plot(solution_file: str, pdf_name: str | None = None):
    """Generates a plot of the schedule in the solution file.

    Args:
        solution_file (str): The schedule to visualize.
        pdf_name (str | None, optional): The name of the output PDF to write. If not
            provided, the plot is instead opened with `plt.show()`. Defaults to None.
    """
    # General comment: The completion time of a job is the last time step in which it is processed
    # Similarily, the start time of a job is the first time step in which it is processed
    # The duration is the number of time steps in which it is processed

    # Read the solution
    df = _read_solution_file(solution_file)
    print(df)

    # Create a color mapping for the machines
    machine_colors = ["#154060", "#98c6ea", "#527a9c"]
    color_mapping = dict(zip(df["machine"].unique(), machine_colors))

    # Plot the jobs
    # The grid lines are at the start of a time step.
    # Hence, if a job ends in time step 11, the bar ends at 12.
    _, ax = plt.subplots()

    for i, row in df.iterrows():
        padding = 0.1
        height = 1 - 2 * padding
        ax.barh(
            i,
            row["duration"],
            left=row["start"],
            height=height,
            edgecolor="black",
            linewidth=2,
            color=color_mapping[row["machine"]],
        )

    # Create patches for the legend
    patches = []
    for color in color_mapping.values():
        p = Patch(color=color)
        p.set_edgecolor("black")
        p.set_linewidth(1)
        patches.append(p)

    # Set the xticks
    ax.xaxis.set_minor_locator(ticker.MultipleLocator(1))

    # Set the yticks
    yticks = np.arange(len(df))
    ytick_labels = [f"{job} ({qubits})" for job, qubits in zip(df["job"], df["qubits"])]
    ax.set_yticks(yticks)
    ax.set_yticklabels(ytick_labels)
    ax.invert_yaxis()

    # Set the axis labels
    plt.xlabel("Time")
    plt.grid(axis="x", which="major")
    plt.grid(axis="x", which="minor", alpha=0.4)

    legend_labels = list(color_mapping.keys())
    # Print the legend labels with name and capacity
    legend_labels = [
        f"{label} ({df[df['machine'] == label]['capacity'].iloc[0]})"
        for label in legend_labels
    ]
    
    plt.legend(handles=patches, labels=legend_labels)

    if pdf_name:
        plt.tight_layout()
        plt.savefig(pdf_name, format="pdf", bbox_inches="tight")
    else:
        plt.show()


if __name__ == "__main__":
    # Parse the command line arguments
    parser = argparse.ArgumentParser(
        description="Visualize a solution to the scheduling problem"
    )
    parser.add_argument(
        "solution",
        type=str,
        help="The solution file to visualize",
        nargs="?",
        default="data/results/scheduling.json",
    )
    parser.add_argument(
        "--pdf",
        type=str,
        help="Write the plot to a PDF file",
        nargs="?",
        metavar="FILE",
    )
    args = parser.parse_args()
    print(args)
    
    generate_schedule_plot(args.solution, args.pdf)
