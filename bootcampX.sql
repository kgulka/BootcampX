CREATE DATABASE bootcampx;
--switch to a database
\c bootcampx
--execute sql in a file
\i BootcampX/seeds/students.sql

CREATE TABLE famous_people (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  birthdate DATE
);

INSERT INTO famous_people (first_name, last_name, birthdate)
  VALUES ('Abraham', 'Lincoln', '1809-02-12');
  
-- A cohort will have the following attributes:

-- id: A unique identifier
-- name: The name of the cohort
-- start_date: The cohorts' start date
-- end_date: The cohorts' end date

CREATE TABLE cohort (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  start_date DATE,
  end_date DATE);

-- A student will have the following attributes:

-- id: A unique identifier
-- name: The full name of the student
-- email: The students' email address
-- phone: The students' phone number
-- github: The students' github profile url
-- start_date: The students' start date of the Bootcamp
-- end_date: The students' end date of the Bootcamp
-- cohort_id: 
CREATE TABLE cohort (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255),
  phone VARCHAR(32),
  github VARCHAR(255),
  start_date DATE,
  end_date DATE,
  cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE);
