-- The employees table
-- Create employees table
-- id: serial, primary key,
-- employee_name: varchar (50), not null

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

select * from employees;

-- Fill employees table with 70 rows

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
	
-- Salary table
-- Create salary table
-- id: serial primary key,
-- monthly_salary: int, not null

create table salary(
	id serial primary key,
	monthly_salary int not null
);

select * from salary;

-- Fill the salary table with 16 rows

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

-- The employee_salary table
-- Create employee_salary table
-- id: serial primary key,
-- employee_id: int, not null, unique
-- salary_id: int, not null
	
create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

select * from employee_salary;

-- Fill employee_salary table with 40 rows
-- In 10 lines out of 40 insert non-existent employee_id

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

-- The roles table
-- Create the roles table
-- id: serial primary key,
-- role_name: int, not null, unique
	
create table roles (
	id serial primary key,
	role_name int not null unique
);

select * from roles;

-- Change column type role_name from int to varchar (30)

alter table roles
alter column role_name type varchar(30);

-- Fill the Roles table with 20 lines

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
	
-- The roles_employee table
-- Create roles_employee table
-- id: serial primary key,
-- employee_id: int, not null, unique (foreign key to employees table, id field)
-- role_id: int, not null (foreign key to roles table, id field)
	
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

-- Fill the roles_employee table with 40 rows

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
