-- The job of this file is to reset all of our important database tables.
-- And add any data that is needed for the tests to run.
-- This is so that our tests, and application, are always operating from a fresh
-- database state, and that tests don't interfere with each other.

-- First, we must delete (drop) all our tables
DROP TABLE IF EXISTS recipes;
DROP SEQUENCE IF EXISTS recipes_id_seq;
DROP TABLE IF EXISTS albums;
DROP SEQUENCE IF EXISTS albums_id_seq;

-- Then, we recreate them
CREATE SEQUENCE IF NOT EXISTS recipes_id_seq;
CREATE TABLE recipes (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    genre VARCHAR(255)
);

CREATE SEQUENCE IF NOT EXISTS albums_id_seq;
CREATE TABLE albums (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    release_year INTEGER,
    recipe_id INTEGER
);

-- Finally, we add any records that are needed for the tests to run
INSERT INTO recipes (name, genre) VALUES ('Pixies', 'Rock');
INSERT INTO recipes (name, genre) VALUES ('ABBA', 'Pop');
INSERT INTO recipes (name, genre) VALUES ('Taylor Swift', 'Pop');
INSERT INTO recipes (name, genre) VALUES ('Nina Simone', 'Jazz');

INSERT INTO albums (title, release_year, recipe_id) VALUES ('Doolittle', 1989, 1);
INSERT INTO albums (title, release_year, recipe_id) VALUES ('Surfer Rosa', 1988, 1);
INSERT INTO albums (title, release_year, recipe_id) VALUES ('Waterloo', 1974, 2);
INSERT INTO albums (title, release_year, recipe_id) VALUES ('Super Trouper', 1980, 2);
INSERT INTO albums (title, release_year, recipe_id) VALUES ('Bossanova', 1990, 1);
INSERT INTO albums (title, release_year, recipe_id) VALUES ('Lover', 2019, 3);
INSERT INTO albums (title, release_year, recipe_id) VALUES ('Folklore', 2020, 3);
INSERT INTO albums (title, release_year, recipe_id) VALUES ('I Put a Spell on You', 1965, 4);
INSERT INTO albums (title, release_year, recipe_id) VALUES ('Baltimore', 1978, 4);
INSERT INTO albums (title, release_year, recipe_id) VALUES ('Here Comes the Sun', 1971, 4);
INSERT INTO albums (title, release_year, recipe_id) VALUES ('Fodder on My Wings', 1982, 4);
INSERT INTO albums (title, release_year, recipe_id) VALUES ('Ring Ring', 1973, 2);


