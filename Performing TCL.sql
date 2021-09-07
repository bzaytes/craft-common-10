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

truncate customers;

start transaction;


savepoint ins;

update customers
set Cust_Country='Ethiopia'
where Cust_ID= 333;

savepoint upd;

update customers
set Cust_Country='Ethiopia'
where Cust_ID=444;

savepoint upd;

update customers
set Cust_Country='Ethiopia'
where Cust_ID=555;

savepoint upd;

delete from customers
where Cust_ID=999;

savepoint del;

rollback to savepoint upd;
rollback to savepoint ins;

commit;




drop table  customers;

select*from customers;
describe customers;

