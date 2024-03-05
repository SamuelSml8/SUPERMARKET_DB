CREATE DATABASE superMarket DEFAULT CHARACTER SET = 'utf8mb4';

USE superMarket

-------------------------------------------------------------*
--* CUSTOMERS
CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    country VARCHAR(45) NOT NULL,
    city VARCHAR(45) NOT NULL
)

INSERT INTO customers (name, last_name, country, city)VALUES
    ("Samuel", "Vera", "Colombia", "Medellín"),
    ("Sofía", "Marín", "Colombia", "Medellín"),
    ("Lionel", "Messi", "Argentina", "Rosario"),
    ("William", "Rex", "España", "Barcelona");

-------------------------------------------------------------*
--* ORDERS
CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    customers_id INT,
    orderDate DATETIME,
    Foreign Key (customers_id) REFERENCES customers(id)
)

INSERT INTO orders (customers_id, orderDate)VALUES
    (1, "2021-03-06"),
    (2, "2022-04-07"),
    (3, "2023-05-08"),
    (4, "2024-06-09")

-------------------------------------------------------------*
--* ORDERDETAILS
CREATE TABLE orderDetails(
    id INT PRIMARY KEY AUTO_INCREMENT,
    products_id INT,
    order_id INT,
    Foreign Key (products_id) REFERENCES products(id),
    Foreign Key (order_id) REFERENCES orders(id)
);

-- INSERTING REGISTERS
INSERT INTO orderDetails(products_id, order_id)VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4);

-------------------------------------------------------------*
--* PRODUCTS
CREATE TABLE products(
    id INT PRIMARY KEY AUTO_INCREMENT,
    category_id INT,
    name VARCHAR(45) NOT NULL,
    price FLOAT NOT NULL,
    Foreign Key (category_id) REFERENCES categories(id)
)

-- INSERTING REGISTERS
INSERT INTO products (category_id, name, price)VALUES
    (1,"Suavitel",18.975),
    (2,"Atún",7.535),
    (3,"Yogurt",4.525),
    (4,"Tomate",2.545);

SELECT * FROM products;

-------------------------------------------------------------*
--* CATEGORIES
CREATE TABLE categories(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL
)

-- INSERTING REGISTERS
INSERT INTO categories (name)VALUES
    ("aseo"),
    ("enlatado"),
    ("lacteos"),
    ("verduras");

SELECT * FROM categories;