use school;

INSERT INTO Subjects (subject_id, subject_name) VALUES
(1, 'Mathematics'),
(2, 'Science'),
(3, 'History'),
(4, 'English'),
(5, 'Physical Education');


INSERT INTO Teachers (teacher_id, first_name, last_name, subject_id) VALUES
(1, 'Alice', 'Johnson', 1),
(2, 'Bob', 'Smith', 2),
(3, 'Carol', 'Davis', 3),
(4, 'David', 'Wilson', 4),
(5, 'Eve', 'Martinez', 5);


INSERT INTO Classes (class_id, class_name, teacher_id) VALUES
(1, '10A', 1),
(2, '10B', 2),
(3, '11A', 3),
(4, '11B', 4),
(5, '12A', 5);


INSERT INTO Students (student_id, first_name, last_name, date_of_birth, class) VALUES
(1, 'John', 'Doe', '2005-04-12', '10A'),
(2, 'Emma', 'Brown', '2006-07-15', '10A'),
(3, 'Michael', 'Taylor', '2005-11-30', '10B'),
(4, 'Olivia', 'Anderson', '2004-05-22', '11A'),
(5, 'Sophia', 'Thomas', '2006-01-13', '11B'),
(6, 'James', 'Jackson', '2004-08-19', '12A');


INSERT INTO Attendance (attendance_id, student_id, date, status) VALUES
(1, 1, '2024-01-10', 'Present'),
(2, 2, '2024-01-10', 'Absent'),
(3, 3, '2024-01-10', 'Late'),
(4, 4, '2024-01-10', 'Present'),
(5, 5, '2024-01-10', 'Present'),
(6, 6, '2024-01-10', 'Absent'),
(7, 1, '2024-01-11', 'Late'),
(8, 2, '2024-01-11', 'Present'),
(9, 3, '2024-01-11', 'Present');


INSERT INTO Grades (grade_id, student_id, subject_id, grade) VALUES
(1, 1, 1, 'A'),
(2, 1, 2, 'B'),
(3, 2, 3, 'C'),
(4, 3, 4, 'A'),
(5, 4, 1, 'B'),
(6, 5, 2, 'A'),
(7, 6, 3, 'B'),
(8, 1, 4, 'A'),
(9, 2, 1, 'B');



