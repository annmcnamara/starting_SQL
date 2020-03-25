CREATE TABLE CITIES(
	city varchar(30) NOT NULL,
	state varchar(30) NOT NULL,
	population int NOT NULL   
);

INSERT INTO CITIES 
	(city, state, population)
VALUES
    ('Alameda', 'California', 79177), 
	('Mesa', 'Arizona', 496401), 
	('Boerne', 'Texas', 16056),
	('Anaheim', 'California', 79177 ),
	('Tuscon', 'Arizona', 535677),
	('Garland', 'Texas', 238002)
;

SELECT city FROM CITIES;

SELECT city FROM CITIES WHERE state = 'Arizona';
SELECT city FROM CITIES WHERE population< 100000;
SELECT city FROM CITIES WHERE population < 100000 AND state = 'California';

