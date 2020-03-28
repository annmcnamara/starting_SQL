create table people(
	name varchar(30) NOT NULL, 
	has_pet boolean default false, 
	pet_type varchar(10) NOT NULL, 
	pet_name varchar(30), 
	pet_age int
);

SELECT * FROM PEOPLE;

INSERT INTO PEOPLE
	(NAME, HAS_PET, PET_TYPE, PET_NAME, PET_AGE)
		VALUES ('Ann',    true, 'Dog','Bailey', 10), 
			   ('James',  true, 'rock', 'Rockington', 100),
			   ('David',  true, 'cat', 'Franklin', 2),
			   ('Marion', true, 'Dog', 'Queso', 100)
;

SELECT PET_NAME, PET_TYPE 
FROM PEOPLE
WHERE PET_TYPE = 'Dog'
AND PET_AGE < 10;
