-- Delete the table "people"
DROP TABLE people;

131,630

-- Query all fields from the table
SELECT *
FROM people;

-- Query the data to return all the rows containing the name "Dave"
SELECT id, name, pet_name, pet_age
FROM people
WHERE name = 'Dave';

-- Update a single row to change the `pet_name` and `pet_age` column data
UPDATE people
SET has_pet = true, pet_name = 'Rocket', pet_age = 8
WHERE id = 6;

SELECT *
FROM people;

-- Delete the duplicate entry using a unique id
DELETE FROM people
WHERE id = 3;

SELECT *
FROM people;

UPDATE people
SET has_pet = true, pet_name = 'Rocket', pet_age=8
WHERE id = 6

DELETE from people where id = 6;

INSERT into PEOPLE (name, has_pet, pet_type, pet_name, pet_age)
VALUES ('Jacob', true, 'dog', 'Misty', 10);