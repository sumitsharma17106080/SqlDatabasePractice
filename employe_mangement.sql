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


 SELECT * FROM employees;