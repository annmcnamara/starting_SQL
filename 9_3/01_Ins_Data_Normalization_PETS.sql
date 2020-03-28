CREATE TABLE owners(
	id INT PRIMARY KEY NOT NULL, 
	owner_name VARCHAR(255)
);

INSERT INTO owners(ID, owner_name) VALUES
  (1, 'Sally'),
(2, 'Charles'),
(3, 'Angela'),
(4, 'Kelly'),
(5, 'Sam'),
(6, 'Cassie');

SELECT * 
FROM owners;

CREATE TABLE pet_names(
	id INT NOT NULL PRIMARY KEY,
	owner_id INT NOT NULL, 
	pet_name VARCHAR(255),
	type VARCHAR(255)
);

INSERT INTO pet_names(id, owner_id, pet_name, type) VALUES
(10, 1, 'Zeus', 'Dog'),
(11, 1, 'Fido', 'Dog'),
(12, 2, 'Kevin', 'Dog'),
(13, 3, 'Sprinkles', 'Cat'),
(14, 4, 'Jumper', 'Cat'),
(15, 5, 'Hoppy', 'Rabbit'),
(16, 6, 'Rex', 'Dog'),
(17, 6, 'Carrot', 'Rabbit');

SELECT *
FROM pet_names;

SELECT owner_name, pet_name
FROM owners
INNER JOIN pet_names
ON owners.id=pet_names.owner_id;

