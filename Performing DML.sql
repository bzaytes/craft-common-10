create database MyDB1;

use customersInfo;

create table customers(
Cust_ID int not null auto_increment,                  
Cust_FirstName varchar(255)not null,   
Cust_LastName varchar(255)not null,             
Cust_Age int,                 
Cust_Gender enum('Male','Femal'),         
Cust_Country varchar(255)not null,           
Cust_Salary  decimal not null,
primary key(Cust_ID)         
);

delete from customers
where Cust_ID=111;

update customers
set Cust_Country ='Ethiopia'
where Cust_ID =555;

update customers
set Cust_Gender='Femal'
where Cust_ID =888;

drop table  customers;

select*from customers ;
describe customers;

insert into customers
VALUES(111,'Nick','Jones',26,'Male','USA',20000000),
      (222,'Antony','Martial',24,'Male','France',10000000),
	  (333,'Nebiha','Ami',24,'Femal','uzbekistan',36000000),
      (444,'Soresa','Hailu',24,'Male','Unkown',34000000),
      (555,'Beka','Haile',25,'Male','kazakhstan',400000),
      (999,'Nick','Jones',26,'Male','USA',20000000),
      (777,'Poul','Pogba',26,'Male','France',20000000),
      (888,'Betty','G',27,'Femal','Ethiopia',70000000);