import json
import pandas as pd

def save_benchmark_to_csv(json_file: str, csv_file: str):
    """Reads benchmark data from a JSON file and saves it to a CSV file with dynamic algorithm detection."""
    with open(json_file, "r", encoding="utf-8") as f:
        data = json.load(f)

    csv_data = []
    algorithm_names = set()  # Store all detected algorithm names dynamically

    # Identify all algorithm types from the first benchmark
    for setting_data in data:
        benchmarks = setting_data["benchmarks"]
        if benchmarks:
            first_benchmark = benchmarks[0]
            algorithm_names.update(first_benchmark["results"].keys())
        break  # Only need to check the first occurrence

    # Convert set to sorted list to maintain order
    algorithm_names = sorted(algorithm_names)

    for setting_data in data:
        setting = setting_data["setting"]  # Extract setting as a dictionary
        benchmarks = setting_data["benchmarks"]  # List of benchmarks

        for benchmark in benchmarks:
            results = benchmark["results"]

            row = {"Setting": json.dumps(setting)}  # Store setting as a JSON string

            # Dynamically extract makespan and computation time for all algorithms
            for algo in algorithm_names:
                row[f"{algo} makespan"] = results[algo]["makespan"]
                
            for algo in algorithm_names:
                row[f"{algo} time"] = results[algo]["time"]

            csv_data.append(row)

    # Convert list to DataFrame
    df = pd.DataFrame(csv_data)

    # Save to CSV
    df.to_csv(csv_file, index=False)
    print(f"Saved benchmark results to {csv_file}")
    
# Usage
save_benchmark_to_csv(
    "./data/results/benchmark_results_default.json",
    "./data/results/benchmark_results_default.csv")