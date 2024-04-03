create database Able_Jobs
create table Sales1(
Salesman_ID INT,
Name varchar (50),
City varchar (50),
Commission float)
drop table Sales1
drop table sales2
select*from Sales1

insert into Sales1 values
(5001,'James Hoog','New York',0.15),
(5002,'Nail Knite','Paris',0.13),
(5005,'Pit Alex','London',0.11),
(5006,'Mc Lyon','Paris',0.14),
(5007,'Paul Adam','Rome',0.13),
(5003,'Lauson Hen','San Jose',0.12)

Create table Sales2(
Customer_ID Int,
Customer_name varchar (50),
City varchar (20),
Grade int,
Salesman_ID INT)

insert into Sales2 values
(3002,'Nick Rimando','New York',100,5001),
(3007,'Brad Davis','New York',200,5001),
(3005,'Graham Zusi','California',200,5002),
(3008,'Julian Green','London',300,5002),
(3004,'Fabian Johnson','Paris',300,5006),
(3009,'Geoff Cameron','Berlin',100,5003),
(5003,'Jozy Altidor','Moscow',200,5007)
drop table sales1
SELECT*from Sales2
select*from Sales1






--Change commission of salesman with name of ‘Pit Alex’ to 0.22
update Sales1
set Commission=0.22
where Name= 'Pit Alex'

----Change city of salesman with salesman_id of ‘5003’ to Paris
update sales1
set city = 'Paris'
where Salesman_ID=5003

SELECT*from Sales1

--Change grade of customer with name of ‘Graham Zusi’ to 300
update Sales2
set Grade=300
where Customer_name= 'Graham Zusi'

--Change city of customer with cust_id of ‘3009’ to London
update Sales2
set City='London'
where Customer_ID=3009

SELECT*from Sales2

-- write a SQL query to find the details of those salespeople who come from the 'Paris' City or 'Rome' City. Return salesman_id, name, city,commission.
select*from sales1
where city = 'Paris'or city = 'Rome'

--write a SQL query to find the details of those salespeople who live in cities apart from 'Paris' and 'Rome'. Return salesman_id, name, city,commission
select * from sales1
where city = 'Paris' and city = 'Rome'

--write a SQL query to find the details of salespeople who get the commission in the range from 0.12 to 0.14 (begin and end values are included). Return salesman_id, name, city, and commission.
select * from sales1
where Commission  between 0.12 and 0.14

--write a SQL query to find the details of the customers whose name begins with the letter 'L'.
select* from sales1
where name like  'l%'

--write a SQL query to find the details of the customers whose name begins with the letter 'B'.
select * from Sales2
where Customer_name like 'b%'


--find the details of the customers whose names end with the letter 'n'
select *from sales2
where Customer_name like '%n'

--find the details of those salespeople whose name starts with ‘N’ and the fourth character is 'I'.
select*from sales2
where Customer_name like 'n%%I%'


create table Noble(
YEAR int,
SUBJECT varchar (20),
WINNER varchar (50),
COUNTRY varchar (20),
CATEGORY varchar (20))
drop table noble
select*from noble
insert into Noble values 
(1970,'Physics','Hannes Alfven','Sweden','Scientist'),
(1970,'Physics','Louis Neel','France','Scientist'),
(1970,'Chemistry','Luis Federico Leloir','France','Scientist'),
(1970,'Physiology','Ulf von Euler','Sweden','Scientist'),
(1970,'Physiology','Bernard Katz','Germany','Scientist'),
(1970,'Literature','Aleksandr Solzhenitsyn','Russia','Linguist'),
(1970,'Economics','Paul Samuelson','USA','Economist'),
(1970, 'Physiology','Julius Axelrod','USA','Scientist'),
(1971, 'Physics',                   'Dennis Gabor',        'Hungary',         'Scientist'),
(1971, 'Chemistry'               ,  'Gerhard Herzberg',                              'Germany',  'Scientist'),
(1971, 'Peace',                     'Willy Brandt',                                  'Germany',                'Chancellor'),
(1971, 'Literature',               'Pablo Neruda',                                  'Chile',                  'Linguist'),
(1971,'Economics',                 'Simon Kuznets',                                 'Russia',                 'Economist'),
(1994, 'Peace',                     'Yitzhak Rabin',                                 'Israel',                 'Prime Minister'),
(1978, 'Peace',                     'Anwar al-Sadat',                                'Egypt',                  'President'),
(1978, 'Peace',                     'Menachem Begin',                                'Israel',                 'Prime Minister')

--find the Nobel Prize winner(s) in the following years (Return year, subject and winner) 1970, 1987
select year,subject, winner from Noble
where year = 1970 or year= 1987

--find the Nobel Prize winner in 'Literature' in the year 1971. Return winner.select winner from noble
where Subject = 'Literature' and Year = 1971

--find the Nobel Prize winner 'Dennis Gabor'. Return year, subject.

select Year, Subject from Noble
where Winner =  'Dennis Gabor'

--find the Nobel Prize winners in 'Physics' since the year 1950. Return winner
select winner from noble
where Subject = 'Physics'and year >= 1950

--find the Nobel Prize winners in 'Chemistry' between the years 1965 to 1975. Begin and end values are included.Return year, subject, winner, and country
select* from noble
where subject= 'Chemistry' and year between 1965 and 1975

--show all details of the Prime Ministerial winners after 1972 of Menachem Begin and Yitzhak Rabin.select * from noble
where Category = 'Prime Minister'and year>= 1972 

create table Orders(
order_no INT,
purch_amt Float, 
ord_date INT,
customer_id INT,  
salesman_id INT)

insert into orders values
(70001,       150.5,     2012-10-05,  3005,         5002),
(70009,       270.65,      2012-09-10,  3001,         5005),
(70002,       65.26,       2012-10-05,  3002,         5001),
(70004,       110.5,       2012-08-17,  3009,         5003),
(70007,       948.5,       2012-09-10,  3005,         5002),
(70005,       2400.6,      2012-07-27,  3007,         5001),
(70008,       5760,        2012-09-10,  3002,         5001),
(70010,       1983.43,     2012-10-10,  3004,         5006),
(70003,       2480.4,      2012-10-10,  3009,         5003),
(70012,       250.45,      2012-06-27,  3008,         5002),
(70011,       75.29,       2012-08-17,  3003,         5007),
(70013,       3045.6,      2012-04-25,  3002,         5001)

select * from orders

--write a SQL query to calculate total purchase amount of all orders. Return total purchase amount.

select sum(purch_amt) Total_Purchase from Orders

--calculate average purchase amount of all orders. Return average purchase amount.
select AVG(purch_amt) Average_Purchase_Amount from orders

--count the number of unique salespeople. Return number of salespeople
select count(salesman_id) Total_No from orders

 --count the number of customers.Return number of customers.
 select count(customer_id) Number_of_Customer from Orders

 --write a SQL query to combine the winners in Physics, 1970 and in Economics, 1971. Return year, subject, winner, country, and category.
select* from Noble
WHERE Subject='Physics' and year= 1970
union
select* from Noble
where subject= 'Economics' and year = 1971

--find the salesperson and customer who belongs to same city. Return Salesman, cust_name and city
select A.*,B.* from Sales1 A
inner join
Sales2 B
on A.Salesman_ID=B.Salesman_ID

--find the salesperson(s) and the customer(s) he handle. Return Customer Name, city, Salesman, commission.select A.name as 'Salesman',A.Commission,B.Customer_name,B.city from Sales1 A
inner join
Sales2 B
on A.Salesman_ID= B.Salesman_ID

--find those salespersons who received a commission from the company more than 12%
select*from sales1
select*from sales2
select Name,commission from Sales1
where commission >0.12

--find those salespersons do not live in the same city where their customers live and received a commission from the company more than 12%. Return Customer Name, customer city, Salesman, salesman city, commission

select A.*,B.* from Sales1 A
inner join
Sales2 B
on A.salesman_ID = B.Salesman_ID
WHERE A.Commission>0.12 and A.city<>B.City 

create table Customers_Table(
CustomerID int,
CustomerName varchar(50), 
City varchar (50))

insert into Customers_Table values
(1, 'John Smith', 'New York'),
(2, 'Jane Doe', 'Los Angeles'),
(3, 'Bob Johnson', 'Chicago')

create table Orders_Table(
OrderID int,
CustomerID int,
Product varchar (50),
Quantity int,
Price int)

insert into Orders_Table values
(1, 1, 'Laptop', 2, 340),
(2, 1, 'Printer', 1, 240),
(3, 2, 'Smartphone', 3, 70),
(4, 3, 'Tablet' ,2, 80)select*from Orders_Tableselect*from Customers_Table

--Retrieve the names of all customers who have placed an order for a product with a price greater than $100.
select A.CustomerName,B.Price from Customers_Table A
inner join
Orders_Table B
on A.CustomerID=B.CustomerID
WHERE price>100







