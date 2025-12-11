-- G5_23BAI70147_Chandan_kumar_SESSION1
CREATE TABLE employee (
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50)
);
drop table employee
INSERT INTO employee (emp_name, department) 
VALUES 
('Ajay', 'Engineering'),
('Priya', 'Data Science'),
('Rohit', 'Marketing')

CREATE VIEW Employee_View AS
SELECT emp_name, department 
FROM employee

CREATE ROLE Analyst
GRANT SELECT ON Employee_View TO Analyst

