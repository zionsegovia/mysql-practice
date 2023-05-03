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