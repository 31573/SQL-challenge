SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
salaries.emp_no=employees.emp_no;


SELECT employees.first_name, employees.last_name, employees.hire_date, EXTRACT(YEAR FROM hire_date)
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;


SELECT dept_manager.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name 
FROM employees
JOIN dept_manager ON
dept_manager.emp_no=employees.emp_no
JOIN departments ON
departments.dept_no=dept_manager.dept_no;


SELECT employees.emp_no, employees.last_name, employees.first_name, dept_emp.dept_no, departments.dept_name
FROM employees
JOIN dept_emp ON
employees.emp_no=dept_emp.emp_no
JOIN departments ON
departments.dept_no=dept_emp.dept_no;



SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';



SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON 
employees.emp_no =dept_emp.emp_no
JOIN departments ON
departments.dept_no=dept_emp.dept_no
WHERE departments.dept_name = 'Sales';



SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON 
employees.emp_no =dept_emp.emp_no
JOIN departments ON
departments.dept_no=dept_emp.dept_no
WHERE departments.dept_name = 'Sales'
OR departments.dept_name = 'Development';


SELECT last_name, count(last_name)
FROM employees
GROUP BY last_name
ORDER BY count(last_name) DESC;






