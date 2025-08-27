# Student Management Database Queries

This repository contains a set of SQL queries and outputs for managing and analyzing data in a **Student Management System**. The queries cover teacher assignments, student grades, attendance tracking, and schema modifications.

---

## 📂 Contents
- `queries.sql` – SQL statements for data retrieval and updates.  
- `results.txt` – Sample outputs from executing the queries.  
- `README.md` – Documentation (this file).  

---

## 🔑 Queries and Examples

### 1. Find the teachers who teach Mathematics
```sql
SELECT first_name, last_name 
FROM Teachers 
JOIN Subjects ON Teachers.subject_id = Subjects.subject_id 
WHERE Subjects.subject_name = 'Mathematics';
```
**Output:** Alice Johnson  

---

### 2. List grades of all students for each subject
```sql
SELECT Students.first_name, Students.last_name, Subjects.subject_name, Grades.grade
FROM Grades
JOIN Students ON Grades.student_id = Students.student_id
JOIN Subjects ON Grades.subject_id = Subjects.subject_id
ORDER BY Students.student_id, Subjects.subject_id;
```

---

### 3. Find students with perfect attendance
```sql
SELECT DISTINCT Students.student_id, Students.first_name, Students.last_name
FROM Students
LEFT JOIN Attendance ON Students.student_id = Attendance.student_id
WHERE Attendance.status != 'Absent' OR Attendance.status IS NULL;
```

---

### 4. List classes and the teachers assigned
```sql
SELECT Classes.class_name, Teachers.first_name, Teachers.last_name
FROM Classes
JOIN Teachers ON Classes.teacher_id = Teachers.teacher_id;
```

---

### 5. Find students who received a grade "A"
```sql
SELECT Students.first_name, Students.last_name, Subjects.subject_name, Grades.grade
FROM Grades
JOIN Students ON Grades.student_id = Students.student_id
JOIN Subjects ON Grades.subject_id = Subjects.subject_id
WHERE Grades.grade = 'A';
```

---

### 6. Update a student's class
```sql
UPDATE Students 
SET class = 'Grade 10' 
WHERE student_id = 3;
```

---

### 7. Change a subject name
```sql
UPDATE Subjects 
SET subject_name = 'Physics' 
WHERE subject_id = 2;
```

---

### 8. Mark all students as present today
```sql
UPDATE Attendance 
SET status = 'Present' 
WHERE date = CURDATE();
```

---

### 9. Add a new column for teacher emails
```sql
ALTER TABLE Teachers 
ADD email VARCHAR(100);
```

---

### 10. Modify grade column to support values like "A+"
```sql
ALTER TABLE Grades 
MODIFY grade VARCHAR(2);
```

---

## 📌 Key Features
- Retrieve information about teachers, students, and classes.  
- Track student performance and attendance.  
- Perform schema modifications to adapt database structure.  
- Practical SQL for real-world **School Management Systems**.  

---

## 🚀 How to Use
1. Import your schema into **MySQL** or compatible RDBMS.  
2. Run the queries step by step in your SQL client (MySQL CLI, Workbench, etc.).  
3. Check results and modify as per your dataset.  

---

## 📄 License
This project is for learning and demonstration purposes.  
You may reuse or adapt the queries with attribution.

---
