create table emp(
	emp_id int,
	emp_name varchar(40),
	mob int,
	salary int,       
	address varchar (20),
	department varchar (30),
	joining_date date,
	age int
)
	
insert into emp values (1,'Ramesh Sharma',985412632,100000,'Navi Mumbai','Sr.Developer','20-3-1996',50),
(2,'Rajat Sharma',952846241,90000,'Mumbai','Sr.Tester','1-4-2000',40),
(3,'Mahesh Khanna',974512524,50000,'Pune','Data Analytics','14-4-2005',45),
(4,'Ayush Kurana',884455112,60000,'Banglor','Developer','9-7-2007',35),
(5,'Diana Prince',774455889,50000,'Delhi','Tester','17-4-2000',47),
(6,'Alice Johnson',748596142,80000,'Mumbai','Sr.Tester','14-9-2009',36),
(7,'George Miller',978451935,75000,'Pune','Sr.Data Analytics','14-9-2009',42),
(8,'Charlie Brown',996688447,40000,'Delhi','Data Analytics','6-7-2011',40),
(9,'Bob Smith',887744001,70000,'Banglor','Sr.Tester','1-4-2000',52),
(10,'Fiona Green',997788446,80000,'Navi Mumbai','Tester','15-4-2000',44),
(11,'Isaac Newton',541263987,60000,'Noida','Tester','15-4-2000',50),
(12,'Laura Brown',859603012,95000,'Noida','Sr.Developer','20-3-1996',54),
(13,'Steve Rogers',874968512,77000,'Navi Mumbai','Sr.Data Analytics','1-4-2000',32),
(14,'Nina Patel',842593517,90000,'Mumbai','Sr.Tester','14-4-2005',39),
(15,'Pamela Anderson',965341852,100000,'Pune','Sr.Tester','14-4-2005',42),
(16,'Ethan Hunt',968554412,30000,'Banglor','Tester','17-4-2000',47),
(17,'Micale Johnson',551252514,135000,'Delhi','Sr.Data Analytics','6-7-2011',40),
(18,'Micheal Johnson',459654142,90000,'Noida','Sr.Developer','1-4-2000',50),
(19,'Alice Miller',745965210,80000,'Banglor','Sr.Tester','4-5-2005',54),
(20,'Booby green',849635212,70000,'Navi Mumbai','Sr.Data Analytics','1-1-2000',36)

select * from emp


select distinct max(salary) from emp

select distinct count(mob) from emp
	
select department,  count(salary) from emp
group by department
	
select department , sum(mob) from emp 
group by department

select department , sum(mob),sum(salary) from emp 
group by department
	
select department from emp
group by department
having count(department)>3

select emp_id,age from emp
where age >45
group by emp_id,age

	
select department from emp
where salary < 80000
group by department
having count (*) > 1

select department from emp
where salary < 80000
group by department
having count (*) > 2

select emp_name, age ,count(age)from emp
where emp_name = 'Charlie Brown'
group by emp_name, age
having age = 40

select emp_name,sum(salary) from emp
group by emp_name
having sum(salary) <=80000

select emp_name,joining_date from emp
where emp_name = 'Ayush Kurana'
group by emp_name, joining_date
