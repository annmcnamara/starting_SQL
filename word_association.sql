--DROP TABLE word_association;

CREATE TABLE word_association(
	author  INT,
	word1	VARCHAR,
	word2	VARCHAR,
	source	VARCHAR(2)
)

SELECT * FROM word_association;

SELECT * FROM word_association WHERE word1 = 'stone';

SELECT * FROM word_association WHERE author>=0 and author<=10;
SELECT * FROM word_association WHERE word1 = 'pie' or word2 = 'pie';


SELECT * FROM word_association WHERE source = 'BC';

SELECT * FROM word_association WHERE source = 'BC' AND author>=333 AND author<=335;


