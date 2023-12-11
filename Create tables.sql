CREATE DATABASE letterboxd;
USE letterboxd;
-- -----------------------------------------------------
-- Creación de las TABLAS.
-- -----------------------------------------------------

-- --------Tabla USERS ---------
CREATE TABLE users(
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(20),
last_name VARCHAR(20),
mail VARCHAR(50) NOT NULL,
country VARCHAR(30),
age INT
);

-- --------Tabla GENRE ---------

CREATE TABLE genres(
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
name_genre VARCHAR(20)
);

-- --------Tabla MOVIES ---------

CREATE TABLE movies(
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(50),
description VARCHAR(200),
genre INT UNSIGNED,
year INT,
duration FLOAT,
ratings FLOAT,
FOREIGN KEY (genre) REFERENCES genres(id)
);

-- --------Tabla ACTORS ---------

CREATE TABLE actors(
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(20),
last_name VARCHAR(20),
age INT,
nationality VARCHAR(30)
);

-- --------Tabla LIST_REVIEWS ---------

CREATE TABLE list_reviews(
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_user INT UNSIGNED NOT NULL,
FOREIGN KEY (id_user) REFERENCES users(id)
);

-- --------Tabla REVIEWS ---------

CREATE TABLE reviews(
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_movie INT UNSIGNED NOT NULL,
id_list_review INT UNSIGNED NOT NULL,
rating FLOAT NOT NULL,
content VARCHAR(200),
FOREIGN KEY (id_movie) REFERENCES movies(id),
FOREIGN KEY (id_list_review) REFERENCES list_reviews(id)
);

-- --------Tabla CASTING ---------

CREATE TABLE casting(
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
id_movie INT UNSIGNED NOT NULL,
FOREIGN KEY (id_movie) REFERENCES movies(id)
);

-- --------Tabla CAST_ACTORS ---------

CREATE TABLE cast_actors(
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_actor INT UNSIGNED NOT NULL,
id_casting INT UNSIGNED NOT NULL,
rol VARCHAR(20),
characters_name VARCHAR(20),
FOREIGN KEY (id_actor) REFERENCES actors(id),
FOREIGN KEY (id_casting) REFERENCES casting(id)
);
