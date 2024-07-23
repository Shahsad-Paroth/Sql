drop database if exists customer;
create database customer;
use customer;
--Create a table customer (cust_no varchar (5), cust_name varchar (15), age 
--number, phone varchar (10))
create table customer (cust_no varchar(5),cust_name varchar(15),age int(3),phone varchar(10));
desc customer;
--insert 5 records and display it
insert into customer(cust_no,cust_name,age,phone) values ("C001","shahsad",20,"7541224810"),("C002","suma",25,"7045218730"),("C003","zayan",20,"30254185"),
                                                          ("C004","Rejin",19,"85654110"),("C005","shabire",21,"78210451");
select *from customer;
-- add new field d_birth with date datatype 
alter table customer add dob date;
-- create another table cust_phone with fields cust_name and phone from customer table 
create table cust_phone select cust_name,phone from customer;
 select*from cust_phone;
-- remove the field age 
alter table customer drop age;
desc customer;
--change the size of the cust_name to 25 
alter table customer modify cust_name varchar(25);
desc customer;
--delete all the records from the table
 delete from customer;
 select*from customer;
-- rename the table cutomer to cust 
 alter table customer rename to cust;
show tables;
-- drop the table 
 drop table  cust;
drop table  cust_phone;
