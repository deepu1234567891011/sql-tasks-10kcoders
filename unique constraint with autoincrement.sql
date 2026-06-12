create table employees(emp_id int primary key auto_increment ,emp_name char(70) not null ,emp_department varchar(80),salary int check(salary between 1000 and 10000));
insert into employees values(101,"sushma","dental",1000);
insert into employees values(102,"sushmasri","student",2000);
insert into employees values(103,"devika","It",3000);
insert into employees values(104,"geethika","collage",4000);
insert into employees values(105,"nomu","school",5000);
insert into employees values(106,"irfan","cse",6000);
select * from employees;