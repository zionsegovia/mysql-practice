# the UNIQUE aspect makes it so that
# there can not be duplicates added to the table

# create a table implementing the UNIQUE aspect

CREATE TABLE products(
                         product_id INT,
                         product_name VARCHAR(25) UNIQUE ,
                         price DECIMAL(4,2)
);

# or it can be done like this if the table is already made
ALTER TABLE products
ADD CONSTRAINT
UNIQUE(product_name);

# add content to the products table
USE mydb;

INSERT INTO products
VALUES (100, "hamburger", 3.99),
       (101, "fries", 1.89),
       (102, "soda", 1.00),
       (103,"ice cream", 1.49);

SELECT * FROM products

# an example of the unique aspect in this table would be
# an error if there was another item added with the name fries
# as we applied UNIQUE to the product name and there is already
# a fries in the table


# **NOT NULL CONSTRAINT**
CREATE TABLE products(
                         product_id INT,
                         product_name VARCHAR(25) UNIQUE ,
                         price DECIMAL(4,2) NOT NULL
);

# to add the not null constraint to a table that already exists
ALTER TABLE products
MODIFY price DECIMAL(4,2) NOT NULL;

# **CHECK CONSTRAINT**
# the check constraint will only allow you to add new data to the table
# if the data meets whatever the criteria is for the CHECK

# create table that is applying the CHECK restraint to hourly_pay
USE mydb;

CREATE TABLE employees (
                           employee_id INT,
                           first_name VARCHAR(50),
                           last_name VARCHAR(50),
                           hourly_pay DECIMAL(5,2),
                           hire_date DATE,
                           CONSTRAINT chk_hourly_pay CHECK ( hourly_pay >= 10.00 )
);

# add CHECK constraint to table that already exists

ALTER TABLE employees
    ADD CONSTRAINT chk_hourly_pay CHECK(hourly_pay >= 10.00);

# to delete a check
ALTER TABLE employees
DROP CHECK chk_hourly_pay;

# **DEFAULT CONSTRAINT1**
# declare parts of the data to have a value named default

# create table implementing the DEFAULT aspect

USE mydb;

CREATE TABLE products(
                         product_id INT,
                         product_name VARCHAR(25),
                         price DECIMAL(4,2) DEFAULT 0
);

# add the DEFAULT constraint to a table that already exists


ALTER TABLE products
    ALTER price SET DEFAULT 0

# adding data to the table that is using the set DEFAULT value
# the price is not needed when inserting these as it is using the DEFAULT value of 0
INSERT INTO products (product_id, product_name)
VALUES (104, "napkin"),
       (105,"straw"),
       (106,"fork"),
       (107,"spoon");

SELECT * FROM products;
