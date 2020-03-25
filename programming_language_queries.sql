CREATE TABLE programming_languages(
	id SERIAL PRIMARY KEY, 
	language varchar(20) NOT NULL, 
	rating integer NOT NULL
);

INSERT INTO programming_languages(language, rating) VALUES
	('HTML', 95), 
	('JS', 899),
	('JQuery', 98),
	('MySQL', 70), 
	('MySQL', 70)
;
SELECT * FROM programming_languages;

SELECT * FROM programming_languages WHERE language = 'MySQL';
DELETE FROM programming_languages WHERE id=5;

INSERT INTO programming_languages(language, rating) VALUES
	('C++', 92), 
	('Python', 89),
	('Java', 58)
;

UPDATE programming_languages 
SET language='JavaScript' WHERE language='JS';

UPDATE programming_languages 
SET rating=90 WHERE language='HTML';

SELECT * FROM programming_languages WHERE language = 'MySQL';

ALTER TABLE programming_languages
DROP COLUMN mastered; 

ALTER TABLE programming_languages
ADD COLUMN mastered boolean default true;