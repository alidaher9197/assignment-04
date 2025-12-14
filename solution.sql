CREATE DATABASE university_db;
CREATE TABLE students(
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(300) UNIQUE ,
    CONSTRAINT chech_email CHECK (email LIKE '%_@__%.__%'),
    age INT ,
    CONSTRAINT check_age CHECK (age >=18),
    registration_date DATE DEFAULT  CURRENT_DATE() ,
    registration_time TIME DEFAULT CURRENT_TIME(),
    created_at DATETIME DEFAULT NOW()
);
INSERT INTO students
(full_name,email,age)
VALUES
("ali daher","alidaher9197@gmail.com",28),
("ahmad daher","example1@gmail.com",30),
("samir daher","example2@gmail.com",31);