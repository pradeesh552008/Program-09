CREATE DATABASE IF NOT EXISTS CollegeDB;
USE CollegeDB;

CREATE TABLE Department (
    DepartmentID INT(5) PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Department (DepartmentID, DepartmentName) VALUES
(101, 'Computer Science'),
(102, 'Mathematics'),
(103, 'Physics');

CREATE TABLE Student (
    StudentID INT(5) PRIMARY KEY,
    StudentName VARCHAR(20),
    DepartmentID INT(5)
);

INSERT INTO Student (StudentID, StudentName, DepartmentID) VALUES
(1001, 'Arun', 101),
(1002, 'Divya', 102),
(1003, 'Karthik', 101),
(1004, 'Nisha', 103);

SELECT
    Student.StudentName AS 'Student Name',
    Department.DepartmentName AS 'Department Name'
FROM Student
INNER JOIN Department
    ON Student.DepartmentID = Department.DepartmentID;
