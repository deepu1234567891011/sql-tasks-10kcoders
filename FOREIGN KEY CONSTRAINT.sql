CREATE TABLE departments (
dept_id INT PRIMARY KEY,
dept_name VARCHAR(100)
);
insert into departments values(1,"CSE");
insert into departments values(2,"IT");
insert into departments values(3,"DS");
insert into departments values(4,"ECE");
select * from departments;

CREATE TABLE employeesss (
emp_id INT PRIMARY KEY,
emp_name VARCHAR(100),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
ON DELETE SET NULL
ON UPDATE CASCADE
);

insert into employeesss values(101,"irfuu",1);
insert into employeesss values(102,"nayara",2);
insert into employeesss values(103,"swapnaa",3);
insert into employeesss values(104,"nazuu",4);

 select * from employeesss;
