create database Amazon_Fresh;
use Amazon_Fresh;
create table customers(
customerid varchar(50) primary key,
name varchar(100),
age int,
gender varchar(20),
city varchar(100),
state varchar(100),
country varchar(100),
signupdate date,
primemember varchar(10)
);
create table suppliers(
supplierid varchar(50) primary key,
suppliername varchar(150),
contactperson varchar(100),
phone varchar(50),
city varchar(100),
state varchar(100)
);
create table products(
productid varchar(100) primary key,
productname varchar(100),
category varchar (100),
subcategory varchar(100),
priceperunit decimal(10,2),
stockquantity int,
supplierid varchar(50),
foreign key (supplierid) references suppliers(supplierid)
);
create table orders (
orderid varchar(50)primary key,
customerid varchar(50),
orderdate date,
orderamount decimal(10,2),
deliveryfee decimal(10,2),
discountapplied decimal(10,2),
foreign key (customerid)references customers(customerid)
);
create table order_details(
orderid varchar(50),
productid varchar(50),
quantity int,
unitprice decimal(10,2),
discount decimal(10,2),
primary key(orderid,productid),
foreign key(orderid) references orders(orderid),
foreign key (productid) references products(productid)
);
create table reviews(
reviewid varchar(50) primary key,
productid varchar(50),
customerid varchar(50),
rating int,
reviewtext text,
foreign key(productid) references products(productid),
foreign key(customerid) references customers(customerid)
);
show tables;
select*from suppliers;