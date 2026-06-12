create table exam(stu_id int , stu_name char(60) not null,stu_email varchar(70) unique ,stu_marks int check(stu_marks BETWEEN 0 AND 100));
insert into exam values(1,"deepika","deepikav@gmail.com",99);
insert into exam values(2,"srideepika","sri@gmail.com",98);
insert into exam values(3,"bhanu","bhanu@gmail.com",100);
insert into exam values(4,"navya","navya@gmail.com",97);
select * from exam;