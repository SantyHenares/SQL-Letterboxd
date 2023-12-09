USE letterboxd;
-- -----------------------------------------------------
-- Stored Procedure
-- -----------------------------------------------------

-- Stored Procedure para insertar usuarios y peliculas. 
-- Al ingresar un usuario se crea una lista de reviews en la que luego el usuario va a guardar sus reviews
-- Al insertar una película se crea un casting para cada pelicula para luego agregar a los actores que participaron en ella

DELIMITER //

CREATE PROCEDURE insert_user (
    IN name VARCHAR(20),
	IN last_name VARCHAR(20),
	IN mail VARCHAR(50),
	IN country VARCHAR(30),
	IN age INT
)
BEGIN
    DECLARE new_id INT;
    INSERT INTO users (name, last_name, mail, country, age) VALUES (name, last_name, mail, country, age);
    SET new_id = LAST_INSERT_ID();
    INSERT INTO list_reviews (id_user) VALUES (new_id);
END;
//

DELIMITER ;

DELIMITER //

CREATE PROCEDURE insert_movie (
	IN title VARCHAR(50),
	IN description VARCHAR(200),
	IN genre INT,
	IN year INT,
	IN duration FLOAT,
	IN ratings FLOAT
)
BEGIN
    DECLARE new_id INT;
    INSERT INTO movies (title, description, genre, year, duration, ratings) VALUES (title, description, genre, year, duration, ratings);
    SET new_id = LAST_INSERT_ID();
    INSERT INTO casting (id_movie) VALUES (new_id);
END;
//

DELIMITER ;