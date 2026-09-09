WITH clean AS (
  SELECT
    artist_name,
    count(*) AS count
  FROM artists a
  JOIN songs s
    USING (artist_id)
  JOIN global_song_rank g
    USING (song_id)
  WHERE rank <= 10
  GROUP BY artist_name
  ORDER BY count(*) DESC
), rank AS (
  SELECT
    *,
    DENSE_RANK() OVER(ORDER BY count DESC) AS rnk
  FROM clean
)

SELECT
  artist_name,
  rnk AS artist_rank
FROM rank
WHERE rnk <= 5