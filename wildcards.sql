-- any word1 that starts with a
SELECT *
FROM word_association
WHERE word1 LIKE 'a%'
ORDER BY word1;

-- any word1 that contains ab
SELECT *
FROM word_association
WHERE word1 LIKE '%ab%'
ORDER BY word1;

-- any word1 that ends in ab
SELECT *
FROM word_association
WHERE word1 LIKE '%ab'
ORDER BY word1;

-- any word1 that replaces one character in front of in ab
SELECT *
FROM word_association
WHERE word1 LIKE '_ab'
ORDER BY word1;

-- any word1 that replaces one character in front of in ab
SELECT *
FROM word_association
WHERE word1 LIKE '_ab_'
ORDER BY word1;
