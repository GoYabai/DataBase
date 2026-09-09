import pandas as pd

def select_column(data, column):
    """
    Returns: dict with 'values' (list) and 'length' (int)
    """
    df = pd.DataFrame(data)
    out = df[column]
    l = len(out)
    return {
        "values": df[column].to_list(),
        "length": l
    }