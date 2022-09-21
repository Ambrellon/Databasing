create database qa_restaurant;

use qa_restaurant;
create table customers(
cust_id int unique not null auto_increment,
cust_name varchar(100) not null,
cust_email varchar(100) unique not null,
cust_phone char(11) not null,
primary key(cust_id));

use qa_restaurant
create table items(
order_id int unique not null,
item_name varchar(100) not null,
course_type varchar(100) not null,
price decimal not null,
primary key(order_id));

show tables;

describe customers;

