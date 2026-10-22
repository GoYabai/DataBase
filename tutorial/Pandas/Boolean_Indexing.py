import pandas as pd


def boolean_filter(data: dict, column: str, threshold: float) -> dict:
    """
    Returns filtered_data as a dictionary of lists and count as an integer.
    """
    df = pd.DataFrame(data)
    filtered_df = df[df[column] > threshold]
    return {
        "filtered_data": filtered_df.to_dict("list"),
        "count": len(filtered_df)
    }