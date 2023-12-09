USE letterboxd;
-- -----------------------------------------------------
-- INSERCION DE DATOS
-- -----------------------------------------------------

INSERT INTO actors (name, last_name, age, nationality)
VALUES ('Brad', 'Pitt', 57, 'Estados Unidos'),
('Leonardo', 'DiCaprio', 48, 'Estados Unidos'),
('Scarlett', 'Johansson', 37, 'Estados Unidos'),
('Tom', 'Hanks', 66, 'Estados Unidos'),
('Meryl', 'Streep', 74, 'Estados Unidos'),
('Bruce', 'Willis', 67, 'Estados Unidos'),
('Charlize', 'Theron', 47, 'Sudáfrica'),
('Ralph', 'Fiennes', 59, 'Reino Unido'),
('Bill', 'Murray', 72, 'Estados Unidos'),
('Tim', 'Robbins', 64, 'Estados Unidos'),
('Liam', 'Neeson', 70, 'Irlanda'),
('Harrison', 'Ford', 80, 'Estados Unidos'),
('Keanu', 'Reeves', 59, 'Canadá'),
('Jack', 'Nicholson', 85, 'Estados Unidos'),
('Shelley', 'Duvall', 73, 'Estados Unidos'),
('Ryan', 'Gosling', 42, 'Canadá'),
('Carrie-Anne', 'Moss', 55, 'Canadá'),
('Ewan', 'McGregor', 51, 'Reino Unido'),
('Christian', 'Bale', 49, 'Reino Unido'),
('Heath', 'Ledger', 28, 'Australia'),
('Gary', 'Oldman', 65, 'Reino Unido'),
('Johnny', 'Depp', 59, 'Estados Unidos'),
('Naomi', 'Watts', 54, 'Reino Unido'),
('Vera', 'Farmiga', 49, 'Estados Unidos'),
('Patrick', 'Wilson', 50, 'Estados Unidos'),
('Robin', 'Wright', 57, 'Estados Unidos');

INSERT INTO genres
VALUES (null, 'Acción'),
(null, 'Comedia'),
(null, 'Drama'),
(null, 'Ciencia Ficción'),
(null, 'Terror');


INSERT INTO movies (title, description, genre, year, duration) 
VALUES ('Inception', 'Un ladrón se infiltra en los sueños de las personas para robar secretos corporativos.', 4, 2010, 148),
('Forrest Gump', 'Un hombre con discapacidad intelectual vive una vida llena de logros y acontecimientos históricos.', 3, 1994, 142),
('The Dark Knight', 'Batman se enfrenta al Joker, un villano despiadado que siembra el caos en Gotham City.', 1, 2008, 152),
('Christine', 'Un adolescente compra un automóvil que tiene una mente propia y una pasión asesina por su nuevo propietario.', 5, 1983, 110),
('Kung Fu Hustle', 'En una ciudad china, un matón aspirante se une a una pandilla para conquistar el territorio con sus habilidades de artes marciales.', 2, 2004, 99),
('Die Hard', 'Un policía intenta salvar a su esposa y otros rehenes atrapados por terroristas en un rascacielos.', 1, 1988, 132),
('Mad Max: Fury Road', 'En un mundo postapocalíptico, Max se une a Furiosa para escapar de un tirano y su ejército.', 1, 2015, 120),
('The Grand Budapest Hotel', 'Las aventuras de un conserje y su protegido en un famoso hotel europeo entre las guerras.', 2, 2014, 100),
('Super Troopers', 'Un grupo de patrulleros del estado de Vermont se esfuerza por mantener su trabajo.', 2, 2001, 100),
('The Shawshank Redemption', 'La historia de dos hombres que encuentran la redención en circunstancias desesperadas.', 3, 1994, 142),
('Schindler''s List', 'La historia de un empresario alemán que salva a judíos durante el Holocausto.', 3, 1993, 195),
('Blade Runner', 'Un blade runner persigue a replicantes en un futuro distópico de Los Ángeles.', 4, 1982, 117),
('The Matrix', 'Un hacker descubre la verdad sobre su realidad simulada y su papel en la guerra contra las máquinas.', 4, 1999, 136),
('The Shining', 'Un escritor en un aislado hotel descubre fuerzas sobrenaturales que lo llevan a la locura.', 5, 1980, 144),
('The Conjuring', 'Una pareja trabaja para ayudar a una familia aterrorizada por una presencia oscura en su granja.', 5, 2013, 112);

-- Users se cargaron con USER_DATA.csv

INSERT INTO casting (id_movie)
value (2),(2),(3),(3),(3);

INSERT INTO cast_actors (id_actor, id_casting, rol, characters_name)
VALUE (4, 1, "Actor principal", "Forrest Gump"),
(26, 2, "Actriz de reparto", "Jenny Curran"),
(19, 3, "Actor principal", "Batman"),
(20, 4, "Actor de reparto", "Joker"),
(21, 5, "Actor de reparto", "James Gordon");

INSERT INTO list_reviews (id_user)
value (1),(2),(2),(3);

INSERT INTO reviews (id_movie, id_list_review, rating, content)
value (2, 1, 3.5, "makes me think of my dad. i’ll always have a soft spot in my heart for this movie"),
(2, 2, 4.0, "me parecio una maravisha del universo nocierto?"),
(3, 3, 3.0, "all i have to say is ..... thank you heath ledger."),
(5, 4, 5.0, "Terror adolescente, obsesión, posesión, relaciones toxicas, buena música y la bella Christine asesinando gente, que mas necesitan? :)");
