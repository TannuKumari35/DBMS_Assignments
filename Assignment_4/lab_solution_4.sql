                              PART A:

-- Display only StudentID, Name, and DepartmentID from the Student table, renaming
-- them as Roll_No, Student_Name, and Dept_ID.
SELECT Student_ID AS Roll_No,
    Name AS Student_Name,
    DOB AS Date_Of_Birth,
    Gender AS Gender,
    Contact_No AS Phone_No,
    Dept_ID AS Department_ID FROM Student;


--Display FacultyID, Name, Designation, and Email from the Faculty table using
-- readable column names.. 
SELECT Faculty_ID AS Professor_ID,
     Name AS Faculty_Name,
     Designation AS Position,
     Email AS Email_Address,
     Dept_ID AS Faculty_Dept FROM Faculty;


-- Display all columns from the Course table with renamed column headers.
SELECT Course_ID AS CourseID,
   Course_Name AS CourseName,
   Credit AS Course_Credit,
   Dept_ID AS DepartmentID FROM Course;


--  Display all columns from the Enrollment table with meaningful aliases.
SELECT Enrollment_ID AS Enroll_ID,
   Semester AS Semester_No,
   Student_ID AS Roll_No,
   Course_ID AS CourseID,
   Grade AS Final_Grade FROM Enrollment;

      
                    PART B: 
--  Display all students whose DepartmentID is '110'.                
SELECT*FROM Student WHERE Dept_ID='110';


-- Display all students whose Gender is 'Female'.
SELECT*FROM Student WHERE Gender='F';


-- Display faculty members whose Designation is 'Assistant Professor'
SELECT*FROM Faculty WHERE Designation='Assistant Professor';


-- Display faculty members whose DepartmentID is '102'.
SELECT*FROM Faculty WHERE Dept_ID=102;


--  Display courses whose Credits are greater than or equal to 4.
SELECT*FROM Course WHERE Credit>=4;


-- Display students born after 2003-01-01 using the DOB column.
SELECT*FROM Student WHERE dob>DATE'2003-01-01';


-- Display enrollment records for students enrolled in Semester 4.
SELECT*FROM Enrollment WHERE Semester='4';


--  Display student records sorted by DOB in ascending order.
SELECT*FROM Student ORDER BY Name ASC;


-- Display student records sorted by DOB in descending order.
SELECT*FROM Student ORDER BY Name DESC;


-- Display faculty records sorted by Designation in ascending order.
SELECT*FROM Faculty ORDER BY Designation ASC;


-- Display faculty records sorted by Designation in descending order.
SELECT*FROM Faculty ORDER BY Designation DESC;


-- Display courses sorted by Credits in descending order.
SELECT*FROM Course ORDER BY Credit DESC;


--  Display only the first 3 student records.
SELECT*FROM Student WHERE ROWNUM<=3;


-- Display only the first 5 course records.
SELECT*FROM Course WHERE ROWNUM<=5;


-- Display student Name along with their calculated Age using DOB.
SELECT Name,FLOOR(MONTHS_BETWEEN(SYSDATE,DOB)/12)AS Age FROM Student;


-- Display course CourseName along with Credits + 1 as Updated_Credits.
SELECT Course_Name,Credit+1 AS Updated_Credits FROM Course;


-- Display enrollment details with column Grade shown as Final_Grade.
SELECT Enrollment_ID,Student_ID,Course_ID,Semester, Grade AS Final_Grade FROM Enrollment;


-- Display student Name along with year of birth extracted from DOB.
SELECT Name,EXTRACT(YEAR FROM DOB)AS Birth_year FROM Student;


-- Display faculty Name along with email domain extracted from Email.
SELECT Name,SUBSTR(Email,INSTR(Email,'@')+1)AS Email_Domain FROM Faculty;



