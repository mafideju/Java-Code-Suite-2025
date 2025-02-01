CREATE TABLE contacts (
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE
);

INSERT INTO contacts (name, phone)
VALUES ('billybob', '8781213455');

-- This insert would result in an error:
INSERT INTO contacts (name, phone)
VALUES ('billybob', '87811213455');

CREATE TABLE companies (
       name VARCHAR(255) NOT NULL,
       address VARCHAR(255) NOT NULL,
       CONSTRAINT name_address UNIQUE (name, address)
);

CREATE TABLE houses (
        purchase_price INT NOT NULL,
        sale_price INT NOT NULL,
        CONSTRAINT sales_gt_purchase CHECK(sale_price >= purchase_price)
);

ALTER TABLE companies ADD COLUMN phone VARCHAR(15);
ALTER TABLE companies ADD COLUMN employee_count INT NOT NULL DEFAULT 1;
ALTER TABLE companies DROP COLUMN phone;
RENAME TABLE companies to suppliers;
ALTER TABLE suppliers RENAME TO companies;
ALTER TABLE companies RENAME COLUMN name TO company_name;
ALTER TABLE companies MODIFY company_name VARCHAR(100) DEFAULT 'unknown';
ALTER TABLE suppliers CHANGE business biz_name VARCHAR(50);
ALTER TABLE houses ADD CONSTRAINT positive_pprice CHECK (purchase_price >= 0);


ALTER TABLE houses DROP CONSTRAINT positive_pprice;

SELECT * FROM contacts;
SHOW TABLES;