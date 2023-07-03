--SELECT CategoryName, Description FROM northwind.categories ORDER BY CategoryName;
--SELECT ContactName, CompanyName, ContactTitle, Phone From customers ORDER BY Phone;
--SELECT UPPER(FirstName) AS FirstName, UPPER( LastName) AS LastName, HireDate FROM employees ORDER BY HireDate;
--SELECT top 10 OrderID, OrderDate, ShippedDate, CustomerID, Freight FROM orders ORDER BY Freight Desc
--SELECT lower(CustomerID) AS ID FROM customers
--select CompanyName , Fax , Phone , Country , HomePage from Suppliers order by country desc , CompanyName asc
--select CompanyName , ContactName from Customers where City='Buenos Aires'
--select ProductName , UnitPrice , QuantityPerUnit from Products where UnitsInStock=0
--select ContactName , Address  ,City from Customers where Country not in ('germany' , 'spain' , 'mexico')
--select  OrderDate, ShippedDate, CustomerID, Freight from Orders where convert(datetime, OrderDate)='1996-07-22'
--select FirstName , LastName , Country from Employees where country <> 'usa'
--SELECT  EmployeeID, OrderID, CustomerID, RequiredDate, ShippedDate FROM Orders where ShippedDate > RequiredDate
--select City, CompanyName, ContactName from Customers where City like '[ab]%'
--select orderid from Orders where OrderID%2=0
--select * from Orders where Freight>500
--select ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel  from Products where ReorderLevel=0
--select CompanyName, ContactName from Customers where Fax is null
--select FirstName, LastName from Employees where ReportsTo is null 
--select orderid from Orders where OrderID%2=1
--SELECT CompanyName,ContactName,Fax FROM customers WHERE Fax IS NOT NULL ORDER BY ContactName;
--select City, CompanyName, ContactName from customers where city like '%a%' order by ContactName
--select FirstName, LastName, BirthDate from Employees where year(BirthDate) between '1950' and '1959'
--select FirstName, LastName , year(BirthDate) BirthYear from Employees 
--select OrderID , count(*) NumberOfOrders from OrderDetails group by OrderID order by NumberOfOrders desc
--select p.SupplierID, ProductName, CompanyName from Products p join suppliers s on p.SupplierID=s.SupplierID where s.CompanyName in ('Exotic Liquids', 'Specialty Biscuits. Ltd.', 'Escargots Nouveaux' ) order by s.SupplierID
--select ShipPostalCode, OrderID, OrderDate, RequiredDate, ShippedDate, ShipAddress from Orders where ShipPostalCode like '98124%'
--select ContactName, ContactTitle, CompanyName FROM customers WHERE ContactTitle NOT LIKE '%Sales%'
--select LastName, FirstName, City FROM employees WHERE City != 'Seattle'
--SELECT CompanyName, ContactTitle, City, Country FROM customers WHERE Country IN ('Mexico','Spain') AND City <> 'Madrid'
--select FirstName + ' ' + LastName + ' can be reached at x' + Extension ContactInfo from Employees
--SELECT ContactName FROM customers where ContactName NOT like '_A%'
--select floor(avg(UnitPrice)) AveragePrice , sum(UnitsInStock) TotalStock , max(UnitsOnOrder) MaxOrder from Products
--select s.SupplierID, s.CompanyName, c.CategoryName, p.ProductName, p.UnitPrice FROM products p JOIN suppliers s ON s.SupplierID = p.SupplierID JOIN categories C On c.CategoryID = p.CategoryID
--SELECT CustomerID, sum(Freight) FROM orders GROUP BY CustomerID HAVING sum(Freight) > '200'
--select od.OrderID, c.ContactName,od.UnitPrice,od.Quantity,od.Discount FROM OrderDetails od JOIN orders o ON od.OrderID = o.OrderID JOIN customers c ON c.CustomerID = o.CustomerID WHERE od.Discount != '0'
--SELECT a.EmployeeID, a.LastName + ' ' +a.FirstName  employee,  b.LastName + ' ' + b.FirstName  manager FROM employees a JOIN employees b ON b.EmployeeID = a.ReportsTo ORDER BY a.EmployeeID;
--SELECT avg(UnitPrice)  AveragePrice, min(UnitPrice) MinimumPrice, max(UnitPrice) MaximumPrice from products
--create view customersinfo as select c.CustomerID, CompanyName, ContactName, ContactTitle, Address, City,  Country, Phone, OrderDate, RequiredDate, ShippedDate from Customers c join orders o on c.CustomerID=o.CustomerID
--sp_rename 'customersinfo' , 'customersdetails'
--CREATE VIEW ProductDetails AS SELECT  p.ProductID,S.CompanyName,  p.ProductName,c.CategoryName, c.Description,  p.QuantityPerUnit, p.UnitPrice, p.UnitsInStock, p.UnitsOnOrder, p.ReorderLevel, p.Discontinued FROM suppliers s JOIN products p ON s.SupplierID = p.SupplierID JOIN categories c ON c.CategoryID = p.CategoryID;
--drop view customersdetails
--SELECT left(CategoryName,5) as Short_info  FROM categories
--SELECT * into shippers_dup FROM shippers
 /* ALTER TABLE shippers_dup
ADD column Email VARCHAR(50);
UPDATE shippers_dup 
SET Email ='speedyexpress@gmail.com'
WHERE ShipperID = '1';
UPDATE shippers_dup 
SET Email ='unitedpackage@gmail.com'
WHERE ShipperID = '2';
UPDATE shippers_dup 
SET Email ='federalshipping@gmail.com'
WHERE ShipperID = '3'; */
--SELECT s.CompanyName,p.ProductName FROM categories c JOIN products p ON c.CategoryID = p.CategoryID JOIN suppliers s ON s.SupplierID = p.SupplierID WHERE CategoryName = 'Seafood'
--SELECT c.CategoryID, s.CompanyName, p.ProductName FROM categories c JOIN products p ON c.CategoryID = p.CategoryID JOIN suppliers s ON s.SupplierID = p.SupplierID WHERE c.CategoryID = "5"
--DROP table shippers_dup
--select LastName , FirstName , DATEDIFF(YY , BirthDate , GETDATE()) Aage from Employees
--SELECT c.CompanyName, count(c.CustomerID) AS NumberofOrders FROM customers c JOIN orders o ON o.CustomerID = c.CustomerID WHERE o.OrderDate >= '1994-12-31'  GROUP BY c.CompanyName having count(c.CustomerID) > 10;
--select ProductName + ' weighs/is  ' + QuantityPerUnit + ' ' + 'and cost ' + '$' + (convert(nvarchar(6), left(UnitPrice,2)))  from Products
