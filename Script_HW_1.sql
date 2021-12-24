-- Display all fields and all lines
select * from students;

-- Display only the ID of users
select id from students;

-- Display only username
select name from students;

-- Display only email users
select email from students;

-- Display the name and email of users
select name, email from students;

-- Display id, name, email, and creation date of users
select name, email, created_on from students;

-- Display users where the password is 12333
select * from students
where password = '12333';

-- Display users who were created 2021-03-26 00:00:00
select * from students
where created_on = '2021-03-26 00:00:00';

-- Display users where the word Anna is in the name
select * from students
where name like '%Anna%';

-- Display users where there are 8 in the name at the end
select * from students
where name like '%8';

-- Display users where there is "a" letter in the name in
select * from students
where name like '%a%';

-- Display users who were created 2021-07-12 00:00:00
select * from students
where created_on = '2021-07-12 00:00:00';

-- Display users who were created 2021-07-12 00:00:00 and have a password of 1m313
select * from students
where created_on = '2021-07-12 00:00:00' and password = '1m313';

-- Display users who were created 2021-07-12 00:00:00 and who have the word Andrey in their name
select * from students
where created_on = '2021-07-12 00:00:00' and name like '%Andrey%';

-- Display users who were created 2021-07-12 00:00:00 and who have the number 8 in their name
select * from students
where created_on = '2021-07-12 00:00:00' and name like '%8%';

-- Display the user whose id is 110
select * from students
where id = 110;

-- Display the user whose id is 153
select * from students
where id = 152;

-- Display users with id more than 140
select * from students
where id > 140;

-- Display users whose id is less than 130
select * from students
where id < 130;

-- Display users whose id is less than 127 or more than 188
select * from students
where id < 127 OR id > 188;

-- Display the user whose id is less than or equal to 137
select * from students
where id <=137;

-- Display the user whose id is greater than or equal to 137
select * from students
where id >= 137;

-- Display users whose id is more than 180 but less than 190
select * from students
where id > 180 and id < 190;

-- Display the user whose id is between 180 and 190
select * from students
where id between 180 and 190;

-- Display users where the password is 12333, 1m313, 123313
select * from students
where password IN ('12333', '1m313', '123313');

-- Display users where created_on is 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select * from students
where created_on IN ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');

-- Display the minimum id
select min(id) from students;

-- Display the maximum id
select max(id) from students;

-- Display the number of users
select count(id) from students;

-- Display user id, name, user creation date. Sort in ascending order of the date the user was added
select id, name, created_on from students
order by created_on asc;

-- Display user id, name, user creation date. Sort in descending order of the date the user was added
select id, name, created_on from students
order by created_on desc;