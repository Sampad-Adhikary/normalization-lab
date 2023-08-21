USE StudentDB;

CREATE TABLE IF NOT EXISTS Instructors(
    InstructorID INT AUTO_INCREMENT PRIMARY KEY,
    InstructorName VARCHAR(255),
    InstructorEmail VARCHAR(255)
);

INSERT INTO Instructors (InstructorName, InstructorEmail)
SELECT DISTINCT Instructor,InstructorEmail
from Courses; 

ALTER TABLE Courses ADD COLUMN InstructorID INT;

UPDATE Courses C
JOIN Instructors I ON C.Instructor = I.InstructorName AND C.InstructorEmail = I.InstructorEmail
SET C.InstructorID = I.InstructorID;

ALTER TABLE Courses
DROP COLUMN Instructor,
DROP COLUMN InstructorEmail;

ALTER TABLE Courses ADD FOREIGN KEY (InstructorID) REFERENCES Instructors(InstructorID);

SHOW TABLES;

SELECT * FROM Instructors;
SELECT * FROM Courses;
SELECT * FROM Students;
