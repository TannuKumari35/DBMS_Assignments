SELECT Name
FROM Student
WHERE Dept_ID = (
    SELECT Dept_ID
    FROM Student
    WHERE Student_ID = '23157128054'
);

SELECT Name
FROM Student
WHERE Gender = (
    SELECT Gender
    FROM Student
    WHERE Student_ID = '23105128004'
);

SELECT Name
FROM Student
WHERE Dept_ID = (
    SELECT Dept_ID
    FROM Student
    WHERE Student_ID = '23110128007'
);

SELECT Name FROM Student
WHERE Dept_ID IN (
    SELECT Dept_ID
    FROM Student
    WHERE Gender = 'Female'
);

SELECT Name
FROM Student
WHERE Student_ID IN (
    SELECT Student_ID
    FROM Enrollment
);

SELECT Name
FROM Student
WHERE Student_ID IN (
    SELECT E.Student_ID
    FROM Enrollment E
    WHERE E.Course_ID IN (
        SELECT Course_ID
        FROM Course
    )
);

SELECT Course_Name
FROM Course
WHERE Credit > (
    SELECT AVG(Credit)
    FROM Course
);

SELECT Name
FROM Student
WHERE Student_ID > (
    SELECT AVG(Student_ID)
    FROM Student
);

SELECT Dept_ID
FROM Student
GROUP BY Dept_ID
HAVING COUNT(*) > (
    SELECT AVG(count)
    FROM (
        SELECT COUNT(*) AS cnt
        FROM Student
        GROUP BY Dept_ID
    ) AS temp
);

SELECT Name
FROM Student
WHERE EXISTS (
    SELECT *
    FROM Enrollment
    WHERE Student.Student_ID = Enrollment.Student_ID
);

SELECT Name
FROM Student
WHERE Dept_ID IS NOT NULL;

SELECT Course_Name
FROM Course
WHERE Course_ID IN (
    SELECT Course_ID
    FROM Enrollment
);

SELECT Course_Name
FROM Course
WHERE Credit = (
    SELECT MAX(Credit)
    FROM Course
);

SELECT Name
FROM Student
WHERE Student_ID IN (
    SELECT Student_ID
    FROM Enrollment
    GROUP BY Student_ID
    HAVING COUNT(*) > 1
);

SELECT Dept_ID
FROM Student
GROUP BY Dept_ID
HAVING COUNT(*) = (
    SELECT MAX(cnt)
    FROM (
        SELECT COUNT(*) AS cnt
        FROM Student
        GROUP BY Dept_ID
    ) AS temp
);

SELECT Name
FROM Student
WHERE Student_ID IN (
    SELECT Student_ID
    FROM Enrollment
    WHERE Course_ID IN (
        SELECT Course_ID
        FROM Enrollment
        WHERE Student_ID = '23157128054'
    )
);

SELECT Name
FROM Student
WHERE Student_ID NOT IN (
    SELECT Student_ID
    FROM Enrollment
);

SELECT Course_Name
FROM Course
WHERE Course_ID NOT IN (
    SELECT Course_ID
    FROM Enrollment
);





