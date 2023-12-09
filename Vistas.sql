USE letterboxd;
-- -----------------------------------------------------
-- Vistas
-- -----------------------------------------------------

-- Peliculas que se estrenaron despues del año 2010 inclusive

CREATE VIEW new_movies AS 
SELECT title, year FROM movies
WHERE year >= 2010;

-- Actores de Estados Unidos

CREATE VIEW americans_actors AS 
SELECT name, last_name FROM actors
WHERE nationality = 'Estados Unidos';

-- Actores que participaron en Forrest Gump (la id es 2)

CREATE VIEW actores_en_forest_gump AS
SELECT a.name, a.last_name, m.title
FROM actors a
JOIN cast_actors ca ON a.id = ca.id_actor
JOIN casting c ON ca.id_casting = c.id
JOIN movies m ON c.id_movie = m.id
WHERE m.id = 2;

-- Pelicula con mejor puntaje

CREATE VIEW best_movie AS 
SELECT title, ratings FROM movies
WHERE ratings = (SELECT MAX(ratings) FROM movies);

-- Lista a los usuarios y las peliculas que vieron

CREATE VIEW peliculas_vistas_por_usuario AS
SELECT u.name, u.last_name, m.title
FROM users u
JOIN list_reviews lr ON u.id = lr.id_user
JOIN reviews r ON lr.id = r.id_list_review
JOIN movies m ON r.id_movie = m.id;
