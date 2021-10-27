create table departments(
	dept_no varchar(255) not null primary key,
	dept_name varchar(255) not null
);

select * from departments;

create table employees(
	emp_no int primary key,
	emp_title varchar(255) not null,
	foreign key (emp_title) references titles (title_id),
	birth_date varchar(255) not null,
	first_name varchar(255) not null,
	last_name varchar(255) not null,
	sex varchar(255) not null,
	hire_date varchar(255) not null	
);

select * from employees;

create table titles(
	title_id varchar(255) not null primary key,
	title varchar(255)
);

select * from titles;

create table dept_emp(
	emp_no int,
	foreign key (emp_no) references employees (emp_no),
	dept_no varchar(255) not null,
	foreign key (dept_no) references departments (dept_no)
);

select * from dempt_emp;

create table dept_manager(
	dept_no varchar(255) not null,
	foreign key (dept_no) references departments (dept_no),
	emp_no int,
	foreign key (emp_no) references employees (emp_no)
);

select * from dept_manager;

create table salaries(
	emp_no int,
	foreign key (emp_no) references employees (emp_no),
	salary int
);

select * from salaries;