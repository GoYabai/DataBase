import pandas as pd


def combine_two_tables(person: pd.DataFrame, address: pd.DataFrame) -> pd.DataFrame:
    m = pd.merge(person, address, on="personId", how="left")
    col = ["firstName", "lastName", "city", "state"]
    return m[col]    