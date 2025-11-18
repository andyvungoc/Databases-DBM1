-- 1) How many tracks does each artist have?
SELECT a.artist_name AS artist,
       COUNT(t.track_id) AS track_count
FROM artist a
LEFT JOIN track t ON t.artist_id = a.artist_id
GROUP BY a.artist_name
ORDER BY track_count DESC, artist ASC;


-- 2) Which album has the highest number of tracks? (top 1)
SELECT al.title AS album,
       al.album_id,
       COUNT(t.track_id) AS num_tracks
FROM album al
LEFT JOIN track t ON t.album_id = al.album_id
GROUP BY al.album_id, al.title
ORDER BY num_tracks DESC, album ASC
LIMIT 1;

-- 3) Top 5 most popular tracks released after 2020
SELECT t.track_name AS track,
       a.artist_name AS artist,
       t.popularity,
       t.release_year
FROM track t
LEFT JOIN artist a ON a.artist_id = t.artist_id
WHERE t.release_year > 2020
ORDER BY t.popularity DESC NULLS LAST, t.release_year DESC, t.track_name
LIMIT 5;

-- 4)  Album with most tracks per genre


SELECT DISTINCT ON (g.genre_name)
  g.genre_name,
  al.title AS album,
  al.album_id,
  COUNT(t.track_id) AS num_tracks
FROM track t
JOIN album al ON al.album_id = t.album_id
JOIN genre g  ON g.genre_id  = t.genre_id
GROUP BY g.genre_name, al.album_id, al.title
ORDER BY g.genre_name,
         COUNT(t.track_id) DESC,
         al.title ASC;
