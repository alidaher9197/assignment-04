CREATE DATABASE university_db;
CREATE TABLE students(
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(300) UNIQUE ,
    CONSTRAINT chech_email CHECK (email LIKE '%_@__%.__%'),
    age INT ,
    CONSTRAINT check_age CHECK (age >=18),
    registration_date DATE GENERATED ALWAYS AS (DATE(created_at)) ,
    registration_time TIME GENERATED ALWAYS AS (TIME(created_at)) ,
    created_at DATETIME DEFAULT NOW()
);
INSERT INTO students
(full_name,email,age)
VALUES
("ali daher","alidaher9197@gmail.com",28),
("ahmad daher","example1@gmail.com",30),
("samir daher","example2@gmail.com",31);