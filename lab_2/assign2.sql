
 
 # 1) Suppose we are having a vaccination drive and someone suggests we give the vaccines as per age...
 select name, rollno, (year(curdate())-year(dob)) as age from student
 where (year(curdate())-year(dob)) >=18
 order by age desc;
 
 #2)Suppose the college was holding an event for sports for the students, one of the sports sections..
select count(*) as male_count from student where gender = "M" and (year(curdate())-year(dob))>=20 ;
select count(*) as female_count from student where gender = "F" and (year(curdate())-year(dob))>=20 ;

# 3)Display number of students whose maths score is more than the class avg score in all subjects..
select count(name) as count from student where math>(select avg((math+sci+eng+social+sports)/5) from student);

#4)Suppose the university expansion team was looking at how they should expand further and...
 select sum(case when pincode>=500000 and pincode<700000 then cap else 0 end)/sum(case when pincode>=300000 and pincode<500000 then cap else 0 end) as ratio from campus;
 
 #5)This year the college has decided to not only award the student who came first in the college...
 select name,((math+sci+eng+social+sports)/5) as average from student order by average desc limit 1,1;
 
 #6)Display student’s name, rno, avg marks (“avg_marks”), score status (“score_status”) where score..
 select name, rollno,(math+sci+eng+social+sports)/5 as avg_marks ,if(((math+sci+eng+social+sports)/5)>(select avg((math+sci+eng+social+sports)/5)  from student),"High","Low") as classification from student;
 
