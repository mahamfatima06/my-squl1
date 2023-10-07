 create database classp;
 use classp;
 
 create table students(
 sid int not null unique auto_increment,
 sname varchar(44),
 scity varchar(50),
 sphone varchar(11),
 sage varchar(32)
 );
 insert into students(sname, scity, sphone, sage)values("Areeba","Islamabad", "23456984525", "08");
 select * from students;
 
 create table courses(
 cid int not null auto_increment,
 cname varchar(35),
 cstatus varchar(45),
 foreign key courses(cid) references students(sid)
 );
 insert into courses(cname, cstatus) values("Mysql", "active");
 select * from courses;
 
 select students.sid,students.sname,students.scity, courses.cname, courses.cstatus from students join  courses ON students.sid = courses.cid;
 use classp;
 select * from students cross join courses;
 alter table students add stud_of varchar(30) not null;
 alter table students add Faculty varchar(30) not null;
 update students set stud_of = '11' where sid = '16';
 select T1.sname as Teacher, T2.sname from students as T1 inner join students as T2 on t1.sid = t2.stud_of;