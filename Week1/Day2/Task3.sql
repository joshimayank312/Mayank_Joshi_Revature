-- Select the first name, last name, and salary of the top 3 employees with the highest salaries.
SELECT frist_name, last_nmae, salry FROM Employees ORDER BY salary DESC LIMIT 3;

-- Select the first name, last name, and salary of the top 3 employees with the lowest salaries.
SELECT frist_name, last_nmae, salry FROM Employees ORDER BY salary ASC LIMIT 3;

-- Select the first name, last name, and salary of the employee with the 2nd highest salary.
SELECT first_name, last_name, salary FROM Employees ORDER BY salary DESC LIMIT 1 OFFSET 1;

-- Select the first name, last name, and salary of the employee with the 2nd lowest salary. 
SELECT first_name, last_name, salary FROM Employees ORDER BY salary ASC LIMIT 1 OFFSET 1;

-- Select the first name, last name, and salary of the employee with the 3rd highest salary.  
SELECT first_name, last_name, salary FROM Employees ORDER BY salary DESC LIMIT 1 OFFSET 2;

-- Select the first name, last name, and salary of the employee with the 3rd lowest salary.
SELECT first_name, last_name, salary FROM Employees ORDER BY salary ASC LIMIT 1 OFFSET 2;

-- Select the first name, last name, email, and salary of employees with a salary between 65000 and 80000, ordered by their first name in descending order, and limit the result to 3 rows.
SELECT first_name, last_name, email, salary FROM Employees WHERE salary BETWEEN 65000 AND 80000 ORDER BY first_name DESC LIMIT 3;