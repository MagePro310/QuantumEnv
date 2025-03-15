import ast
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

def read_dataframe_from_txt(file_path: str) -> pd.DataFrame:
    """Đọc file .txt chứa dữ liệu dạng dictionary từng dòng và chuyển thành DataFrame."""
    data = []
    try:
        with open(file_path, "r", encoding="utf-8") as file:
            for line in file:
                line = line.strip()
                if line:  # Bỏ qua dòng trống
                    data.append(ast.literal_eval(line))  # Chuyển đổi chuỗi thành dictionary

        return pd.DataFrame(data)
    except FileNotFoundError:
        raise FileNotFoundError(f"Error: File '{file_path}' not found.")
    except (SyntaxError, ValueError):
        raise ValueError(f"Error: File '{file_path}' chứa dữ liệu không hợp lệ.")

def plot_machine_qubit_utilization(df: pd.DataFrame, output_file="machine_utilization_plot.pdf"):
    """Vẽ đồ thị đường mô tả tỷ lệ sử dụng qubit của từng máy theo thời gian (%) với đơn vị time step đúng."""
    if df.empty:
        raise ValueError("Error: DataFrame is empty.")

    # Xác định danh sách các máy và tổng capacity của mỗi máy
    machines = df["machine"].unique()
    machine_capacity = {machine: df[df["machine"] == machine]["capacity"].iloc[0] for machine in machines}

    # Xác định thời điểm cuối cùng mà các job hoàn thành
    final_time = int(df["end"].max())

    # Dictionary để lưu qubit utilization theo thời gian của từng máy
    machine_timeline = {machine: np.zeros(final_time + 2) for machine in machines}  # +2 để tính khoảng thời gian đúng

    # Cập nhật số qubit sử dụng trong từng khoảng thời gian cho mỗi máy
    for _, row in df.iterrows():
        start, end, qubits, machine = int(row["start"]), int(row["end"]), row["qubits"], row["machine"]
        machine_timeline[machine][start:end + 1] += qubits  # Cộng dồn số qubit vào từng thời điểm

    # Chuyển đổi sang phần trăm (%) dựa trên capacity của máy
    for machine in machines:
        capacity = machine_capacity[machine]
        machine_timeline[machine] = (machine_timeline[machine] / capacity) * 100  # Chuyển thành %

    # Xác định trục X theo thời gian thực (bắt đầu từ 0 đến final_time+1)
    time_steps = np.arange(0, final_time + 2, 1)  # Tạo khoảng thời gian chính xác

    # Vẽ biểu đồ
    plt.figure(figsize=(10, 5))

    for machine, timeline in machine_timeline.items():
        plt.plot(time_steps, timeline, marker='o', linestyle='-', label=f"Utilization - {machine} (%)")

    plt.xlabel("Time")
    plt.ylabel("Qubit Utilization (%)")
    plt.title("Machine Qubit Utilization Over Time (%)")
    plt.xticks(range(0, final_time + 2, max(1, final_time // 10)))  # Định dạng trục X
    plt.ylim(0, 110)  # Giới hạn từ 0% đến 110% để dễ nhìn
    plt.legend()
    plt.grid(True)
    
    # Lưu biểu đồ vào PDF
    plt.savefig(output_file, format="pdf", bbox_inches="tight")
    print(f"📄 Hình ảnh đã được lưu vào: {output_file}")
    
    
    plt.show()

# 📌 Gọi hàm để đọc dữ liệu từ file và vẽ biểu đồ
file_path = "job_data.txt"  # Thay đổi tên file nếu cần
df = read_dataframe_from_txt(file_path)
plot_machine_qubit_utilization(df)