
CREATE DATABASE IF NOT EXISTS StudentDB;


USE StudentDB;

CREATE TABLE IF NOT EXISTS StudentData(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    StudentName VARCHAR(255),
    CourseName VARCHAR(255),
    Instructor VARCHAR(255),
    InstructorEmail VARCHAR(255),
    CourseLocation VARCHAR(255)
);


INSERT INTO StudentData (StudentName, CourseName, Instructor, InstructorEmail, CourseLocation) VALUES
('John Smith', 'Math 101', 'Prof. Johnson', 'johnson@example.com', 'Room A101'),
('Emily Brown', 'History 201', 'Prof. Anderson', 'anderson@example.com', 'Room B215'),
('Michael Johnson', 'Chemistry 101', 'Prof. Smith', 'smith@example.com', 'Room C305'),
('Emily Brown', 'History 201', 'Prof. Anderson', 'anderson@example.com', 'Room B215'),
('Sarah Davis', 'Physics 101', 'Prof. Miller', 'miller@example.com', 'Room A201'),
('John Smith', 'Math 101', 'Prof. Johnson', 'johnson@example.com', 'Room A101'),
('David Wilson', 'Biology 101', 'Prof. White', 'white@example.com', 'Room D110'),
('Michael Johnson', 'Chemistry 101', 'Prof. Smith', 'smith@example.com', 'Room C305'),
('Anna Martinez', 'English 101', 'Prof. Davis', 'davis@example.com', 'Room B102'),
('John Smith', 'Math 101', 'Prof. Johnson', 'johnson@example.com', 'Room A101'),
('Jane Anderson', 'History 201', 'Prof. Anderson', 'anderson@example.com', 'Room B215'),
('William Turner', 'Physics 101', 'Prof. Miller', 'miller@example.com', 'Room A201'),
('Emily Brown', 'Chemistry 101', 'Prof. Smith', 'smith@example.com', 'Room C305'),
('David Wilson', 'Biology 101', 'Prof. White', 'white@example.com', 'Room D110'),
('Linda Davis', 'English 101', 'Prof. Davis', 'davis@example.com', 'Room B102');


SELECT * FROM StudentData;