USE StudentDB;

CREATE TABLE IF NOT EXISTS CourseDetails(
    CourseDetailID INT AUTO_INCREMENT PRIMARY KEY,
    CourseName VARCHAR(255),
    CourseLocation VARCHAR(255)
);


INSERT INTO CourseDetails (CourseName, CourseLocation)
SELECT DISTINCT CourseName,CourseLocation
from Courses; 

ALTER TABLE Courses ADD COLUMN CourseDetailID INT;

UPDATE Courses C
JOIN CourseDetails CD ON C.CourseName = CD.CourseName AND C.CourseLocation = CD.CourseLocation
SET C.CourseDetailID = CD.CourseDetailID;


ALTER TABLE Courses ADD FOREIGN KEY (CourseDetailID) REFERENCES CourseDetails(CourseDetailID);

SHOW TABLES;

SELECT * FROM CourseDetails;
SELECT * FROM Instructors;
SELECT * FROM Courses;
SELECT * FROM Students;