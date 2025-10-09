CREATE TABLE artist (
  artist_id TEXT PRIMARY KEY,
  artist_name TEXT NOT NULL,
  monthly_listeners INT CHECK (monthly_listeners >= 0)
);

CREATE TABLE genre (
  genre_id TEXT PRIMARY KEY,
  genre_name TEXT NOT NULL UNIQUE
);

CREATE TABLE album (
  album_id TEXT PRIMARY KEY,
  title TEXT NOT NULL,
  artist_id TEXT NOT NULL REFERENCES artist(artist_id) ON DELETE RESTRICT,
  release_year INT CHECK (release_year BETWEEN 1900 AND 2025)
);

CREATE TABLE track (
  track_id TEXT PRIMARY KEY,
  track_name TEXT NOT NULL,
  track_duration INT CHECK (track_duration > 0),
  release_year INT CHECK (release_year BETWEEN 1900 AND 2025),
  popularity INT CHECK (popularity BETWEEN 0 AND 100),  -- ta bort?
  album_id TEXT REFERENCES album(album_id) ON DELETE SET NULL,
  artist_id TEXT REFERENCES artist(artist_id) ON DELETE SET NULL,
  genre_id TEXT REFERENCES genre(genre_id) ON DELETE SET NULL
);

