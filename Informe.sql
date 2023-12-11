USE letterboxd;
-- -----------------------------------------------------
-- Consulta para realizar el informe.
-- -----------------------------------------------------

SELECT m.title, calculate_rating(m.id) AS ratings
FROM movies m WHERE year = 2023
ORDER BY ratings DESC
LIMIT 3;