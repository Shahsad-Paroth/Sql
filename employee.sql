 drop database if exists employee;
 create database employee;
 use employee;
-- Create a table employee with fields (EmpID, EName, Salary, Department, and Age)
create table employee(em_id varchar(3)primary key,E_name varchar(10),age int,department varchar(10),salary int);
--Insert some records. 
insert into employee values ("S001","Shahsad",25,"Purchase",24000),("S002","Suma",35,"Purchase",30000),("S003","Sherin",40,"sales",50000),
                              ("S004","Ammu",45,"sales",65000),("S005","Zayan",55,"HR",45500);
--A. Display the total number of employees. 
select count(*) as Total_employee from employee;
--B. Display the name and age of the oldest employee of each department. 
select E_name,age from employee where age in(select max(age) from employee group by department);
--C. Display the average age of employees of each department 
 select avg(age) as age from employee group by department;
--D. Display departments and the average salaries 
select department,avg(salary) as salary from employee group by department;
--E. Display the lowest salary in employee table 
select min(salary) as low_salary from employee;
--F. Display the number of employees working in purchase department 
select count(department) as Total_employee from employee where department="purchase";
--G. Display the highest salary in sales department; 
select max(salary) as highest_salary from employee;
--H.select max(salary)-min(salary) as difference_salary from employee;
select max(salary)-min(salary) as difference_salary from employee;
