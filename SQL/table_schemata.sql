CREATE TABLE contacts (
	contact_id INT,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR(50) NOT NULL,
	PRIMARY KEY (contact_id)
);

CREATE TABLE category (
	category_id VARCHAR(5) NOT NULL,
	category VARCHAR(30) NOT NULL,
	PRIMARY KEY (category_id)
);

CREATE TABLE subcategory(
	subcategory_id VARCHAR(8) NOT NULL,
	subcategory VARCHAR(30) NOT NULL,
	PRIMARY KEY (subcategory_id)
);

CREATE TABLE campaign(
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR(50) NOT NULL,
	description VARCHAR(80) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(50) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(5) NOT NULL,
	currency VARCHAR(5) NOT NULL,
	launched VARCHAR(15) NOT NULL,
	end_date VARCHAR(15) NOT NULL,
	category_id VARCHAR(5) NOT NULL,
	subcategory_id VARCHAR(8) NOT NULL,
	PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
	)
	
DROP TABLE campaign
