Create database db_IMS
use db_IMS


Create table Category(
CategoryId int primary key identity(1,1),
CategoryType varchar(255) not null
)

Create table Products(
ProductID int primary key identity(1,1),
ProductName varchar(255) not null unique,
Price int not null,
ProductQuantity varchar(255) not null,
Status varchar(255) not null,
CategoryId int FOREIGN KEY REFERENCES Category(CategoryId)
)

Create table Customer(
ID int primary key identity(1,1),
Name varchar(255) not null,
Email varchar(255) unique not null,
Password varchar(255) unique not null,
Gender varchar(255) not null
)


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    OrderNumber VARCHAR(255) NOT NULL UNIQUE,
    CustomerID INT FOREIGN KEY REFERENCES Customer(ID)
)


CREATE TABLE Bill (
    BillID INT PRIMARY KEY IDENTITY(1,1),
    ProductID INT FOREIGN KEY REFERENCES Products(ProductID),
    Quantity INT NOT NULL,
    OrderID INT FOREIGN KEY REFERENCES Orders(OrderID),
    Date DATETIME,
    CustomerID INT FOREIGN KEY REFERENCES Customer(ID)
)

Insert into Category values('Mobile'),('Laptop'),('Mobile Accessories')

Select * from Category

Insert into Products values('Nokia3310',5000,'10','Active',1),('Iphone 12',100000,'3','Active',1),('Handsfree',220,'300','Active',3),('Notepad',350000,'2','Active',2),('Delli7 500',40000,'10','Active',2),('Samsungj7',30000,'20','Active',1),('USB',1300,'out of stock','Inactive',3)

Select * from Products

SELECT Category.CategoryID AS 'C-ID',Category.CategoryType AS 'C-Type',    Products.ProductID AS 'P-ID',     Products.ProductName AS 'P-Name',     Products.Price FROM  Category INNER JOIN     Products ON Products.CategoryId = Category.CategoryId
Select * from Category left join Products ON Products.CategoryId = Category.CategoryId
Select * from Category right join Products ON Products.CategoryId = Category.CategoryId
Select * from Category inner join Products ON Products.CategoryId = Category.CategoryId



Insert into Customer values('Muhammad Hadi','h@gmail.com','hello world','Male'),('Balach','b@gmail.com','hello world1','Male'),('zain','z@gmail.com','hello world2','Male'),('ALi','a@gmail.com','hello world3','Male'),('Khizar','k@gmail.com','hello world4','Male'),('shaaf','s@gmail.com','hello world5','Male'),
Insert into Customer values('ebad','e@gmail.com','hello34','Male')
select * from Customer

Insert into Orders values('e345678',1),('q12345',2),('e1234555',3),('e12345556',4),('e123455567',5),('e1234555678',6),

select * from Orders
Select * from Orders inner join Customer on Customer.ID = Orders.CustomerID
Select * from Orders left join Customer on Customer.ID = Orders.CustomerID
Select * from Orders right join Customer on Customer.ID = Orders.CustomerID

Insert into Bill values(1,1,1,GETDATE(),1),(2,1,1,GETDATE(),1),(1,2,2,GETDATE(),1)

select * from Bill
Select * from Bill inner join Products on Products.ProductID=Bill.ProductID
Select * from Bill left join Products on Products.ProductID=Bill.ProductID
Select * from Bill right join Products on Products.ProductID=Bill.ProductID

SELECT * FROM Bill Inner join Customer on Bill.CustomerID=Customer.ID INNER JOIN Orders ON Bill.OrderID = Orders.OrderID INNER JOIN Products ON Bill.ProductID = Products.ProductID 













   




    
