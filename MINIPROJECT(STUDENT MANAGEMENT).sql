
-- ==========================================
-- CREATE DATABASE
-- ==========================================

DROP DATABASE IF EXISTS STUDENT_DB;

CREATE DATABASE STUDENT_DB;

USE STUDENT_DB;


-- ==========================================
-- 1. CREATE STUDENT TABLE
-- ==========================================

CREATE TABLE STUDENT (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(30),
    Email VARCHAR(50),
    Phone VARCHAR(15)
);


-- INSERT STUDENT VALUES

INSERT INTO STUDENT
(Student_ID, Student_Name, Email, Phone)
VALUES
(1, 'Rahul', 'rahul@gmail.com', '9876543210'),
(2, 'Aman', 'aman@gmail.com', '9876543211'),
(3, 'Priya', 'priya@gmail.com', '9876543212'),
(4, 'Sneha', 'sneha@gmail.com', '9876543213'),
(5, 'Karan', 'karan@gmail.com', '9876543214');


-- ==========================================
-- 2. CREATE COURSE TABLE
-- ==========================================

CREATE TABLE COURSE (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(30),
    Credits INT
);


-- INSERT COURSE VALUES

INSERT INTO COURSE
(Course_ID, Course_Name, Credits)
VALUES
(101, 'DBMS', 4),
(102, 'Java', 3),
(103, 'Python', 4),
(104, 'Operating System', 3),
(105, 'Computer Networks', 4);


-- ==========================================
-- 3. CREATE ENROLLMENT TABLE
-- ==========================================

CREATE TABLE ENROLLMENT (
    Enrollment_ID INT PRIMARY KEY,
    Student_ID INT,
    Course_ID INT,
    Enrollment_Date DATE,
    Grade VARCHAR(2),

    FOREIGN KEY (Student_ID)
    REFERENCES STUDENT(Student_ID),

    FOREIGN KEY (Course_ID)
    REFERENCES COURSE(Course_ID)
);


-- INSERT ENROLLMENT VALUES

INSERT INTO ENROLLMENT
(Enrollment_ID, Student_ID, Course_ID, Enrollment_Date, Grade)
VALUES
(1, 1, 101, '2026-01-10', 'A'),
(2, 1, 102, '2026-01-12', 'B'),
(3, 2, 101, '2026-01-10', 'A'),
(4, 2, 103, '2026-01-15', 'B'),
(5, 3, 102, '2026-01-12', 'A'),
(6, 3, 104, '2026-01-18', 'A'),
(7, 4, 105, '2026-01-20', 'B'),
(8, 5, 103, '2026-01-15', 'A');


-- ==========================================
-- 4. DISPLAY ALL TABLES
-- ==========================================

SELECT * FROM STUDENT;

SELECT * FROM COURSE;

SELECT * FROM ENROLLMENT;
