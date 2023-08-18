DROP TABLE IF EXISTS contacts;
CREATE TABLE contacts(
	contact_id INT PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_anme VARCHAR(50) NOT NULL,
	email VARCHAR(255) NOT NULL UNIQUE
); 
-- Confirm the creation of the table 
SELECT * FROM contacts;

DROP TABLE IF EXISTS category;
CREATE TABLE category(
	category_id VARCHAR PRIMARY KEY,
	category VARCHAR NOT NULL
); 
---- Confirm the creation of the table 
SELECT * FROM category;

DROP TABLE IF EXISTS subcategory;
CREATE TABLE subcategory(
	subcategory_id VARCHAR PRIMARY KEY,
	subcategory VARCHAR NOT NULL
);
-- Confirm the creation of the table 
SELECT * FROM subcategory;

DROP TABLE IF EXISTS campaign;
CREATE TABLE campaign(
	cf_id INT PRIMARY KEY,
	contact_id INT NOT NULL REFERENCES contacts(contact_id),
	company_name VARCHAR NOT NULL,
	description VARCHAR,
	goal REAL NOT NULL,
	pledged REAL NOT NULL,
	outcome VARCHAR NOT NULL,
	backers_count INT NOT NULL, 
	country VARCHAR NOT NULL,
	currency VARCHAR NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR NOT NULL REFERENCES category(category_id),
	subcategory_id varchar NOT NULL REFERENCES subcategory(subcategory_id)
);
-- Confirm the creation of the table 
SELECT * FROM campaign;

-- Ensure the correctness of 
-- each table's data by executing a SELECT statement for each table.
SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;