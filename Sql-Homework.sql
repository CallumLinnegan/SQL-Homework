-- Question 1 --
Select Employees.emp_no,Employees.first_name,Employees.last_name,Employees.sex,Salaries.Salary
from Employees
INNER JOIN Salaries ON Employees.emp_no = Salaries.emp_no


-- Question 2 --
select 
	employees.first_name,
	employees.last_name,
	employees.hire_date
from employees
where employees.hire_date = '1986'
-- Change strings to dates --
select TO_DATE(employees.hire_date,'MM/DD/YYYY')
from employees;
-- ignore --
select extract('1986' from employees.hire_date)
from employees;


-- Question 3 --
Select 
	Departments.Dept_no,
	Departments.Dept_name,
	Employees.emp_no, 
	Employees.last_name, 
	Employees.first_name
from ((Department_Managers
INNER JOIN Employees ON Department_Managers.emp_no = Employees.emp_no)
INNER JOIN Departments ON Department_Managers.dept_no = Departments.dept_no)



-- Question 4 --
Select 
	Employees.emp_no,
	Employees.last_name,
	Employees.first_name,
	Departments.Dept_name
from dept_emp
INNER JOIN Departments ON dept_emp.dept_no = Departments.dept_no
INNER JOIN Employees ON dept_emp.emp_no = Employees.emp_no


-- Question 5 --
Select
	employees.first_name,
	employees.last_name,
	employees.sex
from employees
where (Employees.first_name = 'Hercules')
AND (Employees.last_name LIKE 'B%')


-- Question 6 --
select 
	Employees.emp_no,
	Employees.last_name,
	Employees.first_name,
	Departments.Dept_name
from ((Dept_emp
INNER JOIN Departments ON dept_emp.dept_no = Departments.dept_no)
INNER JOIN Employees ON dept_emp.emp_no = Employees.emp_no)
where Dept_emp.dept_no = 'd007';


-- Question 7 --
select 
	Employees.emp_no,
	Employees.last_name,
	Employees.first_name,
	Departments.Dept_name
from ((Dept_emp
INNER JOIN Departments ON dept_emp.dept_no = Departments.dept_no)
INNER JOIN Employees ON dept_emp.emp_no = Employees.emp_no)
where (Dept_emp.dept_no = 'd007')
or (Dept_emp.dept_no = 'd005');


-- Question 8 --
SELECT last_name, count(last_name) as "last name count"
from employees
GROUP BY last_name
ORDER BY "last name count" DESC;
