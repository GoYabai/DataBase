-- Write your query below
SELECT
    u.name,
    SUM(CASE
            WHEN r.distance is not NULL THEN r.distance ELSE 0
        END) AS travelled_distance
FROM rides r
RIGHT JOIN users u
    ON r.user_id = u.id
GROUP BY u.name
ORDER BY travelled_distance DESC