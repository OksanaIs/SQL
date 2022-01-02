-- 1. Show all employees whose salaries are in the database, along with salariesлатами
select employee_name, monthly_salary from employee_salary 
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id;
	
-- 2. Show all employees with a salary of less than 2000
select employee_name, monthly_salary from employee_salary
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает)
select monthly_salary, employee_name from employee_salary
join salary on employee_salary.salary_id = salary.id
left join employees on employee_salary.employee_id = employees.id
where employee_name is null;

-- 4. Show all positions with salaries, but no employee has been assigned to them. (there is a salary, but it is not clear who gets it)
select monthly_salary, employee_name from employee_salary
join salary on employee_salary.salary_id = salary.id
left join employees on employee_salary.employee_id = employees.id
where employee_name is null and monthly_salary < 2000;

-- 5. Find all employees who have not received a salary
select employee_name, monthly_salary from employees
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.salary_id = salary.id
where monthly_salary is null;

-- 6. Show all employees with their job titles
select employee_name, role_name from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id;

-- 7. Show names and titles of Java developers only
select employee_name, role_name from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Java developer%';

-- 8. Show names and titles of Python developers only
select employee_name, role_name from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Python%';

-- 9. Show names and titles of all QA engineers
select employee_name, role_name from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%QA engineer%';

-- 10. Show names and titles of all Manual QA engineers
select employee_name, role_name from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Manual QA%';

-- 11. Show names and title of QA Automators
select employee_name, role_name from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Automation QA%';

-- 12. Show names and salaries of Junior Professionals
select employee_name, monthly_salary, role_name from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Junior%';

-- 13. Show names and salaries of Middle Professionals
select employee_name, monthly_salary, role_name from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Middle%';

-- 14. Show names and salaries of Senior Professionals
select employee_name, monthly_salary, role_name from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Senior%';

-- 15. Show names and salaries of Java developers
select employee_name, monthly_salary, role_name from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Java developer%';

-- 16. Show names and salaries of Python developers
select employee_name, monthly_salary, role_name from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Python developer%';

-- 17. Show names and salaries of Junior Python developer
select employee_name, monthly_salary, role_name from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Junior Python developer%';

-- 18. Show names and salaries of Middle JavaScript developer
select employee_name, monthly_salary, role_name from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Middle JavaScript developer%';

-- 19. Show names and salaries of Senior Java developer
select employee_name, monthly_salary, role_name from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Senior Java developer%';

-- 20. Show names and salaries of Junior %QA engineer
select employee_name, monthly_salary, role_name from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like 'Junior %QA engineer%';

-- 21. Show the average salary of all Junior specialists
select avg(monthly_salary) from employees
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.salary_id = salary.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Junior%';

-- 22. Show the sum JS developers salaries
select sum(monthly_salary) from employees
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.salary_id = salary.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%JavaScript developer%';

-- 23. Show minimum salary for QA engineers
select min(monthly_salary) from employees
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.salary_id = salary.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%QA engineer%';

-- 24. Show maximum salary for QA engineers
select max(monthly_salary) from employees
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.salary_id = salary.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%QA engineer%';

-- 25. Show the number of QA engineers
select role_name, count(employee_name) from employees
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.salary_id = salary.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%QA engineer%'
group by role_name;

-- 26. Show the number of Middle specialists
select role_name, count(employee_name) from employees
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.salary_id = salary.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Middle%'
group by role_name;

-- 27. Show number of Developers
select role_name, count(employee_name) from employees
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.salary_id = salary.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%developer%'
group by role_name;

-- 28. Show developer salary fund (amount)
select role_name, sum(monthly_salary) from employees
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on employee_salary.salary_id = salary.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%developer%'
group by role_name;

-- 29. Show names, titles and salaries of all specialists in ascending order
select employee_name, monthly_salary, role_name from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
order by monthly_salary asc;

-- 30. Show the names, titles and salaries of all specialists in ascending order for specialists whose salaries are from 1700 to 2300
select employee_name, monthly_salary, role_name from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where monthly_salary between 1700 and 2300
order by monthly_salary asc;

-- 31. Show names, titles and salaries of all specialists in ascending order for specialists whose salaries are less than 2300
select employee_name, monthly_salary, role_name from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where monthly_salary < 2300
order by monthly_salary asc;

-- 32. Display the names, titles and salaries of all specialists in ascending order for specialists whose salaries are equal to 1100, 1500, 2000
select employee_name, monthly_salary, role_name from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary asc;
