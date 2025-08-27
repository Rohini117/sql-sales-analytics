CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(12,2)
);

INSERT INTO products VALUES
(1,'Laptop','Electronics',55000),
(2,'Smartphone','Electronics',30000),
(3,'Headphones','Accessories',2000),
(4,'Office Chair','Furniture',7000),
(5,'Desk','Furniture',12000),
(6,'Monitor','Electronics',15000),
(7,'Keyboard','Accessories',1500),
(8,'Tablet','Electronics',25000);
