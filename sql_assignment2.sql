CREATE TABLE student (
    student_id NUMBER,
    student_name VARCHAR2(50),
    marks NUMBER(3),
    fee_paid VARCHAR2(5)
);

-- Part 1: Pass / Fail Decision (if / else)
-- If the marks are 40 or above, display: “Student Passed”
-- Otherwise, display: “Student Failed”

SELECT
    student_id,
    student_name,
    marks,
    CASE
        WHEN marks >= 40 THEN 'Student Passed'
        ELSE 'Student Failed'
    END AS result
FROM student;


-- Part 2: Grade Assignment (else-if ladder)

SELECT
    student_id,
    student_name,
    marks,
    CASE
        WHEN marks >= 85 THEN 'A'
        WHEN marks BETWEEN 70 AND 84 THEN 'B'
        WHEN marks BETWEEN 50 AND 69 THEN 'C'
        ELSE 'D'
    END AS grade
FROM student;


-- Part 3: Certificate Eligibility (boolean + if)
-- Check and display certificate eligibility:
-- If the student passed AND fee is paid, display: “Eligible for Certificate”
-- Otherwise, display: “Not Eligible for Certificate”

SELECT
    student_id,
    student_name,
    marks,
    fee_paid,
    CASE
        WHEN marks >= 40 AND fee_paid = 'YES'
        THEN 'Eligible for Certificate'
        ELSE 'Not Eligible for Certificate'
    END AS certificate_status
FROM student;

-- Part 4: Course Allocation (switch)

SELECT
    student_id,
    student_name,
    marks,
    CASE
        WHEN marks >= 85 THEN 'Data Science'
        WHEN marks BETWEEN 70 AND 84 THEN 'Java Full Stack'
        WHEN marks BETWEEN 50 AND 69 THEN 'Web Development'
        WHEN marks < 50 THEN 'Basic Programming'
        ELSE 'Counseling'
    END AS allocated_course
FROM student;

-- Final Output

SELECT
    student_id,
    student_name,

    marks,

    CASE
        WHEN marks >= 40 THEN 'Pass'
        ELSE 'Fail'
    END AS result,

    CASE
        WHEN marks >= 85 THEN 'A'
        WHEN marks BETWEEN 70 AND 84 THEN 'B'
        WHEN marks BETWEEN 50 AND 69 THEN 'C'
        ELSE 'D'
    END AS grade,

    fee_paid,

    CASE
        WHEN marks >= 40 AND fee_paid = 'YES'
        THEN 'Eligible for Certificate'
        ELSE 'Not Eligible for Certificate'
    END AS certificate_status,

    CASE
        WHEN marks >= 85 THEN 'Data Science'
        WHEN marks BETWEEN 70 AND 84 THEN 'Java Full Stack'
        WHEN marks BETWEEN 50 AND 69 THEN 'Web Development'
        WHEN marks < 50 THEN 'Basic Programming'
        ELSE 'Counseling'
    END AS allocated_course

FROM student;


