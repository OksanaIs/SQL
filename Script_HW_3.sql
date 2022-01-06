-- Таблица employees
-- Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

select * from employees;

---- Наполнить таблицу employee 70 строками
insert into employees(employee_name)
values  ('Allen'),
		('Anderson'),
		('Brown'),
		('Clark'),
		('Davis'),
		('Garcia'),
		('Hall'),
		('Harris'),
		('Hernandez'),
		('Jackson'),
		('Johnson'),
		('King'),
		('Lee'),
		('Lewis'),
		('Martin'),
		('Martinez'),
		('Miller'),
		('Moore'),
		('Robinson'),
		('Rodrigues'),
		('Taylor'),
		('Thomas'),
		('Thompson'),
		('Walker'),
		('White'),
		('Wilson'),
		('Young'),
		('Beverly'),
		('Collins'),
		('Daniels'),
		('Evans'),
		('Ford'),
		('Gilmore'),
		('Harris'),
		('Holmes'),
		('Labert'),
		('Moore'),
		('Newman'),
		('Riley'),
		('Stephenson'),
		('Wallace'),
		('Washington'),
		('Collins'),
		('Daniels'),
		('Evans'),
		('Ford'),
		('Gilmore'),
		('Holmes'),
		('Labert'),
		('Newman'),
		('Riley'),
		('Stephenson'),
		('Moore'),
		('Beverly'),
		('Washington'),
		('Wallace'),
		('Harris'),
		('Johnson'),
		('Brown'),
		('Walker'),
		('Hall'),
		('White'),
		('Wilson'),
		('Thompson'),
		('Moore'),
		('Taylor'),
		('Anderson'),
		('Thomas'),
		('Jackson'),
		('Holmes');
	
-- Таблица salary
-- Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary(
	id serial primary key,
	monthly_salary int not null
);

select * from salary;

-- Наполнить таблицу salary 16 строками

insert into salary(monthly_salary)
values  (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);

-- Таблица employee_salary
-- Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
	
create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

select * from employee_salary;

-- Наполнить таблицу employee_salary 40 строками
-- В 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary (employee_id, salary_id)
values  (1, 14),
		(2, 1),
		(3, 15),
		(4, 16),
		(5, 1),
		(6, 2),
		(7, 3),
		(8, 2),
		(9, 16),
		(10, 5),
		(11, 16),
		(12, 4),
		(13, 3),
		(14, 13),
		(15, 14),
		(16, 13),
		(17, 12),
		(18, 6),
		(19, 12),
		(20, 4),
		(21, 11),
		(22, 11),
		(23, 7),
		(24, 10),
		(25, 5),
		(26, 10),
		(27, 9),
		(28, 8),
		(29, 1),
		(30, 2),
		(81, 6),
		(82, 3),
		(83, 4),
		(84, 5),
		(85, 6),
		(86, 7),
		(87, 8),
		(88, 9),
		(89, 10),
		(90, 8);

-- Таблица roles
-- Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
	
create table roles (
	id serial primary key,
	role_name int not null unique
);

select * from roles;

-- Поменять тип столба role_name с int на varchar(30)
alter table roles
alter column role_name type varchar(30);

-- Наполнить таблицу roles 20 строками
insert into roles (role_name)
values  ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
	
-- Таблица roles_employee
-- Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
	
create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

select * from roles_employee;

-- Наполнить таблицу roles_employee 40 строками

insert into roles_employee (employee_id, role_id)
values  (1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5),
		(10, 2),
		(9, 6),
		(8, 7),
		(7, 8),
		(6, 3),
		(11, 9),
		(12, 10),
		(13, 11),
		(14, 4),
		(15, 12),
		(20, 13),
		(19, 14),
		(18, 5),
		(17, 17),
		(16, 15),
		(21, 6),
		(22, 8),
		(23, 7),
		(24, 18),
		(25, 16),
		(30, 19),
		(29, 15),
		(28, 16),
		(27, 9),
		(26, 17),
		(31, 18),
		(32, 14),
		(33, 19),
		(34, 20),
		(35, 10),
		(40, 1),
		(39, 2),
		(38, 13),
		(37, 11),
		(36, 12);

-- 1. Show all employees whose salaries are in the database, along with salariesлатами
select employee_name, monthly_salary from employee_salary 
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id;
	
-- 2. Show all employees with a salary of less than 2000
select employee_name, monthly_salary from employee_salary
join employees on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2000;

-- 3. Show all salary positions, but the employee is not assigned to them (there is a salary, but it is not clear who gets it)
select monthly_salary, employee_name from salary 
left join employee_salary on employee_salary.salary_id = salary.id
left join employees on employee_salary.employee_id = employees.id
where employee_salary.employee_id is null; 

-- 4. Show all salary positions less than 2000 but no employee assigned to them (there is a salary, but it is not clear who gets it)
select monthly_salary, employee_name from salary 
left join employee_salary on salary_id = salary.id
left join employees on employee_id = employees.id
where employee_salary.employee_id is null and monthly_salary < 2000;

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

-- 12. Show names and salaries of Junior specialists
select employee_name, monthly_salary, role_name from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Junior%';

-- 13. Show names and salaries of Middle specialists
select employee_name, monthly_salary, role_name from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Middle%';

-- 14. Show names and salaries of Senior specialists
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
select count(employees.id) from employees
left join roles_employee on roles_employee.employee_id = employees.id 
left join roles on roles.id = roles_employee.role_id
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on salary.id = employee_salary.salary_id 
where role_name like '%QA engineer%';

-- 26. Show the number of Middle specialists
select count(employees.id) from employees
left join roles_employee on roles_employee.employee_id = employees.id 
left join roles on roles.id = roles_employee.role_id
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on salary.id = employee_salary.salary_id
where role_name like '%Middle%';

-- 27. Show number of Developers
select count(employees.id) from employees
left join roles_employee on roles_employee.employee_id = employees.id 
left join roles on roles.id = roles_employee.role_id
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on salary.id = employee_salary.salary_id
where role_name like '%developer%'

-- 28. Show developer salary fund (amount)
select sum(monthly_salary) from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id
join roles_employee on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%developer%';

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