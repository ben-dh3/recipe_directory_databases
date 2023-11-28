DROP TABLE IF EXISTS recipes;

CREATE TABLE recipes (
    id SERIAL PRIMARY KEY,
    name text,
    cooking_time int,
    rating int
);

INSERT INTO recipes (name, cooking_time, rating) VALUES ('Spaghetti Bolognese', 20, 4);
INSERT INTO recipes (name, cooking_time, rating) VALUES ('Pizza', 10, 5);