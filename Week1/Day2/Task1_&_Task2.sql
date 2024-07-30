CREATE DATABASE company;

USE company;

CREATE TABLE Employees(
	EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Salary INT NOT NULL,
    Department VARCHAR(50)
);

INSERT INTO Employees (FirstName, LastName, Email, Salary, Department) 
VALUES ('John', 'Doe', 'john.doe@company.com', 60000, 'Marketing'), 
('Jane', 'Smith', 'jane.smith@company.com', 75000, 'Sales'),
('Michael', 'Johnson', 'michael.johnson@company.com', 85000, 'Marketing'),
('Emily', 'Williams', 'emily.williams@company.com', 72000, 'IT'),
('David', 'Brown', 'david.brown@company.com', 65000, 'Sales'),
('Sarah', 'Davis', 'sarah.davis@company.com', 90000, 'IT'),
('Robert', 'Miller', 'robert.miller@company.com', 70000, 'Finance'),
('Jessica', 'Wilson', 'jessica.wilson@company.com', 65000, 'Finance'),
('Daniel', 'Anderson', 'daniel.anderson@company.com', 72000, 'IT'),
('Ashley', 'Taylor', 'ashley.taylor@company.com', 58000, 'Sales'),
('William', 'Brown', 'william.brown@company.com', 78000, 'Marketing'),
('Sophia', 'Davis', 'sophia.davis@company.com', 62000, 'HR');

-- Practice Questions for Constraints, Primary Key, and Foreign Key.
-- Create a constraint to ensure that the salary of an employee is greater than 0.

ALTER TABLE Employees ADD CHECK (Salary > 0);

-- Create a foreign key constraint in the Employees table to reference the DepartmentID in the Departments table.

ALTER TABLE Employees ADD DepartmentID INT;  

CREATE TABLE Departments(
	DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
	DepartmentName VARCHAR(50) NOT NULL
); 

INSERT INTO Departments (DepartmentName) VALUES ('Marketing'), ('Sales'), ('IT'), ('Finance'), ('HR');

ALTER TABLE Employees ADD FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);

-- Create a unique constraint on the Email column in the Employees table.

ALTER TABLE Employees ADD UNIQUE (Email);

-- Create a primary key constraint on the DepartmentID column in the Departments table.

-- I have already set the DepartmentID column as the PRIMARY KEY. 
-- However, if it wasn't done initially, I have also included another SQL query to set it later on.
ALTER TABLE Departments ADD PRIMARY KEY (DepartmentID);

-- Create a foreign key constraint in the Projects table to reference the DepartmentID in the Departments table.

CREATE TABLE Projects (
	ProjectID INT AUTO_INCREMENT PRIMARY KEY,
	ProjectName VARCHAR(100) NOT NULL
);
INSERT INTO Projects (ProjectName) VALUES ('Project A'), ('Project B'), ('Project C'), ('Project D'), ('Project E');
ALTER TABLE Projects ADD DepartmentID INT; 
ALTER TABLE Projects ADD FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);

-- Insert a new employee with a DepartmentID that does not exist in the Departments table and observe the foreign key constraint violation.

INSERT INTO Employees (FirstName, LastName, Email, Salary, DepartmentID)
VALUES ('Alice', 'Parker', 'alice.parker@company.com', 70000, 66);

-- Attempt to insert a duplicate email address into the Employees table and observe the unique constraint violation.

INSERT INTO Employees (FirstName, LastName, Email, Salary, DepartmentID)
VALUES ('Alex', 'Stone', 'john.doe@company.com', 65000, 1);

-- Delete a department from the Departments table that is being referenced by the Employees table and observe the foreign key constraint violation.

DELETE FROM Departments WHERE DepartmentID = 1;

-- Update the DepartmentID of an existing employee to a value that does not exist in the Departments table and observe the foreign key constraint violation.

UPDATE Employees SET DepartmentID = 6 WHERE EmployeeID = 1;