import pandas as pd

def inspect_dataframe(data):
    """
    Returns: dict with 'rows', 'cols' (ints), 'columns' (list),
    'dtypes' (dict), 'total_values' (int)
    """
    df = pd.DataFrame(data)
    row = df.shape[0]
    col = df.shape[1]

    return {
        "rows" : row,
        "cols" : col,
        "columns" : df.columns.to_list(),
        "dtypes" : df.dtypes.astype(str).to_dict(),
        "total_values" : df.size
    }