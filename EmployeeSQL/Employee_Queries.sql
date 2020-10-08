SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM "employees"
INNER JOIN "salaries" ON employees.emp_no = salaries.emp_no;


SELECT last_name, first_name, hire_date 
FROM "employees"
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT dept_manager.dept_no, dept_manager.emp_no, departments.dept_name, employees.first_name, employees.last_name
FROM "dept_manager"
INNER JOIN "departments" ON departments.dept_no = dept_manager.dept_no
INNER JOIN "employees" ON dept_manager.emp_no = employees.emp_no;


SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM "employees"
INNER JOIN "dept_emp" ON employees.emp_no = dept_emp.emp_no
INNER JOIN "departments" ON departments.dept_no = dept_emp.dept_no;

SELECT first_name, last_name, sex
FROM "employees"
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM "employees"
INNER JOIN "dept_emp" ON employees.emp_no = dept_emp.emp_no
INNER JOIN "departments" ON departments.dept_no = dept_emp.dept_no
WHERE dept_name = 'Sales';

SELECT employees.last_name, employees.first_name, departments.dept_name
FROM "employees"
INNER JOIN "dept_emp" ON employees.emp_no = dept_emp.emp_no
INNER JOIN "departments" ON departments.dept_no = dept_emp.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';
where dept_name IN ('Sales', 'Development');

SELECT last_name, COUNT(emp_no) AS "frequency count"
FROM "employees"
GROUP BY last_name
ORDER BY "frequency count" DESC;

