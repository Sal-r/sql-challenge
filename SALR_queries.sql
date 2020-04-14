-- QUESTION 1 --
SELECT e.emp_no,
e.first_name,
	e.last_name,
	e.gender,
	s.salary
FROM employees e, salaries s
WHERE e.emp_no = s.emp_no;

-- QUESTION 2 --
SELECT emp_no, hire_date, last_name, first_name
FROM employees
WHERE 1986 = EXTRACT(YEAR FROM hire_date);

-- Cousin told me how to use shorthand? or whatever :) --
-- QUESTION 3 --
SELECT dm.dept_no,
	d.dept_name,
	dm.emp_no,
	e.last_name,
	e.first_name,
	dm.from_date,
	dm.to_date
FROM employees e, dept_manager dm, departments d
WHERE dm.dept_no = d.dept_no AND dm.emp_no = e.emp_no;

-- QUESTION 4 --
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees e, dept_emp de, departments d
WHERE e.emp_no = de.emp_no AND d.dept_no = de.dept_no;

-- QUESTION 5 --
SELECT e.first_name,
	e.last_name
FROM employees e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%'

-- QUESTION 6 -- Same as Question 4 but with an extra where? --
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees e, dept_emp de, departments d
WHERE e.emp_no = de.emp_no AND d.dept_no = de.dept_no AND d.dept_name = 'Sales';

-- QUESTION 7 --
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees e, dept_emp de, departments d
WHERE e.emp_no = de.emp_no AND d.dept_no = de.dept_no AND d.dept_name IN ('Sales', 'Development');

-- QUESTION 8 --
SELECT COUNT(e.last_name),
	e.last_name
FROM employees e
GROUP BY e.last_name
ORDER BY count(e.last_name) DESC;