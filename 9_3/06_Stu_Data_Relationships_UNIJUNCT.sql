-- ## Data Modeling
-- In this activity, you will design a database model.
-- ### Instructions
-- You are the database consultant at a new university. Your job is to design a database model for the registrar. The database will keep track of information on students, 
-- courses offered by the university, and the courses each student has taken. 
-- * Which data model is appropriate here: many to many

-- * Create a `students` table that keeps track of the following:
--   * Unique ID number of each student
--   * Last and first names of each student

CREATE TABLE students(
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL
);

-- * Create a `courses` table that keeps track of the following:
--   * Unique ID number of each course
--   * Name of each course
CREATE TABLE courses(
	id SERIAL PRIMARY KEY,
	course_name VARCHAR(30) NOT NULL
);

-- * Create a `student_courses_junction` that keeps track of the following:
--   * All courses that have been taken by each student
--   * Term in which a course was taken by a student (spring or fall)

CREATE TABLE student_courses_junction (
  student_id INTEGER NOT NULL,
  FOREIGN KEY (student_id) REFERENCES students(id),
  course_id INTEGER NOT NULL,
  term VARCHAR(10),
  FOREIGN KEY (course_id) REFERENCES courses(id),
  PRIMARY KEY (student_id, course_id)
);

-- Populate Students
INSERT INTO students (first_name, last_name)
VALUES
  ('Bart', 'Simpson'),
  ('Lisa', 'Jones'),
  ('Maggie', 'Ireland');


-- Just look at what you put in students
SELECT * 
FROM students;


-- Populate the courses table
INSERT INTO courses (course_name)
VALUES
  ('Databases'),
  ('Computer Graphics'),
  ('Python 1'),
  ('Databases II'),
  ('Computer Vision'),
  ('Human Computer Interaction')
;
-- Just look at everything you populated courses with 
 SELECT * 
 FROM courses;

-- Populate the student courses juction
INSERT INTO student_courses_junction (student_id, course_id)
VALUES
  (1, 1),
  (1, 2),  
  (1, 4),
  (2, 3),
  (2, 4),
  (2, 5),  
  (3, 1),
  (3, 2),
  (3, 3),
  (3, 4),
  (3, 5),
  (3, 6);
  
-- If time allows, join and query the tables to get all data on the students.

-- Using the student junction to join courses and student
SELECT students.last_name, student_courses_junction.student_id, 
courses.course_name, courses.id
FROM students
LEFT JOIN student_courses_junction
ON student_courses_junction.student_id = students.id
LEFT JOIN courses
ON student_courses_junction.course_id = courses.id; 


-- This is exactly the same as query above but
-- we are using abbreviations s/c/sj for the table names
SELECT s.last_name, sj.student_id, 
c.course_name, c.id
FROM students s
LEFT JOIN student_courses_junction sj
ON sj.student_id = s.id
LEFT JOIN courses c
ON sj.course_id = c.id; 




