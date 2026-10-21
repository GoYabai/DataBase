import pandas as pd

users_data = {
    'id': [1, 2, 3, 4],
    'name': ['Maria', 'Carlos', 'Priya', 'James']
}
users = pd.DataFrame(users_data)


rides_data = {
    'id': [1, 2, 3, 4, 5],
    'user_id': [1, 2, 3, 1, 2],
    'distance': [150, 280, 195, 130, 95]
}
rides = pd.DataFrame(rides_data)


m = pd.merge(users, rides, how="left", left_on="id", right_on="user_id")
m["distance"] = m["distance"].fillna(0)
ans = m.groupby("name")["distance"].sum().reset_index(name="travelled_distance").sort_values(by="travelled_distance", ascending=False)

print(ans)