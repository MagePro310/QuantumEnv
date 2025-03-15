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

def plot_total_qubit_utilization(df: pd.DataFrame, output_file="utilization_plot.pdf"):
    """Vẽ đồ thị đường mô tả tổng tỷ lệ sử dụng qubit của toàn bộ hệ thống theo thời gian (%) và lưu vào PDF."""
    if df.empty:
        raise ValueError("Error: DataFrame is empty.")

    # Xác định thời điểm cuối cùng mà các job hoàn thành
    final_time = int(df["end"].max())

    # Tính tổng capacity của toàn hệ thống (tổng capacity của tất cả các máy)
    total_capacity = df.groupby("machine")["capacity"].max().sum()

    # Tạo mảng theo dõi tổng số qubit sử dụng theo từng thời điểm
    total_timeline = np.zeros(final_time + 1)

    # Cập nhật số qubit sử dụng trong từng khoảng thời gian
    for _, row in df.iterrows():
        start, end, qubits = int(row["start"]), int(row["end"]), row["qubits"]
        total_timeline[start:end + 1] += qubits  # Cộng dồn số qubit vào từng thời điểm

    # Chuyển đổi thành phần trăm (%) dựa trên tổng capacity của hệ thống
    utilization_percentage = (total_timeline / total_capacity) * 100  # Đổi sang %

    # Vẽ biểu đồ đường
    plt.figure(figsize=(10, 5))
    plt.plot(range(final_time + 1), utilization_percentage, marker='o', linestyle='-', label="Total Utilization (%)")

    plt.xlabel("Time Step")
    plt.ylabel("Total Qubit Utilization (%)")
    plt.title("Total Machine Qubit Utilization Over Time (%)")
    plt.xticks(range(0, final_time + 1, max(1, final_time // 10)))  # Định dạng trục X
    plt.ylim(0, 110)  # Giới hạn từ 0% đến 110% để dễ nhìn
    plt.legend()
    plt.grid(True)

    # Lưu biểu đồ vào PDF
    plt.savefig(output_file, format="pdf", bbox_inches="tight")
    print(f"📄 Hình ảnh đã được lưu vào: {output_file}")

    # Hiển thị biểu đồ
    plt.show()

# 📌 Gọi hàm để đọc dữ liệu từ file và vẽ biểu đồ, lưu vào PDF
file_path = "job_data.txt"  # Thay đổi tên file nếu cần
df = read_dataframe_from_txt(file_path)
plot_total_qubit_utilization(df)
