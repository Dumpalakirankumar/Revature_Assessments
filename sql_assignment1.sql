-- 1. Display all employee records
SELECT * FROM employees;


-- 2. Display only employee ID, name, and department
SELECT emp_id, emp_name, department
FROM employees;

-- 3. Display employee name and salary
SELECT emp_name, salary
FROM employees;


-- 4. Employees with salary > 40,000
SELECT *FROM employees
WHERE salary > 40000;


-- 5. Employees with salary <= 35,000
SELECT *FROM employees
WHERE salary <= 35000;


-- 6. Employees with salary = 45,000
SELECT *FROM employees
WHERE salary = 45000;


-- 7. Employees who joined after 01-Jan-2022
SELECT *FROM employees
WHERE joining_date > DATE '2022-01-01';


-- 8. Employees who joined before 01-Jan-2021
SELECT *FROM employees
WHERE joining_date < DATE '2021-01-01';


-- 9. Salary between 35,000 and 50,000
SELECT *FROM employees
WHERE salary BETWEEN 35000 AND 50000;


-- 10. Salary NOT between 30,000 and 45,000
SELECT *FROM employees
WHERE salary NOT BETWEEN 30000 AND 45000;


-- 11. Joining date between 01-Jan-2021 and 31-Dec-2022
SELECT *FROM employees
WHERE joining_date BETWEEN DATE '2021-01-01' AND DATE '2022-12-31';


-- 12. Employees working in IT or HR
SELECT *FROM employees
WHERE department IN ('IT', 'HR');


-- 13. Employees working in Chennai, Bangalore, or Hyderabad
SELECT *FROM employees
WHERE location IN ('Chennai', 'Bangalore', 'Hyderabad');


-- 14. Employees with salary IN (32000, 38000, 40000)
SELECT *FROM employees
WHERE salary IN (32000, 38000, 40000);


-- 15. Employees NOT working in Mumbai
SELECT *FROM employees
WHERE location <> 'Mumbai';


-- 16. Department NOT in IT and HR
SELECT *FROM employees
WHERE department NOT IN ('IT', 'HR');


-- 17. Designation NOT in Developer and Tester
SELECT *FROM employees
WHERE designation NOT IN ('Developer', 'Tester');


-- 18. Employee name starts with 'A'
SELECT *FROM employees
WHERE emp_name LIKE 'A%';


-- 19. Employees with salary IS NULL
SELECT *FROM employees
WHERE salary IS NULL;


-- 20. Employees with email IS NULL
SELECT *FROM employees
WHERE email IS NULL;

-- 21. Employees with salary IS NOT NULL
SELECT *FROM employees
WHERE salary IS NOT NULL;


-- 22. Employees with email IS NOT NULL
SELECT *FROM employees
WHERE email IS NOT NULL;


-- 23. Employee name ends with 'i'
SELECT *FROM employees
WHERE emp_name LIKE '%i';


-- 24. Employee name contains 'vi'
SELECT *FROM employees
WHERE emp_name LIKE '%vi%';


-- 25. Email contains '@company.com'
SELECT *FROM employees
WHERE email LIKE '%@company.com%';


-- 26. Designation ends with 'Engineer'
SELECT *FROM employees
WHERE designation LIKE '%Engineer';


-- 27. Employees ordered by salary ascending
SELECT *FROM employees
ORDER BY salary ASC;


-- 28. Employees ordered by department ASC and salary DESC
SELECT *FROM employees
ORDER BY department ASC, salary DESC;


-- 29. Employees ordered by location ASC and name ASC
SELECT *FROM employees
ORDER BY location ASC, emp_name ASC;


-- 30. IT employees with salary > 45,000
SELECT *FROM employees
WHERE department = 'IT' AND salary > 45000;


-- 31. Employees working in HR or Sales
SELECT *FROM employees
WHERE department IN ('HR', 'Sales');


-- 32. Update salary to 50,000 where salary is NULL
UPDATE employees
SET salary = 50000 WHERE salary IS NULL;


-- 33. Increase salary by 5,000 for IT employees
UPDATE employees
SET salary = salary + 5000 WHERE department = 'IT';


-- 34. Employees having same name more than once
SELECT emp_name, COUNT(*) AS count
FROM employees
GROUP BY emp_name
HAVING COUNT(*) > 1;


-- 35. Employees having same salary
SELECT salary, COUNT(*) AS count
FROM employees
GROUP BY salary
HAVING COUNT(*) > 1;


-- 36. Employees in same department and same location
SELECT department, location, COUNT(*) AS count
FROM employees
GROUP BY department, location
HAVING COUNT(*) > 1;


-- 37. Update location to Hyderabad for HR employees
UPDATE employees
SET location = 'Hyderabad' WHERE department = 'HR';


-- 38. Employees NOT working in IT
SELECT *FROM employees
WHERE department <> 'IT';


-- 39. IT employees located in Chennai
SELECT *FROM employees
WHERE department = 'IT' AND location = 'Chennai';


-- 40. Order by salary DESC and joining date ASC
SELECT *FROM employees
ORDER BY salary DESC, joining_date ASC;


-- 41. Order by salary DESC
SELECT *FROM employees
ORDER BY salary DESC;


-- 42. Order by joining date ASC
SELECT *FROM employees
ORDER BY joining_date ASC;


-- 43. Order by employee name alphabetically
SELECT *FROM employees
ORDER BY emp_name ASC;