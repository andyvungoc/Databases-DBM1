\copy genre(genre_id, genre_name)
FROM '/Users/andyvungoc/Databases-DBM1/genre.csv'
DELIMITER ',' CSV HEADER;

\copy artist(artist_id, artist_name, monthly_listeners)
FROM '/Users/andyvungoc/Databases-DBM1/artist.csv'
DELIMITER ',' CSV HEADER;

\copy album(album_id, title, artist_id, release_year)
FROM '/Users/andyvungoc/Databases-DBM1/album.csv'
DELIMITER ',' CSV HEADER;

\copy track(track_id, track_name, track_duration, release_year, popularity,
            album_id, artist_id, genre_id)
FROM '/Users/andyvungoc/Databases-DBM1/track.csv'
DELIMITER ',' CSV HEADER;

INSERT INTO genre (genre_id, genre_name) VALUES
('g1','Pop'),
('g2','Rock'),
('g3','Hip Hop'),
('g4','Electronic'),
('g5','Indie'),
('g6','R&B');

INSERT INTO artist (artist_id, artist_name, monthly_listeners) VALUES
('a1','Taylor Swift',92000000),
('a2','The Weeknd',88000000),
('a3','Imagine Dragons',52000000),
('a4','Drake',72000000),
('a5','Daft Punk',30000000),
('a6','Billie Eilish',70000000),
('a7','Ed Sheeran',76000000),
('a8','Adele',64000000),
('a9','Coldplay',58000000),
('a10','Post Malone',68000000),
('a11','Kendrick Lamar',62000000),
('a12','Lana Del Rey',55000000),
('a13','Harry Styles',60000000),
('a14','Doja Cat',65000000),
('a15','Arctic Monkeys',45000000),
('a16','Bruno Mars',61000000),
('a17','Halsey',40000000),
('a18','Sia',39000000),
('a19','Dua Lipa',69000000),
('a20','Beyoncé',75000000);

INSERT INTO album (album_id, title, artist_id, release_year) VALUES
('al1','Midnights','a1',2022),
('al2','Starboy','a2',2016),
('al3','Mercury - Act 1','a3',2021),
('al4','Scorpion','a4',2018),
('al5','Discovery','a5',2001),
('al6','After Hours','a2',2020),
('al7','Happier Than Ever','a6',2021),
('al8','Divide','a7',2017),
('al9','30','a8',2021),
('al10','Music of the Spheres','a9',2021),
('al11','Hollywood’s Bleeding','a10',2019),
('al12','DAMN.','a11',2017),
('al13','Born to Die','a12',2012),
('al14','Fine Line','a13',2019),
('al15','Planet Her','a14',2021),
('al16','AM','a15',2013),
('al17','24K Magic','a16',2016),
('al18','If I Can’t Have Love, I Want Power','a17',2021),
('al19','This Is Acting','a18',2016),
('al20','Future Nostalgia','a19',2020),
('al21','Renaissance','a20',2022),
('al22','Evermore','a1',2020),
('al23','Evolve','a3',2017),
('al24','Unorthodox Jukebox','a16',2012),
('al25','Viva la Vida','a9',2008),
('al26','Beerbongs & Bentleys','a10',2018),
('al27','25','a8',2015),
('al28','Anti','a20',2016),
('al29','Random Access Memories','a5',2013),
('al30','Melodrama','a12',2017);

