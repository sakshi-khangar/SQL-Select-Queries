create database Employees;
use Employees;
create table employees (emp_id int PRIMARY KEY , Name varchar(50),Department TEXT,Salary int ,Age int);

INSERT INTO employees Values (1, 'Sneha','HR',40000,25);
INSERT INTO employees Values (2, 'Priya','Finance',55000,30);
INSERT INTO employees Values (3, 'Sakshi','IT',45000,28);
INSERT INTO employees Values (4, 'John','Sales',60000,35);
INSERT INTO employees Values (5, 'Ramesh','HR',42000,29);

#Select all columns
SELECT * FROM employees;
#Select Specific Column
SELECT Name ,Department FROM employees;
#Using WHERE
SELECT * FROM employees WHERE Department ='IT';
#AND Condition
SELECT * FROM employees WHERE Department='HR' AND Age <30;
#OR Condition
SELECT * FROM employees WHERE Department='HR' OR Age <30;
#Using LIKE
SELECT * FROM employees WHERE Name LIKE '%a%';
#Using BETWEEN
SELECT * FROM employees WHERE Salary BETWEEN 50000 AND 60000;

#Using ORDER-BY 
SELECT * FROM employees ORDER BY Salary ASC;
SELECT * FROM employees ORDER BY Age desc;
#Using LIMIT 
SELECT * FROM employees LIMIT 4;
#Aliasing
SELECT Name AS Employee_Name , Salary AS Monthly_Salary FROM employees;
#Remove Duplicates with Distinct
SELECT distinct Department FROM employees;