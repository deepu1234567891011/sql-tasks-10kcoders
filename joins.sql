use 96r;
create table student_table(id int primary key,name char(60),age int);
insert into student_table values(2,"Student2",17);
insert into student_table values(3,"Student3",18);
insert into student_table values(4,"Student4",17);
insert into student_table values(5,"Student5",19);
insert into student_table values(6,"Student6",18);
insert into student_table values(7,"Student7",17);
insert into student_table values(8,"Student8",18);
insert into student_table values(9,"Student9",18);
insert into student_table values(10,"Student10",17);
select * from student_table;
create table marks_table(id int primary key,marks int, ranks int );
insert into marks_table values(1,89,6);
insert into marks_table values(2,95,3);
insert into marks_table values(3,76,9);
insert into marks_table values(4,80,8);
insert into marks_table values(5,69,10);
select * from marks_table;

select * from student_table as s inner join marks_table as m  on s.id=m.id;
select s.id,s.name,m.marks,m.ranks from student_table as s inner join marks_table as m on s.id = m.id;
select s.id,s.name,m.marks from student_table as s inner join marks_table as m on s.id = m.id;
select s.name,s.age from student_table as s  inner join marks_table as m  on s.id = m.id where marks>90;
select   AVG(m.marks) as average_marks  from student_table as s inner join marks_table as m on s.id = m.id;
select   s.name,AVG(m.marks) as AVG_marks  from student_table as s inner join marks_table as m on s.id = m.id GROUP BY s.name;
select   s.name,AVG(m.marks) as AVG_marks  from student_table as s inner join marks_table as m on s.id = m.id 
GROUP BY s.name having AVG(m.marks)>80;

select s.id,s.name,m.marks from student_table as s left join marks_table as m on s.id = m.id;
select s.name,s.age,m.marks,m.ranks,m.ranks from student_table as s left join marks_table as m on s.id = m.id where s.age>18;
select s.name,m.marks from student_table as s left join marks_table as m on s.id = m.id where m.marks is NULL;
select sum(m.marks) as total_student_marks from student_table as s left join marks_table as m on s.id = m.id; 
select s.name,m.marks from student_table  as s left join marks_table as m on s.id = m.id where m.marks>85; 

select s.id,s.name,m.marks,m.ranks from student_table as  s right join marks_table as m on s.id=m.id;
select s.name,s.age,m.marks,m.ranks from student_table as s right join marks_table as m on s.id=m.id where m.marks>80;

select * from student_table as s left join marks_table as m  on s.id=m.id
UNION
select * from student_table as s right join marks_table as m on s.id=m.id;

select * from student_table as s cross join marks_table as m 

select * from student_table as s  join marks_table as m on s.id=m.id;





















