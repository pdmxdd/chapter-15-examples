CREATE TABLE students_with_ids (id INTEGER PRIMARY KEY AUTO_INCREMENT, first_name VARCHAR(50), last_name VARCHAR(50));

SELECT * FROM students_with_ids;

INSERT INTO students_with_ids (first_name, last_name) VALUES ("Paul", "Matthews");
INSERT INTO students_with_ids (first_name, last_name) VALUES ("Julia", "Drummond");

SELECT * FROM students_with_ids;

-- now we can write a much nicer update statement: --
UPDATE students_with_ids SET last_name="Matthews" WHERE id=2;
-- we know it will only every affect one record the record who's primary key matches 2, which must be unique --