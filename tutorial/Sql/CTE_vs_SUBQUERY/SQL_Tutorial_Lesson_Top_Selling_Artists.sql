DROP TABLE IF EXISTS concerts;
CREATE TABLE concerts (
    artist_id INTEGER PRIMARY KEY,
    artist_name VARCHAR(100),
    genre VARCHAR(50),
    concert_revenue INTEGER,
    year_of_formation INTEGER,
    country VARCHAR(50),
    number_of_members INTEGER,
    album_released INTEGER,
    label VARCHAR(100)
);

INSERT INTO concerts (artist_id, artist_name, genre, concert_revenue, year_of_formation, country, number_of_members, album_released, label)
VALUES
    (102, 'The Rolling Stones', 'Rock', 500000, 1962, 'United Kingdom', 4, 30, 'Universal Music'),
    (103, 'Taylor Swift', 'Pop', 700000, 2004, 'United States', 1, 9, 'Republic Records'),
    (104, 'BTS', 'K-Pop', 800000, 2013, 'South Korea', 7, 7, 'Big Hit Music'),
    (105, 'Adele', 'Pop', 600000, 2006, 'United Kingdom', 1, 3, 'Columbia Records'),
    (106, 'Queen', 'Rock', 550000, 1970, 'United Kingdom', 4, 16, 'EMI'),
    (107, 'Beyonce', 'R&B', 750000, 1997, 'United States', 1, 8, 'Parkwood Entertainment'),
    (108, 'Ed Sheeran', 'Pop', 650000, 2005, 'United Kingdom', 1, 6, 'Atlantic Records'),
    (109, 'Blackpink', 'K-Pop', 450000, 2016, 'South Korea', 4, 5, 'YG Entertainment'),
    (110, 'Maroon 5', 'Pop', 550000, 1994, 'United States', 5, 7, 'Interscope Records'),
    (111, 'Coldplay', 'Rock', 600000, 1996, 'United Kingdom', 4, 9, 'Parlophone'),
    (112, 'Bruno Mars', 'Pop', 700000, 2010, 'United States', 1, 3, 'Atlantic Records'),
    (113, 'EXO', 'K-Pop', 480000, 2011, 'South Korea', 9, 6, 'SM Entertainment'),
    (114, 'Rihanna', 'R&B/Pop', 550000, 2005, 'Barbados', 1, 8, 'Def Jam Recordings'),
    (115, 'Imagine Dragons', 'Rock', 580000, 2008, 'United States', 4, 4, 'Interscope Records'),
    (116, 'Ariana Grande', 'Pop', 720000, 2008, 'United States', 1, 6, 'Republic Records'),
    (117, 'Red Velvet', 'K-Pop', 400000, 2014, 'South Korea', 5, 6, 'SM Entertainment'),
    (118, 'U2', 'Rock', 650000, 1976, 'Ireland', 4, 14, 'Island Records'),
    (119, 'Justin Bieber', 'Pop', 680000, 2008, 'Canada', 1, 8, 'Def Jam Recordings'),
    (120, 'Seventeen', 'K-Pop', 430000, 2015, 'South Korea', 13, 3, 'Pledis Entertainment'),
    (121, 'The Weeknd', 'R&B/Pop', 620000, 2010, 'Canada', 1, 5, 'Republic Records'),
    (122, 'The Beatles', 'Rock', 520000, 1960, 'United Kingdom', 4, 13, 'Apple Records'),
    (123, 'Billie Eilish', 'Pop', 580000, 2015, 'United States', 1, 2, 'Interscope Records'),
    (124, 'NCT 127', 'K-Pop', 410000, 2016, 'South Korea', 9, 4, 'SM Entertainment'),
    (125, 'Pink Floyd', 'Rock', 670000, 1965, 'United Kingdom', 4, 15, 'EMI'),
    (126, 'Demi Lovato', 'Pop', 520000, 2008, 'United States', 1, 7, 'Island Records'),
    (127, 'SHINee', 'K-Pop', 470000, 2008, 'South Korea', 4, 7, 'SM Entertainment'),
    (128, 'Guns N'' Roses', 'Rock', 590000, 1985, 'United States', 5, 6, 'Geffen Records'),
    (129, 'Selena Gomez', 'Pop', 530000, 2009, 'United States', 1, 5, 'Interscope Records'),
    (130, 'Stray Kids', 'K-Pop', 390000, 2017, 'South Korea', 8, 3, 'JYP Entertainment'),
    (131, 'Bon Jovi', 'Rock', 560000, 1983, 'United States', 5, 15, 'Island Records'),
    (132, 'Camila Cabello', 'Pop', 500000, 2012, 'United States', 1, 2, 'Epic Records'),
    (133, 'SuperM', 'K-Pop', 450000, 2019, 'South Korea', 7, 1, 'SM Entertainment'),
    (134, 'Linkin Park', 'Rock', 590000, 1996, 'United States', 6, 7, 'Warner Records'),
    (135, 'ITZY', 'K-Pop', 380000, 2019, 'South Korea', 5, 2, 'JYP Entertainment'),
    (136, 'Panic! At The Disco', 'Rock', 530000, 2004, 'United States', 1, 6, 'Fueled by Ramen'),
    (137, 'ABBA', 'Pop', 510000, 1972, 'Sweden', 4, 8, 'Polar Music'),
    (138, 'Eminem', 'Hip-Hop', 620000, 1996, 'United States', 1, 11, 'Aftermath Records'),
    (139, 'One Direction', 'Pop', 580000, 2010, 'United Kingdom', 5, 5, 'Syco Music'),
    (140, 'Black Sabbath', 'Rock', 540000, 1968, 'United Kingdom', 4, 19, 'Vertigo Records'),
    (141, 'Sia', 'Pop', 510000, 2000, 'Australia', 1, 9, 'RCA Records'),
    (142, 'Got7', 'K-Pop', 470000, 2014, 'South Korea', 7, 13, 'JYP Entertainment'),
    (143, 'Red Hot Chili Peppers', 'Rock', 660000, 1983, 'United States', 4, 11, 'Warner Records'),
    (144, 'Halsey', 'Pop', 520000, 2014, 'United States', 1, 4, 'Capitol Records'),
    (145, 'Super Junior', 'K-Pop', 490000, 2005, 'South Korea', 10, 10, 'SM Entertainment'),
    (146, 'Fleetwood Mac', 'Rock', 600000, 1967, 'United Kingdom', 5, 17, 'Reprise Records'),
    (147, 'Zayn', 'Pop', 480000, 2010, 'United Kingdom', 1, 3, 'RCA Records'),
    (148, 'The Who', 'Rock', 540000, 1964, 'United Kingdom', 4, 11, 'Polydor Records'),
    (149, 'Lana Del Rey', 'Pop', 530000, 2005, 'United States', 1, 8, 'Interscope Records'),
    (150, 'Monsta X', 'K-Pop', 470000, 2015, 'South Korea', 7, 9, 'Starship Entertainment'),
    (151, 'The Eagles', 'Rock', 610000, 1971, 'United States', 5, 7, 'Asylum Records');


-- Làm theo CTE
WITH cte AS (
  SELECT
    artist_name,
    genre,
    concert_revenue,
    number_of_members,
    (concert_revenue / number_of_members) AS revenue_per_member,
    RANK() OVER (
      PARTITION BY genre
      ORDER BY (concert_revenue / number_of_members) DESC
    ) AS ranked_concerts
  FROM concerts
)

SELECT
  artist_name,
  concert_revenue,
  genre,
  number_of_members,
  revenue_per_member
FROM cte
WHERE ranked_concerts = 1
ORDER BY revenue_per_member DESC;

-- Làm theo Sub-query
SELECT
  artist_name,
  concert_revenue,
  genre,
  number_of_members,
  revenue_per_member
FROM (
    SELECT
      artist_name,
      genre,
      concert_revenue,
      number_of_members,
      (concert_revenue / number_of_members) AS revenue_per_member,
      RANK() OVER (
        PARTITION BY genre
        ORDER BY (concert_revenue / number_of_members) DESC
      ) AS ranked_concerts
    FROM concerts
  ) AS sub_query
WHERE ranked_concerts = 1
ORDER BY revenue_per_member DESC;