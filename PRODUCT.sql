drop database if exists product;
create database product;
use product;
--Create a table product with the fields (Product_code primary key, Product_Name, Category, Quantity, Price)
create table product(p_code varchar(6)primary key,p_name varchar(10),category varchar(10),quantity varchar(10),price int);
--Insert some records
insert into product values ("P001","Lex","Bathsoap","400",50),("P002","MULLA","washingpowder","500",80),
                            ("P003","closeup","paste","700",20),("P004","PVM","rice","100",100),("P005","HERO","pen","450",10);
 --Display the records in the descending order of Product_Name
select *from product order by p_name desc;
-- Display Product_Code, Product_Name with price between 20 and 50 
select p_code,p_name from product where price between 20 and 50;
--. Display the details of products which belongs to the categories of ‘bath soap’, ‘paste’, or ‘washing powder’ 
select *from product where category in("Bathsoap","paste","washingpowder");
--. Display the products whose Quantity less than 100 or greater than 500 
select *from product where quantity<100 or quantity>500;
-- Display the products whose names starts with 's' 
select *from product where p_name like "s%";
--Display the products which not belongs to the category 'paste'
select *from product where category not in("paste");
--. Display the products whose second letter is 'u' and belongs to the Category 'washing powder' 
select *from product where p_name like "_u%" and 
