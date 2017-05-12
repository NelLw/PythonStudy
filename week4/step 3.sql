use learn;

-- 把peoples表中school不是GDUFS的人全部找出来？
select * from people where people.school != 'GDUFS' or people.school is NULL;

-- 查找计算机系每次考试学生的平均成绩(最终显示学生姓名, 考试名称, 平均分)
select exam_name,avg(grade) from exam group by exam_name; 

-- select name from student as T1 where exists(select avg(exam.grade) from exam where exam.student_ID=T1.id group by exam.student_ID having avg(exam.grade) >= 80 );

-- 查找女学霸（考试平均分达到80分或80分以上的女生的姓名, 分数）
select name,avg(grade) 
from exam join student on exam.student_ID = student.id 
group by student.id having avg(exam.grade) >= 80;

-- 找出人数最少的院系以及其年度预算。
select dept_name,budget from department as T1 where exists(select count(*) from student where student.dept_name = T1.dept_name group by student.dept_name having count(*)= min(select count(*) from student group by dept_name));

-- 计算机系改名了，改成计算机科学系（comp. sci.）
update department set dept_name='comp. sci.' where dept_name='computer';

-- 修改每个系的年度预算，给该系的每个学生发2000元奖金。
update department join student on student.dept_name = department.dept_name group by student.dept_name
set department.budget = budget + count(department.dept_name)*2000;
 
-- 向department表中插入一条数据, dept_name属性的值为avg_budget, building为空, 年度预算为所有院系的年度预算平均值.
select avg(budget) from department;
insert into department values('avg_budget',' ',21400);

-- 删除计算机系中考试成绩平均分低于70的学生.
delete from student using student,exam where avg(select )

-- 找出所有正在谈恋爱,但是学习成绩不佳(考试平均分低于75)的学生,强制将其情感状态改为单身.
update student join exam on student.id = exam.student_ID  
set student.emotion_state='single'
where avg() < 70 ;

