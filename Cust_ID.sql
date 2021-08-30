create database MyDB;
use MyDB;
create table custemers(
Cust_ID int auto_increment,
Cust_FirstName varchar(255) not null,
 Cust_LastName varchar(255) not null,
 Cust_NickName  varchar(40),
  Cust_Age int,
  Cust_Gender char(1) not null,
  Cust_Country varchar(200) not null,
  Cust_Salary double not null,
  primary key(Cust_ID)
  );
  
  describe custemers;