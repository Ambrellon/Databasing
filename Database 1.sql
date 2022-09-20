CREATE DATABASE qa_restaurant;
USE qa_restaurant; 
CREATE TABLE Customers(
cust_id INT UNIQUE NOT NULL AUTO_INCREMENT,
cust_name varchar(100) NOT NULL,
phone_number CHAR(11) NOT NULL,
PRIMARY KEY(cust_id));

Show Tables;

Describe customers;