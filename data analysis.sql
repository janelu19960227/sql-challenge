--1. List the employee number, last name, first name, sex, and salary of each employee
SELECT E.emp_no, E.last_name, E.first_name, E.sex, S.salary
FROM Employees E
JOIN Salaries S ON E.emp_no = S.emp_no;

--2. List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM Employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

--3. List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT D.dept_no, D.dept_name, M.emp_no, E.last_name, E.first_name
FROM Dept_manager M
JOIN Employees E ON M.emp_no = E.emp_no
JOIN Departments D ON M.dept_no = D.dept_no;

--4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT D.dept_no, E.emp_no, E.last_name, E.first_name, D.dept_name
FROM Dept_emp DE
JOIN Employees E ON DE.emp_no = E.emp_no
JOIN Departments D ON DE.dept_no = D.dept_no;

--5. List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--6. List each employee in the Sales department, including their employee number, last name, and first name
SELECT E.emp_no, E.last_name, E.first_name
FROM Employees E
JOIN Dept_emp DE ON E.emp_no = DE.emp_no
JOIN Departments D ON DE.dept_no = D.dept_no
WHERE D.dept_name = 'Sales';

--7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT E.emp_no, E.last_name, E.first_name, D.dept_name
FROM Employees E
JOIN Dept_emp DE ON E.emp_no = DE.emp_no
JOIN Departments D ON DE.dept_no = D.dept_no
WHERE D.dept_name IN ('Sales', 'Development');

--8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name, COUNT(*) AS frequency
FROM Employees
GROUP BY last_name
ORDER BY frequency DESC;


