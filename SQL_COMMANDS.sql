create database shajiii;

--  Use database
use shajiii;

-- Create a table 
create table employees(
s_no Int,
Employee_id Varchar(20),
Employee_Name Varchar(40),
Date_Of_Birth timestamp,
Date_Of_Joining TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
Salary double,
Bonus double,
City varchar(20),
Address varchar(30),
Department varchar(30),
Employee_Email_id varchar(40),
Employee_status varchar(30),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

-- 1. Inserting values into the 'employees' table
INSERT INTO employees VALUES (1, 'E1001', 'Shaji S', '1990-05-12 08:30:00', CURRENT_TIMESTAMP, 50000, 5000, 'Udumalpet', 'Street 1', 'HR', 'shaji.s@email.com', 'Active', CURRENT_TIMESTAMP);

INSERT INTO employees VALUES (2, 'E1002', 'Aishu K', '1992-06-14 10:00:00', CURRENT_TIMESTAMP, 55000, 4500, 'Udumalpet', 'Street 2', 'Finance', 'aishu.k@email.com', 'Inactive', CURRENT_TIMESTAMP);

INSERT INTO employees VALUES (3, 'E1003', 'Mowni M', '1989-03-22 12:15:00', CURRENT_TIMESTAMP, 48000, 4000, 'O.Mandapam', 'Street 3', 'IT', 'mowni.m@email.com', 'Active', CURRENT_TIMESTAMP);

INSERT INTO employees VALUES (4, 'E1004', 'Kalpu K', '1994-08-10 14:30:00', CURRENT_TIMESTAMP, 47000, 3500, 'K.Mangalam', 'Street 4', 'Sales', 'kalpu.k@email.com', 'Active', CURRENT_TIMESTAMP);

INSERT INTO employees VALUES (5, 'E1005', 'Mowni S', '1995-11-20 16:45:00', CURRENT_TIMESTAMP, 52000, 3800, 'Theni', 'Street 5', 'Engineering', 'mowni.s@email.com', 'Active', CURRENT_TIMESTAMP);

INSERT INTO employees VALUES (6, 'E1006', 'Ravi S', '1988-02-11 11:20:00', CURRENT_TIMESTAMP, 54000, 4100, 'Coimbatore', 'Street 6', 'HR', 'ravi.s@email.com', 'Inactive', CURRENT_TIMESTAMP);

INSERT INTO employees VALUES (7, 'E1007', 'Neha P', '1991-07-30 13:45:00', CURRENT_TIMESTAMP, 57000, 5000, 'Chennai', 'Street 7', 'Finance', 'neha.p@email.com', 'Active', CURRENT_TIMESTAMP);

INSERT INTO employees VALUES (8, 'E1008', 'Karthik B', '1993-04-05 09:30:00', CURRENT_TIMESTAMP, 60000, 4200, 'Salem', 'Street 8', 'IT', 'karthik.b@email.com', 'Active', CURRENT_TIMESTAMP);

INSERT INTO employees VALUES (9, 'E1009', 'Priya N', '1992-12-08 14:00:00', CURRENT_TIMESTAMP, 53000, 3600, 'Madurai', 'Street 9', 'Sales', 'priya.n@email.com', 'Inactive', CURRENT_TIMESTAMP);

INSERT INTO employees VALUES (10, 'E1010', 'Rakesh T', '1987-10-22 15:30:00', CURRENT_TIMESTAMP, 62000, 4900, 'Tirunelveli', 'Street 10', 'Engineering', 'rakesh.t@email.com', 'Active', CURRENT_TIMESTAMP);

-- 2. Alter the column name
ALTER TABLE employee CHANGE COLUMN Employee_id Emp_ID VARCHAR(20);

-- 3.Add new column
ALTER TABLE employee ADD COLUMN Phone_Number VARCHAR(15); 
 
 -- 4.Drop the column
 ALTER TABLE employee DROP COLUMN Phone_Number;
 
 -- 5.View all starting letter with M
 SELECT * FROM employee WHERE Employee_Name LIKE 'M%';

-- 6.View more than 55000
SELECT * FROM employee WHERE Salary > 55000;

-- 7.View the city name called chennai
SELECT * FROM employee WHERE City = 'Chennai';
  
-- 8.Use logical operator 
 SELECT * FROM employee WHERE Salary > 50000 AND City = 'Coimbatore';

-- 9.Aggreagate function
SELECT 
    MIN(Salary) AS Min_Salary,
    MAX(Salary) AS Max_Salary,
    COUNT(*) AS Employee_Count,
    SUM(Salary) AS Total_Salary,
    AVG(Salary) AS Average_Salary
FROM employee;

-- 10.Use where,like,between and view results
SELECT * FROM employee 
WHERE Employee_Name LIKE 'A%' 
AND Salary BETWEEN 40000 AND 60000;

-- Display 
select * from employees;
