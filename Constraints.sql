create table employee_details(e_id int not null unique,e_name varchar(20),e_age int,e_department varchar(20),e_salary bigint);
insert into employee_details values(1,"Rohan Sharma",28,"IT",720000),
(2,"Priya Nair",25,"HR",550000),
(3,"Amit Gupta",32,"Finance",900000),
(4,"Neha Verma",30,"Marketing",800000),
(5,"Arjun Singh",29,"IT",750000),
(6,"Shruti Mehta",26,"HR",600000),
(7,"Karan Malhotra",35,"Operations",1000000),
(8,"Sneha Reddy",27,"Sales",680000),
(9,"Ankit Raj",31,"IT",850000),
(10,"Pooja Desai",24,"HR",520000),
(11,"Vishal Kumar",34,"Finance",950000),
(12,"Divya Kapoor",29,"Marketing",780000),
(13,"Rajesh Iyer",36,"Operations",1100000),
(14,"Manisha Patil",28,"IT",770000),
(15,"Suresh Chawla",33,"Finance",930000),
(16,"Kavita Yadav",27,"Sales",640000),
(17,"Aditya Rao",31,"Operations",1020000),
(18,"Megha Sinha",25,"HR",570000),
(19,"Rohit Bansal",30,"Marketing",830000),
(20,"Nikhil Joshi",32,"IT",910000);

desc employee_details;
select * from employee_details;
alter table employee_details modify column e_age int not null;
alter table employee_details modify column e_department varchar(20) not null;

create table product_details(p_id int unique,p_name varchar(20) not null,p_price bigint,p_brand varchar(20) not null,stock_quantity int);
desc product_details;
INSERT INTO product_details VALUES
(1, 'Laptop', 55000, 'Dell', 20),
(2, 'Smartphone', 25000, 'Samsung', 30),
(3, 'T-Shirt', 499, 'Puma', 100),
(4, 'Office Chair', 4200, 'Ikea', 50),
(5, 'Blender', 3500, 'Philips', 40),
(6, 'Wireless Mouse', 999, 'Logitech', 75),
(7, 'Headphones', 1999, 'Sony', 60),
(8, 'Washing Machine', 32000, 'LG', 10),
(9, 'Refrigerator', 48000, 'Samsung', 15),
(10, 'Sneakers', 3499, 'Adidas', 120),
(11, 'Tablet', 15000, 'Lenovo', 25),
(12, 'TV', 60000, 'Sony', 18),
(13, 'Microwave Oven', 8000, 'Panasonic', 22),
(14, 'Electric Kettle', 1500, 'Prestige', 50),
(15, 'Air Conditioner', 45000, 'Voltas', 12),
(16, 'Fitness Tracker', 2500, 'Fitbit', 80),
(17, 'Camera', 30000, 'Canon', 15),
(18, 'Smartwatch', 12000, 'Apple', 35),
(19, 'Gaming Console', 45000, 'Sony', 20),
(20, 'Jeans', 1999, 'Levis', 90);
select * from product_details;
alter table product_details modify column p_name varchar(20) unique;
alter table product_details modify column p_id int not null;
desc product_details;