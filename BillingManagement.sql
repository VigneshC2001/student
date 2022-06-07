create database billingmanagement;
drop database billingmanagement;
use billingmanagement;

create table iteminfo(
itemid int(20)not null auto_increment,
itemname varchar(30)not null,
itemcount int(15)not null,
itemprice int(100)not null,
primary key(itemid));
alter table iteminfo auto_increment=100;

drop table iteminfo;
desc iteminfo;
show tables;
insert into iteminfo(itemname,itemcount,itemprice)
values("pen",79,40),("laptop",10,79999),("note",300,30),("mobile",32,29911),("speaker",145,455),("headphone",200,199),("airpod",50,765),("pen",200,10),("watch",499,9999);
select *from iteminfo;
desc iteminfo;

update iteminfo set itemname=lap 
where itemid=101;

select *from iteminfo where itemname = "laptop";

alter table iteminfo drop column itemno;

alter table iteminfo modify column itemid int auto_increment; 

delete  from iteminfo
where itemid=90877;


create table customerinfo(
cusid int(20) not null auto_increment,
cusname varchar(18) not null,
cusmobno long not null,
cusaddress varchar(100) not null,
primary key(cusid));
alter table customerinfo auto_increment=1000;

show tables;
desc customerinfo;
drop table customerinfo;

 insert into customerinfo (cusname,cusmobno,cusaddress)
 values("vignesh",8610397778,"371,bhavani,erode"),("hariraj",8971651423,"455,sivagangai,madurai"),("janikiram",7386432109,"687,singasamutharam,vellore"),
 ("saravanan",6309213468,"322,kadachananthal,thiruvanamalai"),("faiz",7386231530,"466,nathamvilaku,madurai"),("parthipan",6789214530,"566,edapadii,salem");
 
 select * from customerinfo;
 
 insert into customerinfo (cusname,cusmobno,cusaddress)values("satheesh",8731405231,"471,thandrampet,pollachi,coimbatore");
  select *from customerinfo where cusid=1000;
  
  delete from customerinfo where cusid=1004;
  
  
  
  
  
  create  table student(
  sid int auto_increment not null,
  sname  varchar(20),
  primary key (sid));
  
  insert into student(sname)
  values ("vicky"),("parthiban"),("hari");
  
  create table smarks(
  stdid int  not null,
  subid int not null,
  marks int not null);
  
  insert into smarks(stdid,subid,marks)
  values (1,1,50),(1,2,60),(2,1,70),(3,1,20);
  drop table smarks;
  
  create table subjectname(
  subjectid int not null,
  subjectname varchar(30) not null,
  primary key(subjectid));
  
  drop table subjectname;
  
  insert into subjectname
  values(1,"maths"),(2,"chem");
  
select *from subjectname;
select *from  smarks;  
select *from student;

select  count(subjectname),subjectname from student 
inner join  smarks on student.sid=smarks.stdid
inner join subjectname on subjectname.subjectid=smarks.subid 
 where  marks>=50
 group by(subjectid);
 
 select  * from student 
inner join  smarks on student.sid=smarks.stdid
inner join subjectname on subjectname.subjectid=smarks.subid ;
 
 select  count(marks),subjectname,marks from student 
inner join  smarks on student.sid=smarks.stdid
inner join subjectname on subjectname.subjectid=smarks.subid 
 group by(marks);
 
 