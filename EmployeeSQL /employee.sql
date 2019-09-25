SELECT e.first_name, e.last_name, e.gender, s.salary
FROM employees AS e
JOIN salaries AS s
ON (e.emp_no = s.emp_no);

SELECT e.first_name, e.last_name, e.gender, e.hire_date
FROM employees AS e
WHERE hire_date between '01/01/1986' and '12/31/1986';

SELECT d.dept_no, d.dept_name, m.emp_no, m.from_date, m.to_date, e.first_name, e.last_name
FROM departments AS d


JOIN dept_manager AS m ON (d.dept_no = m.dept_no)
JOIN employees AS e ON (m.emp_no = e.emp_no);

SELECT e.first_name, e.last_name
FROM employees AS e
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT d.dept_name, m.emp_no, e.first_name, e.last_name
FROM departments AS d
JOIN dept_emp AS m ON (d.dept_no = m.dept_no)
JOIN employees AS e ON (m.emp_no = e.emp_no)
WHERE dept_name = 'Sales';

SELECT d.dept_name, m.emp_no, e.first_name, e.last_name
FROM departments AS d
JOIN dept_emp AS m ON (d.dept_no = m.dept_no)
JOIN employees AS e ON (m.emp_no = e.emp_no)
WHERE dept_name = 'Sales' OR dept_name = 'Development';

Select last_name, COUNT(last_name) AS Occurences
FROM employees
GROUP BY last_name;

Select e.emp_no, e.first_name, e.last_name, e.gender
FROM employees AS e
WHERE e.emp_no = 499942;