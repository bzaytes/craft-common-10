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
insert into customers
values(111, 'Nick', 'Jones', '26', 'Male', 'USA', '20000000');
insert into customers
values(222, 'Antony', 'Martial', '24', 'Male', 'France', '10000000');
insert into customers
values(333, 'Nebiha', 'Amir', '24', 'Femal', 'uzbekistan', '36000000');
insert into customers
values(444, 'Soresa', 'Hailu', '24', 'Male', 'Unkown', '34000000');
insert into customers
values(555, 'Beka', 'Haile', '25', 'Male', 'kazakhstan', '400000');
insert into customers
values(777, 'Poul', 'Pogba', '26', 'Male', 'France', '20000000');
insert into customers
values(888, 'Betty', 'G', '27', 'Femal', 'Ethiopia', '70000000');
insert into customers
values(999, 'Nick', 'Jones', '26', 'Male', 'USA', '20000000');


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

