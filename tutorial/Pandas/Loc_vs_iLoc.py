import pandas as pd


def iloc_selection(data: dict, row: int, col: int) -> list:
    """
    Returns [element, row_values, col_values], with both value sequences as lists.
    """
    data = pd.DataFrame(data)
    return [
        data.iloc[row, col],
        data.iloc[row].tolist(),
        data.iloc[:, col].tolist()
    ]
