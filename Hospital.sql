drop database if exists hospital;
create database hospital;
use hospital;
--. Create a table Hospital with the fields (doctorid,doctorname,department,qualification,experience). 
create table hospital(doc_id varchar(4) primary key,d_name varchar(10),department varchar(10),qualification varchar(10),experience int(5));
--a) Insert 5 records  
insert into hospital values("D001","shahsad","Endocrinologists","MBBS",10),("D002","suma","Dermatologists","MD",14),("D003","Zayan","Physicians","DBS",7),
                             ("D004","sherin","Gastroenterologists","MD",11),("D005","shimni","skin","DBS",17);
--b) Display the details of Doctors 
select *from hospital;
--c) Display the details of doctors who have the qualification ‘MD’ 
select *from hospital where  qualification="MD";
--d) Display all doctors who have more than 5 years experience but do not have the qualification ‘MD’   
select *from hospital where  qualification!="MD" and experience>5;
--e) Display the doctors in ‘Skin’ department 
select *from hospital where  department="skin";
--f) update the experience of doctor with doctored=’D003’ to 5 
 update hospital set  experience=5 where doc_id="D003";
 select *from hospital;
--g) Delete the doctor with DoctorID=’D005’ 
 delete from hospital where doc_id="D005";
select *from hospital;
