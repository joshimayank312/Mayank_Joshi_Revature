CREATE DATABASE school_management;

USE school_management;

CREATE TABLE students(
	student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(50),
    date_of_birth DATE
);

CREATE TABLE courses (
	course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    course_description TEXT,
    credits INT
);

ALTER TABLE students ADD COLUMN grade VARCHAR(2);
ALTER TABLE students MODIFY phone_number VARCHAR(15);

INSERT INTO students (first_name, last_name, email, phone_number, date_of_birth, grade)
VALUES 
('Aman', 'Das', 'aman.das@example.com', '123-456-7890', '2000-01-15', 'A'),
('Jani', 'Simran', 'jani.simran@example.com', '234-567-8901', '2001-02-25', 'B'),
('Alina', 'James', 'alina.james@example.com', '345-678-9012', '2002-03-30', 'A');

INSERT INTO courses (course_name, course_description, credits)
VALUES 
('Mathematics', 'Study of numbers, shapes, and patterns.', 4),
('Physics', 'Study of matter, energy, and forces.', 4),
('Chemistry', 'Study of substances, their properties, and how they interact.', 3),
('Biology', 'Study of living organisms and their vital processes.', 3),
('Computer Science', 'Study of computers and computational systems.', 4);

SELECT first_name, last_name, email FROM students;

DROP TABLE students;

DROP DATABASE school_management;