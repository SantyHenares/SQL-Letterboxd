USE letterboxd;
-- -----------------------------------------------------
-- Triggers
-- -----------------------------------------------------

-- Trigger que permite actualizar el puntaje de una pelicula cada vez que un usuario realiza una puntuación.
DELIMITER //
CREATE TRIGGER `actualizar_rating_movie`
AFTER INSERT ON `reviews`
FOR EACH ROW
BEGIN
    DECLARE avg_rating DECIMAL(10, 2);
    SET avg_rating = (
        SELECT AVG(rating) 
        FROM reviews 
        WHERE id_movie = NEW.id_movie
    );
    
    UPDATE movies
    SET ratings = avg_rating
    WHERE id = NEW.id_movie;
END;//
DELIMITER ;

-- Este trigger corrobora que el género agregado no este en la tabla.
DELIMITER //
CREATE TRIGGER `unicidad_genre`
BEFORE INSERT ON `genres`
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM genre WHERE name_genre = NEW.name_genre) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'El género ya existe en la tabla. No se puede realizar la inserción.';
    END IF;
END;//
DELIMITER ;