create database university_profile;
use university_profile;
create table student(name varchar(20), rollno integer unique, age integer, math integer, sci integer, eng integer, social integer, sports integer);


insert into student(name,rollno,age,math,sci,eng,social,sports) values("dwayne",33,21,98,94,91,96,55);

insert into student
value("john",58,18,70,87,77,98,67);

insert into student
 values("dave",27,22,54,68,98,96,77);
 
 insert into student
 values("randy",56,19,69,75,65,67,98);
 
 insert into student
 values("kane",11,22,86,95,52,57,73);

# general query to display table 
select * from student;


create table campus(name varchar(10), cid integer unique, loc varchar(20), cap integer, law boolean, engg boolean, buss boolean);


insert into campus
values("mec",101,"hyd",1000,true,true,true);


insert into campus
values("muc",104,"mad",2000,false,true,true);


insert into campus
values("mgt",107,"bom",1500,true,false,true);

select * from campus;



#Q1:Management wants to know the cid of colleges in the uni that can support law.
select cid from campus where law=true;


#Q2:Faculty wanted to inspect all the details of Dave excluding english and social.
select name,rollno,age,math,sci,sports from student where name = "dave";


#Q3:Management wants to know the name and roll no of students who have qualified for scholarship.
select name,rollno from student where math>80 or sci>80;


#Q4:A teacher for social wants to know what are the distinct marks she gave her students.
select distinct social from student;


#Q5:The english prof wishes to find the number of students failing in his class.
select count(eng)
from student
where eng<70;


#Q6:The stem field wants to find the best qualified student to be head of their club as per marks...
select name,max(math), max(sci) from student;


#Q7:The Dept. of stem wants to know the college location of the university that does not provide engineering.
select loc from campus where engg = false;


#Q8:What is the ratio of students in the campus that provides stem and does not provide stem
select sum(case when engg=true then cap else 0 end)/sum(case when engg=false then cap else 0 end) as ratio   
from campus;

#Q9:For all rounder find students who have score above 70 in all subj
select name from student where math>70 and sci>70 and eng>70 and social>70 and sports>70;


#Q10:Find the count of students in each group if I split the students as per every 20 roll numbers in one group
select
case
 when rollno>0 and rollno<=20
 then '1-20'
 when rollno>20 and rollno<=40
 then '21-40'
 when rollno>40 and rollno<=60
 then '41-60'  
 else 'out_of_range' end as `Range`,
 count(1) as `Count`
 from student
 group by `Range`;
 
 
 
