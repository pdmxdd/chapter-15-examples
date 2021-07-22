-- CREATE --
-- Create a table called students with two columns:
create table students(
	first_name VARCHAR(50),
    last_name VARCHAR(50)
);

-- Add a student record to the table:
INSERT INTO students VALUES ("Paul", "Matthews");

-- Add another student record to the table:
INSERT INTO students VALUES ("Julia", "Drummond");

-- Add another student record to the table:
INSERT INTO students VALUES("Paul", "Pierce");

-- READ --
-- Select all the students out of a table --
SELECT * FROM students;

-- Select just the first_names out of the students table --
SELECT first_name FROM students;

-- Select just the last_names out of the students table --
SELECT last_name FROM students;

-- Restricting read results with WHERE --
SELECT * FROM students WHERE (first_name="Paul");

-- Restricting read results with WHERE AND --
SELECT * FROM students WHERE (first_name="Paul") AND (last_name="Matthews");

-- UPDATE --
UPDATE students SET last_name="Matthews" WHERE first_name="Julia";

SELECT * FROM students WHERE (first_name="Julia");

SELECT * FROM students;

-- DELETE --
DELETE FROM students WHERE (first_name="Paul") AND (last_name="Pierce");

SELECT * FROM students;
