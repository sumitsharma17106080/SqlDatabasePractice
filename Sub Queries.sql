CREATE TABLE customer( id INT PRIMARY KEY AUTO_INCREMENT,
cust_name  VARCHAR(40 ),
email VARCHAR(40),
city VARCHAR(20),
state VARCHAR (10),
signup_date  DATE);

CREATE TABLE product ( id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(50),
category VARCHAR(40),
price DECIMAL(10,2),
quantity INT);

CREATE TABLE orders( id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT,
order_date DATETIME,
total_amout DECIMAL(10,2),
FOREIGN KEY (customer_id) REFERENCES customer(id));

CREATE TABLE orders_items( id INT PRIMARY KEY AUTO_INCREMENT,
order_id INT NOT NULL,
product_id INT NOT NULL,
quntity INT NOT NULL,
item_price DECIMAL(10,2) NOT NULL,
FOREIGN KEY (order_id) REFERENCES orders(id),
FOREIGN KEY (product_id) REFERENCES product(id));



INSERT INTO customer (cust_name, email, city, state, signup_date)
VALUES
('Sumit Sharma', 'sumit@gmail.com', 'Delhi', 'Delhi', '2025-01-10'),
('Rahul Verma', 'rahul@gmail.com', 'Mumbai', 'Maharasa', '2025-02-15'),
('Amit Kumar', 'amit@gmail.com', 'Pune', 'Maharasra', '2025-03-20'),
('Priya Singh', 'priya@gmail.com', 'Bangalore', 'Karnataka', '2025-04-05'),
('Neha Gupta', 'neha@gmail.com', 'Delhi', 'Delhi', '2025-05-12'),
('Rohit Mehta', 'rohit@gmail.com', 'Hyderabad', 'Telangana', '2025-06-18'),
('Ankit Jain', 'ankit@gmail.com', 'Jaipur', 'Rajaj', '2025-07-25'),
('Pooja Sharma', 'pooja@gmail.com', 'Chandigarh', 'Chandirh', '2025-08-10'),
('Vikas Yadav', 'vikas@gmail.com', 'Noida', 'Uttadesh', '2025-09-15'),
('Sneha Kapoor', 'sneha@gmail.com', 'Gurgaon', 'Haryana', '2025-10-20');



INSERT INTO product (product_name, category, price, quantity)
VALUES
('Laptop', 'Electronics', 75000.00, 10),
('Smartphone', 'Electronics', 45000.00, 25),
('Headphones', 'Electronics', 3000.00, 50),
('Keyboard', 'Electronics', 1500.00, 40),
('Mouse', 'Electronics', 800.00, 60),
('T-Shirt', 'Fashion', 1200.00, 100),
('Jeans', 'Fashion', 2500.00, 70),
('Jacket', 'Fashion', 4500.00, 30),
('Running Shoes', 'Footwear', 3500.00, 45),
('Backpack', 'Accessories', 1800.00, 35);


INSERT INTO orders (customer_id, order_date, total_amout)
VALUES
(1, '2026-01-05 10:30:00', 76500.00),
(1, '2026-02-10 14:20:00', 4200.00),
(1, '2026-04-15 11:10:00', 45000.00),

(2, '2026-01-15 09:45:00', 45000.00),
(2, '2026-03-20 16:30:00', 5300.00),

(3, '2026-02-05 12:15:00', 75000.00),
(3, '2026-05-10 18:20:00', 7000.00),

(4, '2026-01-25 10:00:00', 5700.00),
(4, '2026-04-12 13:45:00', 4500.00),

(5, '2026-02-18 15:30:00', 2500.00),

(6, '2026-03-05 11:20:00', 48000.00),
(6, '2026-05-25 17:10:00', 5300.00),

(7, '2026-03-15 09:30:00', 6000.00),
(8, '2026-04-20 14:15:00', 3500.00),
(9, '2026-05-30 19:00:00', 75000.00);




INSERT INTO orders_items
    (order_id, product_id, quntity, item_price)
VALUES
-- Order 1
(1, 1, 1, 75000.00),
(1, 5, 1, 800.00),
(1, 4, 1, 1500.00),

-- Order 2
(2, 3, 1, 3000.00),
(2, 5, 1, 800.00),
(2, 6, 1, 1200.00),

-- Order 3
(3, 2, 1, 45000.00),

-- Order 4
(4, 2, 1, 45000.00),

-- Order 5
(5, 7, 1, 2500.00),
(5, 3, 1, 3000.00),

-- Order 6
(6, 1, 1, 75000.00),

-- Order 7
(7, 9, 2, 3500.00),

-- Order 8
(8, 6, 1, 1200.00),
(8, 7, 1, 2500.00),
(8, 5, 2, 800.00),

-- Order 9
(9, 8, 1, 4500.00),

-- Order 10
(10, 7, 1, 2500.00),

-- Order 11
(11, 2, 1, 45000.00),
(11, 3, 1, 3000.00),

-- Order 12
(12, 7, 1, 2500.00),
(12, 5, 1, 800.00),
(12, 6, 1, 1200.00),

-- Order 13
(13, 8, 1, 4500.00),
(13, 9, 1, 3500.00),

-- Order 14
(14, 9, 1, 3500.00),

-- Order 15
(15, 1, 1, 75000.00);




SELECT * FROM  customer;
SELECT * FROM   product;
SELECT * FROM   orders;
SELECT * FROM  orders_items;


SELECT c.id , c.cust_name FROM customer c JOIN orders o ON c.id = o.customer_id GROUP BY c.id;


SELECT * FROM customer WHERE id IN ( SELECT DISTINCT customer_id FROM orders);


SELECT * FROM customer WHERE id NOT IN ( SELECT DISTINCT customer_id FROM orders);



SELECT * FROM product WHERE price >= ( SELECT AVG(price) FROM product);


SELECT category , COUNT(*) FROM product GROUP BY category  HAVING COUNT(*) > 5;


SELECT * FROM orders WHERE customer_id IN ( SELECT id FROM customer WHERE city = "Delhi");

SELECT o.* FROM orders o JOIN (SELECT * FROM customer WHERE city = "delhi")  c ON o.customer_id = c.id 


SELECT * FROM  customer;
SELECT * FROM   product;
SELECT * FROM   orders;
SELECT * FROM  orders_items;

SELECT * FROM orders o JOIN  orders_items oi ON  o.id = oi.order_id  JOIN  product p ON p.id = oi.product_id WHERE p.category = 'Electronics';

-- Find customers who have purchased at least one product from the Electronics category.

SELECT * FROM customer WHERE id IN
 ( SELECT customer_id FROM orders o JOIN  orders_items oi ON  o.id = oi.order_id  JOIN  product p ON p.id = oi.product_id WHERE p.category = 'Electronics' );
 
 SELECT c.* FROM customer c JOIN  orders o ON c.id = o.customer_id JOIN  orders_items oi ON  o.id = oi.order_id 
   JOIN  product p ON p.id = oi.product_id WHERE p.category = 'Electronics'  GROUP BY c.id;
   
   
    -- customer who spent more than average
    
    
    SELECT c.id , c.cust_name ,AVG(o.total_amout) FROM customer c JOIN orders o ON  c.id = o.customer_id GROUP BY c.id 
    HAVING AVG(o.total_amout) > ( SELECT AVG(total_amout) FROM orders)
    

    
    SELECT *,     ( SELECT SUM(total_amout) FROM  orders WHERE customer_id  = c.id)  total FROM customer  c WHERE
    ( SELECT SUM(total_amout) FROM  orders WHERE customer_id  = c.id) >
    ( SELECT AVG(total_spent)  FROM  ( SELECT SUM(total_amout) AS total_spent FROM orders GROUP BY customer_id) AS cu);
    
 
 
 -- find customer who have order all product in eclectorince category   
    

SELECT c.*  FROM customer c JOIN orders o ON c.id = o.customer_id
JOIN orders_items oi ON o.id = oi.order_id 
JOIN ( SELECT * FROM product  p WHERE p.category = "Electronics") p ON p.id = oi.product_id

GROUP BY c.id
HAVING COUNT(DISTINCT p.id)  = (SELECT COUNT(*) FROM product WHERE category = "Electronics")


-- find customer who are not from delhi but have purchased the same product-quatity combination as delhi customer



 SELECT c.id ,c.cust_name, c.city FROM customer c 
 JOIN orders o  ON c.id= o.customer_id
 JOIN orders_items oi ON oi.order_id = o.id
 WHERE c.city != "Delhi" 
 AND (oi.product_id  , oi.quntity) IN (
  SELECT  oi.product_id, oi.quntity FROM customer c 
 JOIN orders o  ON c.id= o.customer_id
 JOIN orders_items oi ON oi.order_id = o.id
 WHERE c.city = "Delhi"
 );


-- find customer who have placed at least one order

SELECT * FROM customer  c WHERE   EXISTS  (SELECT *  FROM orders o  WHERE o.customer_id = c.id);

-- find customer who have not placed  order

SELECT * FROM customer  c WHERE  NOT EXISTS  (SELECT *  FROM orders o  WHERE o.customer_id = c.id);


-- Product that have never been orderd


SELECT * FROM product p WHERE NOT EXISTS ( SELECT * FROM orders_items oi WHERE oi.product_id = p.id)

SELECT * FROM customer c WHERE EXISTS  (SELECT 1 FROM orders o  JOIN orders_items oi ON oi.order_id = o.id JOIN product p
 ON p.id = oi.product_id WHERE p.category = "Electronics" AND  c.id = o.customer_id);

-- find the custome who have order electronics products



 
 
  SELECT * FROM  customer;
SELECT * FROM   product;
SELECT * FROM   orders;
SELECT * FROM  orders_items;
 




