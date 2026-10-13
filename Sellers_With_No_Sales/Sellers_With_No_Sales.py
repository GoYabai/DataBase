import pandas as pd

orders["sale_date"] = pd.to_datetime(orders["sale_date"])

seller_2020 = order[orders["sale_date"].dt.year == 2020]["seller_id"]

ans = seller[~seller["seller_id"].isin(seller_2020)]

ans = ans[["seller_name"]].sort_value(by="seller_name")