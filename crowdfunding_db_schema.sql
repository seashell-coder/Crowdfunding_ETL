--Subcategory table
CREATE TABLE subcategory (
    subcategory_id VARCHAR(30) PRIMARY KEY,
    subcategory VARCHAR(255)
);

--Category table
CREATE TABLE category (
    category_id VARCHAR(30) PRIMARY KEY,
    category VARCHAR(255)
);

--Contacts table
CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255)
);

--Campaign table
CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(255),
    description VARCHAR(255),
    goal DECIMAL(10, 2),
    pledged DECIMAL(10, 2),
    outcome VARCHAR(255),
    backers_count INT,
    country VARCHAR(255),
    currency VARCHAR(3),
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR(30),
    subcategory_id VARCHAR(30)
 
);
--We are adding our Foreign key after importing our csv files.
   ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

   ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

   ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");
