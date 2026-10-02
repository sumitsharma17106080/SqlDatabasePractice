CREATE TABLE certificate (
    id INT PRIMARY KEY,
    certname VARCHAR(50),
    validity INT,
    empId INT,
    FOREIGN KEY (empId) REFERENCES employees(id)
);


INSERT INTO certificate (id, certname, validity, empId) VALUES
(1, 'Java', 2027, 1),
(2, 'Spring Boot', 2028, 1),
(3, 'AWS', 2027, 2),
(4, 'Docker', 2026, 2),
(5, 'SQL', 2028, 3),
(6, 'Python', 2027, 4),
(7, 'HR Analytics', 2029, 4),
(8, 'Java', 2027, 5),
(9, 'AWS', 2028, 5),
(10, 'Kubernetes', 2029, 6),

(11, 'SQL', 2027, 7),
(12, 'Java', 2028, 8),
(13, 'Spring Boot', 2029, 8),
(14, 'AWS', 2027, 9),
(15, 'Docker', 2028, 9),
(16, 'Kubernetes', 2029, 10),
(17, 'Java', 2028, 11),
(18, 'AWS', 2029, 12),
(19, 'SQL', 2027, 13),
(20, 'Docker', 2028, 14),

(21, 'Java', 2029, 15),
(22, 'Spring Boot', 2028, 15),
(23, 'AWS', 2027, 16),
(24, 'SQL', 2029, 17),
(25, 'Python', 2028, 18),
(26, 'Docker', 2027, 19),
(27, 'Java', 2029, 20),
(28, 'AWS', 2028, 21),
(29, 'Kubernetes', 2029, 22),
(30, 'SQL', 2027, 23),

(31, 'Java', 2028, 24),
(32, 'AWS', 2029, 25),
(33, 'Docker', 2027, 26),
(34, 'Spring Boot', 2028, 27),
(35, 'SQL', 2029, 28),
(36, 'Java', 2027, 29),
(37, 'AWS', 2028, 30),
(38, 'Kubernetes', 2029, 31),
(39, 'Docker', 2027, 32),
(40, 'SQL', 2028, 33);