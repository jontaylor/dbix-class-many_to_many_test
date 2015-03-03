  CREATE TABLE artist (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
  );

  CREATE TABLE artist_track (
    id INTEGER PRIMARY KEY,
    artist_id INTEGER NOT NULL REFERENCES artist(id),
    track_id INTEGER NOT NULL REFERENCES track(id)
  );

  CREATE TABLE track (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL
  );
