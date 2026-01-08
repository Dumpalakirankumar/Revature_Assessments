-- 1. List all employees with their department name and location
SELECT e.emp_name,
       d.dept_name,
       d.location
FROM emp e
JOIN dept d
ON e.dept_id = d.dept_id;

 -- 2. List employees who are assigned to a project
 SELECT e.emp_name,
       p.project_name,
       ep.role_name
FROM emp e
JOIN emp_project ep
ON e.emp_id = ep.emp_id
JOIN project p
ON ep.project_id = p.project_id;

-- 3. Show all departments and employee names if present
SELECT d.dept_name,
       e.emp_name
FROM dept d
LEFT JOIN emp e
ON d.dept_id = e.dept_id;

-- 4. Show all projects and assigned employee names if present
SELECT p.project_name,
       e.emp_name
FROM project p
LEFT JOIN emp_project ep
ON p.project_id = ep.project_id
LEFT JOIN emp e
ON ep.emp_id = e.emp_id;

-- 5. RIGHT OUTER JOIN example
SELECT d.dept_name,
       e.emp_name
FROM emp e
RIGHT JOIN dept d
ON e.dept_id = d.dept_id;

-- 6. Show all employees, including those without a department
SELECT e.emp_name,
       d.dept_name,
       d.location
FROM emp e
LEFT JOIN dept d
ON e.dept_id = d.dept_id;

-- 7. Show all departments and all employees
SELECT e.emp_name,
       d.dept_name
FROM emp e
FULL OUTER JOIN dept d
ON e.dept_id = d.dept_id;

-- 8. Planning Matrix
SELECT d.dept_name,
       s.grade
FROM dept d
CROSS JOIN sal_grade s;

-- 9. Show employee name and their manager name
SELECT e.emp_name AS employee_name,
       m.emp_name AS manager_name
FROM emp e
LEFT JOIN emp m
ON e.manager_id = m.emp_id;

-- 10. Join emp and dept using USING (dept_id)
SELECT emp_name,
       dept_name,
       location
FROM emp
JOIN dept
USING (dept_id);

-- 11. NON-EQUI JOIN (Salary Grade Assignment)
SELECT e.emp_name,
       e.salary,
       s.grade
FROM emp e
JOIN sal_grade s
ON e.salary BETWEEN s.min_sal AND s.max_sal;


