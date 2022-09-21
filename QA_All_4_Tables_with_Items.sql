create database qa_restaurant;

use qa_restaurant;
create table customers(
cust_id int unique not null auto_increment,
cust_name varchar(100) not null,
cust_email varchar(100) unique not null,
cust_phone char(11) not null,
primary key(cust_id));

use qa_restaurant
create table orders(
order_id int unique not null,
cust_id int not null,
total_price decimal,
primary key(order_id),
foreign key(cust_id) references customers(cust_id));

create table items(
item_id int unique not null,
item_name varchar(100) unique not null,
course_type varchar(100) not null,
price decimal not null,
Primary key(item_id));

create table order_items(
oi_id int unique not null auto_increment,
order_id int not null,
item_id int not null,
quantity int,
primary key(oi_id),
foreign key (order_id) references orders(order_id),
foreign key (item_id) references items(item_id));

insert into customers(cust_id, cust_name, cust_email, cust_phone) values("1", "Fred", "Fred@Fred", "12345678910");
insert into customers(cust_id, cust_name, cust_email, cust_phone) values("2", "George", "George@George", "22345678910");
insert into customers(cust_id, cust_name, cust_email, cust_phone) values("3", "Ron", "Ron@Ron", "32345678910");
insert into customers(cust_id, cust_name, cust_email, cust_phone) values("4", "Bill", "Bill@Bill", "42345678910");
insert into customers(cust_id, cust_name, cust_email, cust_phone) values("5", "Charlie", "Charlie@Charlie", "52345678910");

insert into items(item_id, item_name, course_type, price) values("1", "Burger", "Main", "5.00");
insert into items(item_id, item_name, course_type, price) values("2", "Chips", "Side", "2.00");
insert into items(item_id, item_name, course_type, price) values("3", "Salad", "Side", "1.00");

insert into orders(order_id, cust_id, total_price) values("1", "1", "5.00");
insert into orders(order_id, cust_id, total_price) values("7", "2", "30.00");

insert into order_items(oi_id, order_id, item_id, quantity) values("1", "1", "1", "1");
insert into order_items(oi_id, order_id, item_id, quantity) values("2", "2", "1", "5");
insert into order_items(oi_id, order_id, item_id, quantity) values("3", "3", "3", "8");
insert into order_items(oi_id, order_id, item_id, quantity) values("4", "2", "2", "2");
insert into order_items(oi_id, order_id, item_id, quantity) values("5", "5", "2", "3");

select * from order_items;


select * from orders;

select * from items;

alter table items modify course_type varchar(100) not null;
drop table order_items;
drop table items;


show tables;
describe customers;
select * from customers;

select cust_id, cust_name from customers;
update customers set cust_name="Arthur", where cust_id=2;
delete from customers where cust_id=2;

insert into customers(cust_id, cust_name, cust_email, cust_phone) values("2", "George", "George@George", "22345678910");

insert into customers(cust_id, cust_name, cust_email, cust_phone) values("6", "Percy", "Percy@Percy", "62345678910"),("7", "Ginny", "Ginny@Ginny", "72345678910");
show tables;


create table 
