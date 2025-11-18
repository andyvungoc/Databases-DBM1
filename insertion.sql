BEGIN;
TRUNCATE TABLE track, album, artist, genre RESTART IDENTITY CASCADE;
COMMIT;

\copy genre(genre_id, genre_name) FROM '/Users/andyvungoc/TDA553/Databases-DBM1/genre.csv' DELIMITER ',' CSV HEADER;
\copy artist(artist_id, artist_name, monthly_listeners) FROM '/Users/andyvungoc/TDA553/Databases-DBM1/artist.csv' DELIMITER ',' CSV HEADER;
\copy album(album_id, title, artist_id, release_year) FROM '/Users/andyvungoc/TDA553/Databases-DBM1/album.csv' DELIMITER ',' CSV HEADER;
\copy track(track_id, track_name, track_duration, release_year, popularity, album_id, artist_id, genre_id) FROM '/Users/andyvungoc/TDA553/Databases-DBM1/track.csv' DELIMITER ',' CSV HEADER;
