import pandas as pd

# Tạo dictionary chứa dữ liệu cho từng cột
data = {
    'customer_id': [1, 1, 2, 3, 3, 4],
    'year': [2019, 2020, 2020, 2019, 2020, 2020],
    'revenue': [100, 50, -30, 80, 25, 0]
}

# Tạo DataFrame từ dữ liệu
customers = pd.DataFrame(data)

mask = (customers["year"] == 2020) & (customers["revenue"] > 0)
customers = customers[mask]
print(customers["customer_id"].tolist())