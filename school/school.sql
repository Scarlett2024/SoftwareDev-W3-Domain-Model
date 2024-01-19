-- Drops existing tables, so we start fresh with each
-- run of this script
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS teachers;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS sections;
DROP TABLE IF EXISTS enrollments;

CREATE TABLE students (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT
);

-- Create the rest of the tables
CREATE TABLE teachers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  bio TEXT
);

CREATE TABLE courses (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  description TEXT
);

CREATE TABLE sections (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  time TEXT,
  course_id INTEGER,
  teacher_id INTEGER
);

CREATE TABLE enrollments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  section_id INTEGER,
  student_id INTEGER
);

-- Insert values into the students table
INSERT INTO students (first_name, last_name, email, phone_number) 
VALUES ("Jenny","Smith","jenny@gmail.com","867-5309");

INSERT INTO students (first_name, last_name, email, phone_number) 
VALUES ("Jane","Doe","Jane@example.com","555-1212");

-- Insert values into the teachers table
INSERT INTO teachers (first_name, last_name, bio)
VALUES ("Ben", "Block", "XXX");

INSERT INTO teachers (first_name, last_name, bio)
VALUES ("Brian", "Eng", "YYY");

-- Insert values into the courses table
INSERT INTO courses (name, description)
VALUES ("Intro to Software Dev", "XXX");

INSERT INTO courses (name, description)
VALUES ("Intro to Tacos", "YYY");

-- Insert values into the sections table
INSERT INTO sections (time, course_id, teacher_id)
VALUES ("Tuesday",1,2);

INSERT INTO sections (time, course_id, teacher_id)
VALUES ("Wednesday",1,1);

