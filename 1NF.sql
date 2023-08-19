-- Use the StudentDB database
USE StudentDB;

-- Create a table to store student information
CREATE TABLE Students(
    StudentID INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for students
    StudentName VARCHAR(255) -- Name of the student
);

-- Insert distinct student names from the original data into the Students table
INSERT INTO Students (StudentName) SELECT DISTINCT StudentName FROM StudentData;

-- Display the contents of the Students table
SELECT * FROM Students;

-- Create a table to store course information
CREATE TABLE Courses(
    CourseID INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for courses
    StudentID INT, -- Foreign key referencing Students table
    CourseName VARCHAR(255), -- Name of the course
    Instructor VARCHAR(255), -- Name of the instructor
    InstructorEmail VARCHAR(255), -- Email of the instructor
    CourseLocation VARCHAR(255), -- Location of the course
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID) -- Establishing a foreign key relationship
);

-- Insert course details along with the corresponding StudentID from Students table
INSERT INTO Courses (StudentID, CourseName, Instructor, InstructorEmail, CourseLocation)
SELECT
    S.StudentID, -- Matching StudentID from Students table
    SD.CourseName, -- Course name
    SD.Instructor, -- Instructor's name
    SD.InstructorEmail, -- Instructor's email
    SD.CourseLocation -- Location of the course
FROM
    StudentData SD -- Original data
JOIN
    Students S ON SD.StudentName = S.StudentName; -- Matching student names to get StudentID

-- Display the contents of the Courses table
SELECT * FROM Courses;
