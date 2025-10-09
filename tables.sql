CREATE TABLE IF NOT EXISTS genre (
  genre_id TEXT PRIMARY KEY,
  genre_name TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS artist (
  artist_id TEXT PRIMARY KEY,
  artist_name TEXT NOT NULL,
  monthly_listeners INT CHECK (monthly_listeners >= 0)
);

CREATE TABLE IF NOT EXISTS album (
  album_id TEXT PRIMARY KEY,
  title TEXT NOT NULL,
  artist_id TEXT REFERENCES artist(artist_id),
  release_year INT CHECK (release_year BETWEEN 1900 AND 2100)
);

CREATE TABLE IF NOT EXISTS track (
  track_id TEXT PRIMARY KEY,
  track_name TEXT NOT NULL,
  track_duration INT CHECK (track_duration > 0),
  release_year INT CHECK (release_year BETWEEN 1900 AND 2100),
  popularity INT CHECK (popularity BETWEEN 0 AND 100),
  album_id TEXT REFERENCES album(album_id),
  artist_id TEXT REFERENCES artist(artist_id),
  genre_id TEXT REFERENCES genre(genre_id)
);
