CREATE TABLE employees (
	emp_no INT Primary key,
	emp_title VARCHAR(20),
	birth_date VARCHAR(20),
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	sex VARCHAR(2),
	hire_date VARCHAR(20)
)

CREATE TABLE salaries (
	emp_no INT,
	Salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	)
	
CREATE TABLE Departments (
	dept_no VARCHAR(20) Primary key,
	dept_name VARCHAR(20)
	)
	
CREATE TABLE Department_Managers(
	dept_no VARCHAR(20),
	emp_no INT,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	)
	
Create Table Dept_emp(
	emp_no INT,
	dept_no VARCHAR(20),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
	)