CREATE DATABASE Ecom_db;
USE Ecom_db;

create table Customers (
	customer_id int primary key auto_increment,
    name varchar(100) not null,
    email varchar(100) unique not null,
    address varchar(200)
);

create table Products (
	product_id int primary key auto_increment,
    name varchar(200) not null ,
    price decimal(10,2) not null,
    Quantity int default 0
    );
    

create table Orders (
	order_id int primary key auto_increment,
    customer_id int ,
    order_date date ,
    status varchar(50) default 'Pending',
    foreign key (customer_id) references customers(customer_id)
    );


CREATE TABLE OrderItems (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);


insert into Customers (name , email , address ) values
('Amit Sharma' , 'amit1@gmail.com' , 'Ahmedabad'),
('Ajay Varma ' , 'ajay2@hotmail.com' , 'Pune');

insert into Products (name , price , Quantity) values
('Smartphones' , 12150.50 , 30 ),
('Headphones' , 590.40 , 100),
('laptop' , 30780.60 , 45 );

insert into Orders (customer_id , order_date ,status ) values
(1 , '2025-06-01' , 'Completed'),
(2 , '2025-06-02' , 'Pending');

insert into OrderItems (order_id , Product_id , quantity) values
(1 , 1 , 1),
(1 , 2 , 2),
(2 , 3 , 1);





    
