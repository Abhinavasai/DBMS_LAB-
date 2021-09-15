use  university_profile;
select * from student;

alter table student 
drop column age;
alter table student 
add column dob date after rollno,
add column yjoin integer after dob,
add column gender char(1) after yjoin,
add column team char(1) after gender;

select * from student;

update student
set dob="200-01-09", yjoin = 2019, gender = "M", team = "R"
where name = "dwayne";
update student
set dob = "2002-03-21", yjoin = 2019, gender = "M", team = "W"
where name = "john";
update student
set dob = "1999-09-11", yjoin = 2018, gender = "M", team = "A"
where name="dave";
update student
set dob = "2001-04-28", yjoin = 2019, gender = "M", team = "R"
where name="randy";
update student
set dob = "1999-02-13", yjoin = 2018, gender = "M", team = "G" 
where name="kane";
update student
set dob = "2000-11-01", yjoin = 2019, gender = "M", team = "W"
where name="tom";

insert into student
values ("carol",7,"2000-06-19",2018,"F","W",78,99,45,56,88);

 insert into student
 values ("wanda",21,"2001-08-10",2019,"F","R",42,73,59,63,65);
 
  insert into student
  values ("natasha",52,"2001-06-19",2019,"F","A",83,86,89,91,99);

insert into student
values ("gamora",34,"2001-06-19",2018,"F","G",84,93,79,94,85);
 
insert into student
values ("jean",46,"2000-06-19",2019,"F","G",98,97,84,87,72);

alter table campus add pincode integer after loc;

update campus set pincode = 500043 where name = "mec";

update campus set pincode = 600012 where name = "muc";

update campus set pincode = 400076 where name = "mgt";

insert into campus
values("mdc",106,"pun",411021,1700,false,true,true);

insert into campus
values("mdd",109,"del",110001,1400,true,true,false);

insert into campus
 values("mvc",110,"vel",631001,1400,true,true,true);