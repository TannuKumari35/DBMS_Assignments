SELECT COUNT(*)AS Total_Students FROM Student;

SELECT COUNT(*)AS Total_Faculty FROM Faculty;

SELECT COUNT(*)AS Total_Courses FROM Course;

SELECT MAX(Credit) AS Max_Credits FROM Course;

SELECT MIN(Credit) AS Max_Credits FROM Course;

SELECT Dept_ID ,COUNT(*)AS Number_of_Students FROM Student GROUP BY Dept_ID;

SELECT Dept_ID ,COUNT(*)AS Number_of_Faculty FROM Faculty GROUP BY Dept_ID;

SELECT Dept_ID ,COUNT(*)AS Number_of_Courses FROM Course GROUP BY Dept_ID;

SELECT Semester, COUNT(*) AS Number_of_Enrollment FROM Enrollment GROUP BY Semester;

SELECT Grade ,COUNT(*) AS Number_of_Students FROM Enrollment GROUP BY Grade;

SELECT Dept_ID,COUNT(*) AS Number_of_Students FROM Student GROUP BY Dept_ID HAVING COUNT(*)>3;

SELECT Semester, COUNT(*) AS Number_of_Enrollment FROM Enrollment GROUP BY Semester HAVING COUNT(*)>2;

SELECT Grade ,COUNT(*) AS Number_of_Students FROM Enrollment GROUP BY Grade HAVING COUNT(*)>1;

SELECT Dept_ID ,COUNT(*)AS Number_of_Courses FROM Course GROUP BY Dept_ID HAVING COUNT(*)>1;

SELECT Course_ID,COUNT(Student_ID) AS Enrolled_Students FROM Enrollment GROUP BY Course_ID;

SELECT C.Course_Name,COUNT(E.Student_ID)AS Number_of_Students FROM Course C JOIN Enrollment E ON C.Course_ID=E.Course_ID GROUP BY C.Course_Name;

SELECT F.Faculty_Name, COUNT(C.Course_ID) AS Number_Of_Courses
FROM Faculty F
JOIN Course C ON F.Faculty_ID = C.Faculty_ID
GROUP BY F.Faculty_Name;

SELECT C.Course_Name, MAX(E.Grade) AS MaxGrade
FROM Course C
JOIN Enrollment E ON C.Course_ID = E.Course_ID
GROUP BY C.Course_Name;


SELECT Dept_ID, COUNT(*) AS Total_Courses
FROM Course
GROUP BY Dept_ID;

SELECT Semester, COUNT(Student_ID) AS Total_Students
FROM Enrollment
GROUP BY Semester;

SELECT C.Course_Name, COUNT(E.Student_ID) AS Number_Of_Students
FROM Course C
JOIN Enrollment E ON C.Course_ID = E.Course_ID
GROUP BY C.Course_Name
HAVING COUNT(E.Student_ID) > 2;

