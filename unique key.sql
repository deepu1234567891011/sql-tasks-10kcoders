create table user(user_id int,user_name char(70) not null,user_email varchar(80) unique);
insert into user values(1,"deepu","deepu@gmail.com");
insert into user values(2,"Sri","sri@gmail.com");
insert into user values(3,"narayana","narayana@gmail.com");
insert into user values(4,"navinder","navindr@gmail.com");
select * from user;