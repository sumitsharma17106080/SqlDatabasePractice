CREATE SCHEMA employe_mangement;

CREATE TABLE employees (id INT PRIMARY KEY , username  VARCHAR(50), city VARCHAR(50) , department VARCHAR(50), salary INT(100));

INSERT INTO employees (id, username, city, department, salary) VALUES
(1, 'Sumit', 'Saharanpur', 'IT', 125000),
(2, 'Rahul', 'Delhi', 'IT', 145000),
(3, 'Amit', 'Noida', 'Finance', 135000),
(4, 'Neha', 'Gurgaon', 'HR', 95000),
(5, 'Priya', 'Bangalore', 'IT', 175000),
(6, 'Rohit', 'Pune', 'Sales', 110000),
(7, 'Ankit', 'Delhi', 'Finance', 120000),
(8, 'Pooja', 'Noida', 'IT', 105000),
(9, 'Vikas', 'Gurgaon', 'Sales', 115000),
(10, 'Sneha', 'Delhi', 'HR', 155000),

(11, 'Karan', 'Bangalore', 'IT', 190000),
(12, 'Riya', 'Mumbai', 'Finance', 160000),
(13, 'Arjun', 'Pune', 'Sales', 130000),
(14, 'Meera', 'Delhi', 'HR', 125000),
(15, 'Nikhil', 'Noida', 'IT', 145000),
(16, 'Kunal', 'Gurgaon', 'Finance', 150000),
(17, 'Kavita', 'Bangalore', 'HR', 135000),
(18, 'Manish', 'Mumbai', 'Sales', 140000),
(19, 'Deepak', 'Delhi', 'IT', 165000),
(20, 'Swati', 'Noida', 'Finance', 115000),

(21, 'Varun', 'Pune', 'IT', 155000),
(22, 'Shreya', 'Gurgaon', 'HR', 110000),
(23, 'Mohit', 'Delhi', 'Sales', 125000),
(24, 'Nisha', 'Bangalore', 'Finance', 180000),
(25, 'Rakesh', 'Mumbai', 'IT', 200000),
(26, 'Divya', 'Noida', 'HR', 145000),
(27, 'Saurabh', 'Delhi', 'Finance', 130000),
(28, 'Tanya', 'Pune', 'Sales', 120000),
(29, 'Abhishek', 'Gurgaon', 'IT', 175000),
(30, 'Komal', 'Bangalore', 'HR', 105000),

(31, 'Harsh', 'Delhi', 'IT', 210000),
(32, 'Anjali', 'Noida', 'Finance', 155000),
(33, 'Gaurav', 'Mumbai', 'Sales', 150000),
(34, 'Pankaj', 'Pune', 'HR', 115000),
(35, 'Isha', 'Gurgaon', 'IT', 135000),
(36, 'Varsha', 'Delhi', 'Finance', 170000),
(37, 'Ajay', 'Bangalore', 'Sales', 160000),
(38, 'Shivani', 'Noida', 'HR', 130000),
(39, 'Rajat', 'Mumbai', 'IT', 185000),
(40, 'Muskan', 'Pune', 'Finance', 125000),

(41, 'Yash', 'Delhi', 'Sales', 135000),
(42, 'Aarti', 'Gurgaon', 'HR', 150000),
(43, 'Naveen', 'Bangalore', 'IT', 220000),
(44, 'Simran', 'Noida', 'Finance', 145000),
(45, 'Tarun', 'Mumbai', 'Sales', 175000),
(46, 'Pallavi', 'Delhi', 'HR', 140000),
(47, 'Ravi', 'Pune', 'IT', 155000),
(48, 'Monika', 'Gurgaon', 'Finance', 165000),
(49, 'Vivek', 'Bangalore', 'Sales', 145000),
(50, 'Sakshi', 'Noida', 'HR', 120000),

(51, 'Akash', 'Delhi', 'IT', 195000),
(52, 'Preeti', 'Mumbai', 'Finance', 190000),
(53, 'Sameer', 'Pune', 'Sales', 155000),
(54, 'Ritu', 'Gurgaon', 'HR', 160000),
(55, 'Nitin', 'Bangalore', 'IT', 145000),
(56, 'Payal', 'Noida', 'Finance', 135000),
(57, 'Aman', 'Delhi', 'Sales', 125000),
(58, 'Jyoti', 'Pune', 'HR', 130000),
(59, 'Dev', 'Mumbai', 'IT', 230000),
(60, 'Sonia', 'Gurgaon', 'Finance', 150000);

-- 1. Find all employees from Delhi
SELECT * FROM employees WHERE city = "Delhi";

-- 2. Find employees with salary > 150000
SELECT * FROM employees WHERE salary > 150000;

-- 3. Find employees from IT department

SELECT * FROM employees  WHERE  department = "IT";

-- 4. Find employees whose name starts with 'A'

SELECT * FROM employees WHERE username LIKE 'A%';


-- 5. Find employees whose salary is between 150000 and 200000

SELECT * FROM employees WHERE salary > 150000 AND salary < 200000;

-- 6. Count employees in each department

SELECT department, COUNT(*) FROM employees GROUP BY department;

-- 7. Find average salary of each department

SELECT department , AVG(salary) FROM employees GROUP BY department;

-- 8. Find maximum salary in each department

SELECT department , MAX(salary) FROM employees GROUP BY department;

-- 9. Find minimum salary in each department

SELECT department , MIN(salary) FROM employees GROUP BY department;

-- 10. Find total salary paid by each department

SELECT department , SUM(salary) FROM employees GROUP BY department;

-- 11. Find departments having more than 10 employees

SELECT department  FROM employees  GROUP BY department HAVING COUNT(*) > 10;

-- 12. Find the highest-paid employee

SELECT username  FROM employees  WHERE salary = ( SELECT  MAX(salary) FROM employees);

-- 13. Find the second-highest salary

SELECT  DISTINCT  salary  FROM employees ORDER BY salary DESC LIMIT 1 OFFSET 1;

SELECT username , salary FROM employees WHERE salary =  (SELECT  DISTINCT salary FROM employees ORDER BY salary DESC LIMIT 1 OFFSET 1;

SELECT username , salary FROM employees WHERE salary = ( SELECT MAX(salary)  FROM employees  WHERE salary < ( SELECT MAX(salary) FROM employees ));

-- 14. Find the second-highest salary in each department

SELECT department  , salary  FROM employees e WHERE salary = 
( SELECT MAX(salary) FROM employees e2 WHERE  e.department = e2.department AND  salary < ( SELECT MAX(salary)  FROM employees e3 WHERE e3.department = e.department));

-- 15. Find the top 3 highest-paid employees

SELECT username , salary  FROM employees WHERE salary IN (SELECT t.salary FROM  ( SELECT salary FROM employees ORDER BY salary DESC LIMIT 3) t);

-- 16. Find the top 3 highest-paid employees from each department
SELECT department , username , salary  FROM employees  GROUP BY department  HAVING salary IN (  SELECT t.salary  FROM ( SELECT salary  FROM employees ORDER BY salary DESC LIMIT 3 ) t);

-- 17. Find the department with the highest average salary

-- 18. Find employees earning more than their department average

-- 19. Find cities having more than 5 employees

-- 20. Find the highest-paid employee in each city




-- ***************************** Query1
SELECT * FROM numbers;

SELECT ABS(numd)  FROM numbers;

SELECT ABS(-2);

SELECT SQRT(numd)  FROM numbers;

SELECT CEIL ( numd) FROM numbers;

SELECT FLOOR(numd) FROM numbers;

SELECT numd, CEIL(numd) , FLOOR(numd) , ROUND(numd,1) , TRUNCATE(numd,1), POW(numd,2), MOD(num ,3) , EXP(num) , LOG(10, num) ,LOG10(numd)  FROM numbers;


SELECT BIT_AND(num)  FROM numbers;

SELECT BIT_OR(num) FROM numbers;






 --    *******************************query2
 SELECT NOW();


SELECT CURDATE();

SELECT DAY(NOW());

SELECT MONTH(NOW());


SELECT DATEDIFF('2023-12-12' ,'2025-12-11');


SELECT * FROM students WHERE joining_date > DATE_SUB(NOW(), INTERVAL 1 YEAR);


SELECT COUNT(*) FROM numbers;


SELECT SUM(num) FROM numbers;

SELECT AVG(num) FROM numbers;

SELECT MIN(num) FROM numbers;

SELECT MAX(num) FROM numbers;

 
 
 --  ***************  query3
 SELECT department, city ,
 COUNT(*) emp_count,
 MIN(salary)  minmum_salary,
 MAX(salary) maximum_salary,
 AVG(salary) average_salary,
 SUM(salary) total_salary

FROM  employees GROUP BY department, city  HAVING COUNT(*) >=2 ;


SELECT department , joining_year , 
COUNT(*) COUNT,
AVG(salary) average,
SUM(salary) total,
MIN(salary) minimum,
MAX(salary) maximum
FROM employees GROUP BY department, joining_year;


SELECT department , AVG(salary) average_salary FROM  employees GROUP BY department  ORDER BY average_salary ;ss


SELECT * FROM employees;

SELECT   COUNT(*),
CASE  
	WHEN salary <100000 THEN 'LOW'
	WHEN salary <150000 THEN 'Medium'
	ELSE 'High'

END category 
FROM employees GROUP BY category;


SELECT department , COUNT(*) cou FROM employees GROUP BY department  ORDER BY cou DESC LIMIT 1;


SELECT department , COUNT(*) cou  FROM employees GROUP BY department HAVING cou >=15;



-- query 4
CREATE TABLE orders (oreder_id INT PRIMARY KEY,  order_date  DATE , customer_id  INT , FOREIGN KEY (customer_id) REFERENCES persons(id));
  
    
ALTER TABLE orders MODIFY COLUMN oreder_id INT AUTO_INCREMENT; 
  
  
  
 SELECT * FROM persons;
     
INSERT  INTO orders (order_date, customer_id)
VALUES ( NOW(), NULL)
  
  
  
  
  -- query 5
  
  SELECT * FROM books b JOIN author a ON  b.author_id = a.id;

SELECT b.title , b.price , a.author_name , TRUNCATE (DATEDIFF(NOW(),a.dob)/365 ,0)age ,a.dob FROM books b  JOIN author a ON  b.author_id = a.id;

SELECT * FROM author;

SELECT * FROM books;

INSERT INTO books (title, price, publish_date, in_stock,author_id)
VALUES ( "Tum se", 600, '2023-12-13' , 30 , NULL);


INSERT INTO author (author_name , dob)
VALUES ("Sumit" , "1998-12-13");


SELECT b.title , b.price , a.author_name  FROM books b  JOIN author a ON  b.author_id = a.id;

SELECT b.title , b.price , a.author_name FROM books b  LEFT JOIN author a ON b.author_id = a.id;

SELECT b.title , b.price , a.author_name FROM books b  RIGHT JOIN author a ON b.author_id = a.id ORDER BY dob DESC;

SELECT b.title , b.price , a.author_name, a.dob  FROM books b  LEFT JOIN author a ON b.author_id = a.id
UNION
SELECT b.title , b.price , a.author_name, a.dob  FROM books b  RIGHT JOIN author a ON b.author_id = a.id ORDER BY dob DESC;




SELECT a.id, a.author_name ,a.dob, COUNT(*) FROM author a JOIN books  b ON a.id = b.author_id GROUP BY a.id ;





SELECT * FROM books;

ALTER TABLE books DROP COLUMN category;

CREATE TABLE category (id INT PRIMARY KEY AUTO_INCREMENT, category_name VARCHAR(50));


INSERT INTO category (category_name)
VALUES
('Fantasy'),
('Fiction'),
('SciFi'),
('Mystery'),
('Thriller');


ALTER TABLE books ADD COLUMN cate_id INT,
ADD FOREIGN KEY (cate_id) REFERENCES category(id);


SELECT * FROM category ;
SELECT * FROM books;
SELECT * FROM author;
SELECT * FROM book_category;


ALTER TABLE books DROP  FOREIGN KEY books_ibfk_2;

ALTER TABLE books DROP COLUMN cate_id;


CREATE TABLE book_category(book_id INT ,  cate_id INT , PRIMARY KEY(book_id, cate_id));




SELECT * FROM category ;
SELECT * FROM books;
SELECT * FROM author;
SELECT * FROM book_category;


SELECT title ,author_name, GROUP_CONCAT(category_name  SEPARATOR '|') FROM books b JOIN author a ON a.id = b.author_id
JOIN book_category bc ON bc.book_id = b.book_id
JOIN category c ON c.id = bc.cate_id
GROUP BY b.book_id


SELECT * FROM books  b JOIN author a ON  b.author_id = a.id AND b.publish_date >= '2000-01-01' AND a.dob >= '1950-01-01';

SELECT * FROM books b JOIN author a ON a.id = b.author_id AND b.publish_date > DATE_SUB(NOW(), INTERVAL 7 YEAR);

SELECT author_name , GROUP_CONCAT(title) , COUNT(*) number_book FROM books b JOIN author a ON a.id = b.author_id 
GROUP BY a.id HAVING number_book >=2;



SELECT * FROM category ;
SELECT * FROM books;
SELECT * FROM author;
SELECT * FROM book_category;


SELECT *  FROM books b LEFT JOIN author a ON a.id = b.author_id;


SELECT title , "book" cate, publish_date, NULL dob FROM books
UNION ALL
SELECT author_name , "author" cate, NULL ,dob FROM author ORDER BY cate;









-- query 6

CREATE TABLE customers (id INT PRIMARY KEY AUTO_INCREMENT,  customer_name VARCHAR(50) , email VARCHAR(50) , city VARCHAR(50));


CREATE TABLE orders (id INT PRIMARY KEY AUTO_INCREMENT,  order_date DATE , amout DECIMAL(10,2) , customer_id INT ,
FOREIGN KEY (customer_id)  REFERENCES customers(id));


INSERT INTO customers (customer_name, email, city)
VALUES
('Sumit Sharma', 'sumit@gmail.com', 'Delhi'),
('Rahul Verma', 'rahul@gmail.com', 'Mumbai'),
('Amit Kumar', 'amit@gmail.com', 'Pune'),
('Priya Singh', 'priya@gmail.com', 'Bangalore'),
('Neha Gupta', 'neha@gmail.com', 'Delhi'),
('Rohit Mehta', 'rohit@gmail.com', 'Hyderabad'),
('Ankit Jain', 'ankit@gmail.com', 'Jaipur'),
('Pooja Sharma', 'pooja@gmail.com', 'Chandigarh'),
('Vikas Yadav', 'vikas@gmail.com', 'Noida'),
('Sneha Kapoor', 'sneha@gmail.com', 'Gurgaon'),
('Delhi Kapoor', 'delhi@gmail.com', 'Delhi');



INSERT INTO orders (order_date, amout, customer_id)
VALUES
('2026-01-05', 1200.00, 1),
('2026-01-10', 2500.00, 1),
('2026-01-15', 800.00, 2),
('2026-01-20', 3500.00, 2),
('2026-02-02', 1500.00, 3),
('2026-02-10', 2200.00, 3),
('2026-02-15', 5000.00, 3),
('2026-03-01', 750.00, 4),
('2026-03-05', 1800.00, 5),
('2026-03-12', 3200.00, 5),
('2026-03-20', 4500.00, 6),
('2026-04-01', 900.00, 7),
('2026-04-05', 1600.00, 7),
('2026-04-15', 2800.00, 8),
('2026-05-01', 1100.00, 9),
('2026-05-10', 2400.00, 9),
('2026-05-20', 6000.00, 1),
('2026-06-01', 1300.00, 2),
('2026-06-10', 2100.00, 4),
('2026-06-20', 4000.00, 6);



SELECT * FROM customers;
SELECT * FROM orders;


SELECT * FROM customers c LEFT JOIN orders  o ON c.id = o.customer_id WHERE o.id IS NULL


SELECT  c.customer_name ,COUNT(o.id) ,IFNULL( SUM(amout) , 0) FROM customers c LEFT JOIN orders o ON c.id = o.customer_id GROUP BY c.id;


CREATE TABLE shipping ( id INT PRIMARY KEY AUTO_INCREMENT,
order_id INT,
shipping_date DATE,
carrier VARCHAR(50),
tracking_number VARCHAR(50),
FOREIGN KEY (order_id) REFERENCES orders(id));


INSERT INTO shipping (order_id, shipping_date, carrier, tracking_number)
VALUES
(1,  '2026-01-07', 'BlueDart', 'BD100001'),
(2,  '2026-01-12', 'Delhivery', 'DL100002'),
(3,  '2026-01-18', 'FedEx', 'FX100003'),
(4,  '2026-01-23', 'BlueDart', 'BD100004'),
(5,  '2026-02-04', 'Delhivery', 'DL100005'),
(6,  '2026-02-12', 'DHL', 'DH100006'),
(7,  '2026-02-17', 'FedEx', 'FX100007'),
(8,  '2026-03-03', 'BlueDart', 'BD100008'),
(9,  '2026-03-08', 'Delhivery', 'DL100009'),
(10, '2026-03-15', 'DHL', 'DH100010'),
(11, '2026-03-22', 'FedEx', 'FX100011'),
(12, '2026-04-03', 'BlueDart', 'BD100012'),
(13, '2026-04-07', 'Delhivery', 'DL100013'),
(14, '2026-04-17', 'DHL', 'DH100014'),
(15, '2026-05-03', 'FedEx', 'FX100015'),
(16, '2026-05-12', 'BlueDart', 'BD100016'),
(17, '2026-05-22', 'Delhivery', 'DL100017');


SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM shipping;


SELECT * FROM customers c
LEFT JOIN orders o
ON  o.customer_id = c.id
LEFT JOIN shipping s
ON s.order_id = o.id;


SELECT c.customer_name , city , amout FROM (SELECT * FROM customers WHERE city = 'Delhi') c
LEFT JOIN orders o
ON c.id = o.customer_id ;

SELECT c.customer_name , c.email, MAX(o.order_date) latest_date FROM customers  c LEFT JOIN orders o ON c.id = o.customer_id GROUP BY c.id

 HAVING latest_date IS NULL OR latest_date <= DATE_SUB(NOW(), INTERVAL 5 MONTH );
 
 
 
 
 

-- query 7
CREATE TABLE apartments(
id INT PRIMARY KEY AUTO_INCREMENT,
apartment_number VARCHAR(10) NOT  NULL,
floor_number INT NOT NULL,
wing_name CHAR(1) NOT NULL);


CREATE TABLE residents(
id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL,
occupation VARCHAR(100),
apartment_id INT,
FOREIGN KEY(apartment_id) REFERENCES apartments(id)
);


INSERT INTO apartments (apartment_number, floor_number, wing_name)
VALUES
('A-101', 1, 'A'),
('A-102', 1, 'A'),
('A-201', 2, 'A'),
('A-202', 2, 'A'),
('B-101', 1, 'B'),
('B-102', 1, 'B'),
('B-201', 2, 'B'),
('B-202', 2, 'B'),
('C-301', 3, 'C'),
('C-302', 3, 'C');


INSERT INTO residents (first_name, last_name, occupation, apartment_id)
VALUES
('Sumit', 'Sharma', 'Software Engineer', 1),
('Priya', 'Sharma', 'Teacher', 1),

('Rahul', 'Verma', 'Doctor', 2),

('Amit', 'Kumar', 'Business Owner', 3),
('Neha', 'Kumar', 'Designer', 3),

('Rohit', 'Mehta', 'Bank Manager', 4),

('Ankit', 'Jain', 'Software Engineer', 5),
('Pooja', 'Jain', 'Accountant', 5),

('Vikas', 'Yadav', 'Lawyer', 6),

('Sneha', 'Kapoor', 'HR Manager', 7),
('Karan', 'Kapoor', 'Software Engineer', 7),

('Manish', 'Gupta', 'Architect', 8),

('Nisha', 'Singh', 'Nurse', 9);



SELECT * FROM apartments;

SELECT * FROM residents;


SELECT COUNT(r.id) ,GROUP_CONCAT(r.first_name) res FROM   residents r  RIGHT JOIN  apartments a ON a.id = r.apartment_id  GROUP BY  a.id;


CREATE TABLE mainenance_request(
id INT PRIMARY KEY AUTO_INCREMENT,
apartment_id INT,
request_date DATE,
desciption VARCHAR (50),
statuss ENUM('Pending', 'In-Progress' ,'Completed') DEFAULT 'Pending',
FOREIGN KEY (apartment_id) REFERENCES apartments(id)
);


INSERT INTO mainenance_request
    (apartment_id, request_date, desciption, statuss)
VALUES
(1, '2026-01-05', 'Water leakage in bathroom', 'Completed'),
(1, '2026-03-12', 'Fan not working', 'Completed'),

(2, '2026-02-10', 'Kitchen tap leaking', 'Pending'),

(3, '2026-01-20', 'Door lock damaged', 'In-Progress'),
(3, '2026-04-15', 'AC not cooling', 'Pending'),



(6, '2026-01-30', 'Power socket damaged', 'Completed'),

(7, '2026-04-02', 'Water heater issue', 'In-Progress'),
(7, '2026-05-18', 'Ceiling fan noise', 'Pending'),

(8, '2026-03-22', 'Main door repair', 'Completed'),

(9, '2026-02-14', 'Kitchen sink blocked', 'Completed'),
(9, '2026-06-01', 'Bedroom light issue', 'Pending'),
s
(10, '2026-06-15', 'Elevator noise complaint', 'In-Progress');


SELECT * FROM apartments;
SELECT * FROM residents;
SELECT * FROM mainenance_request;

SELECT * FROM  residents r RIGHT JOIN apartments a ON r.apartment_id = a.id  LEFT JOIN mainenance_request mr ON mr.apartment_id = a.id;


SELECT floor_number, COUNT(r.id) cnt FROM residents r RIGHT JOIN apartments a ON  r.apartment_id = a.id   GROUP BY floor_number ORDER BY  cnt LIMIT 1;


SELECT a.id ,a.apartment_number , COUNT(mr.id) FROM mainenance_request mr RIGHT JOIN apartments a ON mr.apartment_id = a.id GROUP BY a.id


-- query 8

-- query 9
-- Create tables for our demonstration
CREATE TABLE headquarters_employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    hire_date DATE,
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

CREATE TABLE branch_employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    hire_date DATE,
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

CREATE TABLE customers2 (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    signup_date DATE,
    STATUS VARCHAR(20)
);


-- Sample Data
-- ====================================================================
-- Insert data into headquarters_employees
INSERT INTO headquarters_employees VALUES
(101, 'John', 'Smith', 'john.smith@company.com', '2018-03-15', 'IT', 75000.00),
(102, 'Mary', 'Johnson', 'mary.johnson@company.com', '2019-06-22', 'HR', 65000.00),
(103, 'Robert', 'Williams', 'robert.williams@company.com', '2017-11-08', 'Finance', 82000.00),
(104, 'Susan', 'Brown', 'susan.brown@company.com', '2020-01-30', 'Marketing', 68000.00),
(105, 'Michael', 'Davis', 'michael.davis@company.com', '2018-09-12', 'IT', 78000.00);

-- Insert data into branch_employees
INSERT INTO branch_employees VALUES
(201, 'James', 'Wilson', 'james.wilson@company.com', '2019-04-18', 'Sales', 62000.00),
(202, 'Patricia', 'Moore', 'patricia.moore@company.com', '2020-07-25', 'Marketing', 59000.00),
(203, 'Linda', 'Taylor', 'linda.taylor@company.com', '2018-08-15', 'HR', 61000.00),
(204, 'Robert', 'Williams', 'robert.williams@company.com', '2017-11-08', 'Finance', 82000.00), -- Duplicate employee who works at both locations
(205, 'Elizabeth', 'Anderson', 'elizabeth.anderson@company.com', '2019-12-03', 'Sales', 64000.00);

-- Insert data into customers
INSERT INTO customers2 VALUES
(1001, 'David', 'Miller', 'david.miller@email.com', '2019-02-14', 'Active'),
(1002, 'Sarah', 'Wilson', 'sarah.wilson@email.com', '2020-05-20', 'Active'),
(1003, 'Michael', 'Davis', 'michael.davis@email.com', '2018-11-30', 'Inactive'), -- Same name as an employee
(1004, 'Jennifer', 'Garcia', 'jennifer.garcia@email.com', '2021-01-05', 'Active'),
(1005, 'Robert', 'Martinez', 'robert.martinez@email.com', '2019-08-22', 'Active');



SELECT department, COUNT(department)  cnt FROM 
( SELECT DISTINCT department FROM headquarters_employees 
UNION ALL
SELECT DISTINCT department FROM branch_employees) c
GROUP BY department HAVING  cnt >=2;


-- query 10


SELECT * FROM books;

SELECT * FROM author;

SELECT * FROM books  b  LEFT JOIN  author a ON  b.author_id = a.id
UNION
SELECT * FROM books  b  RIGHT JOIN  author a ON a.id = b.author_id;

--  query 11

CREATE TABLE products ( id INT PRIMARY KEY , product_name VARCHAR(50) NOT NULL)

CREATE TABLE colors (c_id INT PRIMARY KEY AUTO_INCREMENT , color_name VARCHAR(50) NOT NULL);

CREATE TABLE sizes(id INT PRIMARY KEY AUTO_INCREMENT, size CHAR(1) NOT NULL);


INSERT INTO products (id, product_name)
VALUES
(1, 'T-Shirt'),
(2, 'Jeans'),
(3, 'Shoes'),
(4, 'Jacket'),
(5, 'Cap');


INSERT INTO colors (color_name)
VALUES
('Red'),
('Blue'),
('Black'),
('White');

INSERT INTO sizes(size)
VALUES ('S'),('M'),('L') ,('X');



SELECT p.product_name , c.color_name FROM products p CROSS JOIN colors c;


EXPLAIN SELECT ROW_NUMBER() OVER ()  s_no,
 CONCAT (p.product_name ,' - ', c.color_name, ' - ' , s.size) product_details FROM products p
CROSS JOIN colors c
CROSS JOIN sizes s WHERE s.size='X';


-- query 12




SELECT * FROM employees;

ALTER TABLE employees ADD COLUMN manager_id INT;



UPDATE employees SET manager_id = NULL WHERE manager_id = 0;

SELECT e.username , m.username FROM employees e  LEFT JOIN employees m ON e.manager_id = m.id;

SELECT * FROM employees emp1 JOIN employees  emp2 ON emp1.department = emp2.department AND  emp1.id < emp2.id;


SELECT e1.username FROM employees   e1 JOIN employees m ON e1.manager_id = m.id  WHERE e1.salary > m.salary;

-- calculate average salary difference between employees employeees and manager by department;



SELECT  emp.department, AVG(emp.salary- mag.salary)  average_salary_differenec 
FROM employees emp JOIN  employees mag ON emp.manager_id = mag.id GROUP BY emp.department;




