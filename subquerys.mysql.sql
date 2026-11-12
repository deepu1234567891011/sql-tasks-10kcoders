create database collegestudents;
use collegestudents;
create table Students(id int primary key,
name varchar(80),marks int);
select * from Students

insert into Students values(1,"deepu",98)
insert into Students values(2,"deepika",100)
insert into Students values(3,"sri",89)
insert into Students values(4,"nomu",78)
insert into Students values(5,"pujitha",50)




-- --subquerys-- 
 
select name,marks from Students
where marks>(select avg(marks) from Students);

select name,marks from Students
where marks=(select MAX(marks) from Students);

select name,marks from Students
where marks<(select avg(marks) from Students);

select name,marks from Students
where marks=(select MIN(marks) from Students);

select name,marks from Students
where marks=(select avg(marks) from Students);