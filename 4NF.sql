USE StudentDB;

CREATE TABLE IF NOT EXISTS CourseLocations (
    LocationID INT AUTO_INCREMENT PRIMARY KEY,
    CourseLocation VARCHAR(255)
);

INSERT INTO CourseLocations (CourseLocation)
SELECT DISTINCT CourseLocation FROM Courses;

ALTER TABLE Courses ADD COLUMN LocationID INT;

UPDATE Courses c
JOIN CourseLocations cl ON c.CourseLocation = cl.CourseLocation
SET c.LocationID = cl.LocationID;

ALTER TABLE Courses DROP COLUMN CourseLocation;

ALTER TABLE Courses ADD FOREIGN KEY (LocationID) REFERENCES CourseLocations(LocationID);

SHOW TABLES;

SELECT * FROM CourseLocations;
SELECT * FROM CourseDetails;
SELECT * FROM Instructors;
SELECT * FROM Courses;
SELECT * FROM Students;