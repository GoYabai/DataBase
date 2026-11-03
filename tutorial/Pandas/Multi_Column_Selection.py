import pandas as pd


def select_columns(data: dict, columns: list) -> dict:
    """
    Returns a dictionary of value lists in the requested column order.
    """
    df = pd.DataFrame(data)
    return df[columns].to_dict(orient='list')
