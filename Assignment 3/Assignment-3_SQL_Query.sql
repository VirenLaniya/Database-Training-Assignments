/** Creating Tables **/
/* Department table */
CREATE TABLE Department(
	dept_id INT PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
)

/* Employee table */
CREATE TABLE Employee(
	emp_id INT PRIMARY KEY,
	dept_id INT FOREIGN KEY REFERENCES Department(dept_id),
	mngr_id INT NULL,
	emp_name VARCHAR(30),
	salary FLOAT NOT NULL
)

/** Inserting data **/
/* Insert into Department */
INSERT INTO Department (dept_id, dept_name)
VALUES (301, 'Development'), (302, 'Human Resources'), (303, 'Network'), (304, 'Quality Assurance'), 
(305, 'Design'), (306, 'Finance')

/* Insert into Employee */
INSERT INTO Employee (emp_id, dept_id, mngr_id, emp_name, salary) 
VALUES (101, 302, 3, 'Kushal Mehta', 35000), (102, 302, 3, 'Purva Singh', 30000),
(103, 301, 4, 'Viren Laniya', 40000), (104, 301, NULL, 'Amir Rav', 50000),
(105, 301, 5, 'Dinkar Siddhu', 45000), (106, 301, 4, 'Vishva Sharma', 43100.68),
(107, 303, NULL, 'Harry Gin', 30500.76), (108, 303, 107, 'Aarav Thapar', 34500),
(109, 306, NULL, 'Prachi Patel', 36500), (111, 305, 7, 'Aahin Khan', 27500),
(110, 305, 7, 'Parvindar Singh', 29000.43), (115, 304, 9, 'Arka Rathore', 32500),
(116, 304, 9, 'Julie Anna', 27500), (113, 304, 10, 'Aru Gray', 50556.88)

select * from Employee
select * from Department


/** Assignment 3 **/

/* 3.1 write a SQL query to find Employees who have the biggest salary in their Department*/
SELECT e.emp_id, e.emp_name, e.dept_id, d.dept_name, e.salary
FROM Employee e
INNER JOIN Department d ON e.dept_id = d.dept_id
WHERE salary IN (
	SELECT MAX(salary) AS [Max. salary] FROM Employee
	GROUP BY dept_id
)

/* 3.2 write a SQL query to find Departments that have less than 3 people in it */
SELECT empCount.dept_id, d.dept_name, empCount.emp_count AS [Total Employees]
FROM (
	SELECT dept_id, COUNT(dept_id) AS emp_count FROM Employee
	GROUP BY dept_id
	HAVING COUNT(dept_id) < 3
) empCount
INNER JOIN Department d ON empCount.dept_id = d.dept_id 

/* 3.3 write a SQL query to find All Department along with the number of people there */
SELECT empCount.dept_id, d.dept_name, empCount.emp_count AS [Total Employees]
FROM (
	SELECT dept_id, COUNT(dept_id) AS emp_count FROM Employee
	GROUP BY dept_id
) empCount
INNER JOIN Department d ON empCount.dept_id = d.dept_id 

/* 3.4 write a SQL query to find All Department along with the total salary there */
SELECT empCount.dept_id, d.dept_name, empCount.total_salary AS [Total Salary]
FROM (
	SELECT dept_id, SUM(salary) AS total_salary FROM Employee
	GROUP BY dept_id
) empCount
INNER JOIN Department d ON empCount.dept_id = d.dept_id
