USE letterboxd;
-- -----------------------------------------------------
-- Funciones
-- -----------------------------------------------------

-- Devuelve el promedio de rating de una pelicula

DELIMITER $$
CREATE FUNCTION `calculate_rating` (id_pelicula INT) RETURNS FLOAT 
READS SQL DATA
BEGIN
	DECLARE promedio FLOAT;
	SELECT AVG(rating) INTO promedio FROM reviews WHERE id_movie = id_pelicula;
	RETURN promedio;
END $$

-- Depende del puntaje que ingrese el usuario nos va a devolver un string diciendo si la pelicula es buena, mala o muy buena.

delimiter //
create function `opinion_usuario`(puntaje int)
   returns varchar(20)
   deterministic
begin
	case 
    when puntaje<3 then
      return 'La pelicula fue mala';
    when puntaje>=3 and puntaje<4 then
      return 'La pelicula estuvo buena';
    when puntaje>=4 then
      return 'La pelicula es muy buena';
	end case; 
 end //