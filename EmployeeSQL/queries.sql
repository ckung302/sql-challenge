-- #1
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary  
from employees e
join salaries s
on (e.emp_no = s.emp_no);

-- #2
select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';

-- #3
select e.first_name, e.last_name, d.dept_no, dep.dept_name, d.emp_no
from employees e
join dept_manager d
on (e.emp_no = d.emp_no)
join departments dep
on (d.dept_no = dep.dept_no);

-- #4
select dep.dept_name, e.emp_no, e.first_name, e.last_name
from departments dep
join dept_emp d
on (dep.dept_no = d.dept_no)
join employees e
on (d.emp_no = e.emp_no);

-- #5
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

-- #6
select e.first_name, e.last_name, e.emp_no, dep.dept_name
from employees e
join dept_emp d
on (e.emp_no = d.emp_no)
join departments dep
on (d.dept_no = dep.dept_no)
where dept_name = 'Sales';

-- #7
select e.first_name, e.last_name, e.emp_no, dep.dept_name
from employees e
join dept_emp d
on (e.emp_no = d.emp_no)
join departments dep
on (d.dept_no = dep.dept_no)
where dept_name = 'Development'
or dept_name = 'Sales';

-- #8
select last_name, count(last_name) as count
from employees
group by last_name
order by count desc;

