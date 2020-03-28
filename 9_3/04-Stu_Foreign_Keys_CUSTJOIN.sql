
-- * Create a `customer` table with a 
--customer first name and customer last name.
CREATE TABLE customer (
  id SERIAL PRIMARY KEY,
  customer_first_name VARCHAR(30) NOT NULL,
  customer_last_name VARCHAR(30) NOT NULL
);

INSERT INTO customer (customer_first_name, customer_last_name, id)
VALUES
  ('James', 'Hill', 1),
  ('Ann', 'McNamara', 2),
  ('Ben','Jones', 3),
  ('JJ', 'Watt', 4);

SELECT * 
FROM customer;

-- * Create a `customer_email` table 
--with a foreign key that references a 
--field in the original `customer` table.

CREATE TABLE customer_email (
  id SERIAL PRIMARY KEY,
  customer_email VARCHAR(30) NOT NULL,
  customer_id INTEGER NOT NULL,
  FOREIGN KEY (id) REFERENCES customer(id)
);
INSERT INTO customer_email (id, customer_email, customer_id)
VALUES
  (1, 'JamesHill@gmail.com', 1),
  (2, 'AnnMcNamara@gmail.com', 2),
  (3,'BenJones@gmail.com', 3),
  (4, 'JJWatt@gmail.com', 4)
-- * Populate the `customer_email` table with emails.
SELECT * FROM customer_email;
-- * Create a `customer_phone` table with a foreign key 
--that references a field in the original `customer` table.

CREATE TABLE customer_phone (
  id SERIAL PRIMARY KEY,
  customer_phone VARCHAR(30) NOT NULL,  
  customer_id INTEGER NOT NULL,
  FOREIGN KEY (id) REFERENCES customer(id)
);
INSERT INTO customer_phone (id, customer_phone, customer_id)
VALUES
  (1, '07887545252', 1),
  (2, '97985258524', 2),
  (3,'151245625456', 3),
  (4, '21513121551', 4);

SELECT *  
FROM customer c 
JOIN customer_email e ON 
e.customer_id=c.id
JOIN customer_phone ph ON 
ph.customer_id=c.id;

