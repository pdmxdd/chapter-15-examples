CREATE TABLE instructors (id INTEGER PRIMARY KEY AUTO_INCREMENT, first_name VARCHAR(50), last_name VARCHAR(50));

CREATE TABLE courses (
	id INTEGER PRIMARY KEY AUTO_INCREMENT, 
    instructor_id INTEGER, 
    FOREIGN KEY (instructor_id) references instructors(id), 
    course_name VARCHAR(50));

INSERT INTO instructors (first_name, last_name) VALUES ("Paul", "Matthews");

SELECT * FROM instructors;

INSERT INTO courses (instructor_id, course_name) VALUES (1, "Grow 2 Code");
INSERT INTO courses (instructor_id, course_name) VALUES (1, "GIS DevOps");

SELECT * FROM courses;

-- Using an INNER join to select all the courses taught by each instructor
SELECT course_name FROM courses INNER JOIN instructors ON courses.instructor_id = instructors.id;