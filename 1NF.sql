
USE StudentDB;

CREATE TABLE Students(
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentName VARCHAR(255)
);

INSERT INTO Students (StudentName) SELECT DISTINCT StudentName FROM StudentData;


CREATE TABLE Courses(
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT,
    CourseName VARCHAR(255),
    Instructor VARCHAR(255),
    InstructorEmail VARCHAR(255),
    CourseLocation VARCHAR(255),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

INSERT INTO Courses (StudentID, CourseName, Instructor, InstructorEmail, CourseLocation)
SELECT
    S.StudentID, 
    SD.CourseName,
    SD.Instructor,
    SD.InstructorEmail,
    SD.CourseLocation
FROM
    StudentData SD
JOIN
    Students S ON SD.StudentName = S.StudentName;


SELECT * FROM Students;

SELECT * FROM Courses;
