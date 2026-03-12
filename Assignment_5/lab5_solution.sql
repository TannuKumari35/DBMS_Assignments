SELECT S.Student_ID, S.Name, E.Course_ID
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID;


SELECT S.Name, E.Semester
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID;


SELECT S.Name, E.Grade
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID;


SELECT C.Course_Name
FROM Course C
INNER JOIN Faculty F
ON C.Faculty_ID = F.Faculty_ID
WHERE F.Faculty_ID = '519';


SELECT F.Name, F.Designation, C.Course_Name
FROM Faculty F
INNER JOIN Course C
ON F.Faculty_ID = C.Faculty_ID;


SELECT C.Course_Name, C.Credit, F.Name
FROM Course C
INNER JOIN Faculty F
ON C.Faculty_ID = F.Faculty_ID;


SELECT S.Name, C.Course_Name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID
INNER JOIN Course C
ON E.Course_ID = C.Course_ID;


SELECT S.Name, C.Course_Name, E.Semester
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID
INNER JOIN Course C
ON E.Course_ID = C.Course_ID;


SELECT S.Name, C.Course_Name, E.Grade
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID
INNER JOIN Course C
ON E.Course_ID = C.Course_ID
WHERE E.Semester = '5';


SELECT C.Course_Name
FROM Course C
INNER JOIN Enrollment E
ON C.Course_ID = E.Course_ID
INNER JOIN Student S
ON E.Student_ID = S.Student_ID
WHERE S.Student_ID = '23157128054';

SELECT S.Name, S.Dept_ID, C.Course_Name
FROM Student S
INNER JOIN Course C
ON S.Dept_ID = C.Dept_ID;

SELECT D.Dept_ID, C.Course_Name
FROM Department D
INNER JOIN Course C
ON D.Dept_ID = C.Dept_ID;

SELECT F.Name, D.Dept_Name
FROM Faculty F
INNER JOIN Department D
ON F.Dept_ID = D.Dept_ID;


SELECT S.Name, C.Course_Name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID
INNER JOIN Course C
ON E.Course_ID = C.Course_ID
WHERE S.Dept_ID = '157';


SELECT S.Name, C.Course_Name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID
INNER JOIN Course C
ON E.Course_ID = C.Course_ID
ORDER BY S.Name ASC;


SELECT F.Name, C.Course_Name
FROM Faculty F
INNER JOIN Course C
ON F.Faculty_ID = C.Faculty_ID
ORDER BY C.Credit DESC;


SELECT C.Course_Name, COUNT(E.Student_ID) AS TotalStudents
FROM Course C
INNER JOIN Enrollment E
ON C.Course_ID = E.Course_ID
GROUP BY C.Course_Name;


SELECT F.Name, COUNT(C.Course_ID) AS TotalCourses
FROM Faculty F
INNER JOIN Course C
ON F.Faculty_ID = C.Faculty_ID
GROUP BY F.Name;


SELECT Dept_ID, COUNT(Student_ID) AS TotalStudents
FROM Student
GROUP BY Dept_ID;


SELECT C.Course_Name, MAX(E.Grade) AS MaxGrade
FROM Course C
INNER JOIN Enrollment E
ON C.Course_ID = E.Course_ID
GROUP BY C.Course_Name;



