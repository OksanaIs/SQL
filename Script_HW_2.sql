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
values  (1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5),
		(6, 6),
		(7, 7),
		(8, 8),
		(9, 9),
		(10, 10),
		(11, 11),
		(12, 12),
		(13, 13),
		(14, 14),
		(15, 15),
		(16, 16),
		(17, 17),
		(18, 18),
		(19, 19),
		(20, 20),
		(21, 21),
		(22, 22),
		(23, 23),
		(24, 24),
		(25, 25),
		(26, 26),
		(27, 27),
		(28, 28),
		(29, 29),
		(50, 30),
		(51, 31),
		(52, 32),
		(53, 33),
		(54, 34),
		(55, 35),
		(56, 36),
		(57, 37),
		(58, 38),
		(59, 39),
		(60, 40);

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
		(6, 2),
		(7, 6),
		(8, 7),
		(9, 8),
		(10, 3),
		(11, 9),
		(12, 10),
		(13, 11),
		(14, 4),
		(15, 12),
		(16, 13),
		(17, 14),
		(18, 5),
		(19, 17),
		(20, 15),
		(21, 6),
		(22, 8),
		(23, 7),
		(24, 18),
		(25, 16),
		(26, 19),
		(27, 15),
		(28, 16),
		(29, 9),
		(30, 17),
		(31, 18),
		(32, 14),
		(33, 19),
		(34, 20),
		(35, 10),
		(36, 1),
		(37, 2),
		(38, 13),
		(39, 11),
		(40, 12);
