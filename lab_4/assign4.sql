# 1.For a certain event only students who belong to team R or are females are allowed
select name,rollno,team,gender from student where team='R' union select name,rollno,team,gender from student where gender='F';



# 2.Display count of students in each team. (group by)
select team,count(*) from student group by team;


# 3.Display the average math score of boys from each team. (group by)Display data in
# the following format using Group By and Order By

select team,avg(math) as avg_math_boys from student where gender='M' group by team order by team;
 

# 4.Use the group by followed by order by followed by limit to show ‘team’ and ‘avg(sci)’
# columns of the top two teams with highest average in science.

select * from student group by team,gender order by team,gender desc;


# 5.Use the group by followed by order by followed by limit to show ‘team’ and ‘avg(sci)’ columns 
#of the top two teams with highest average in science.

 select team,avg(sci) from student group by team order by avg(sci) desc limit 0,2;

