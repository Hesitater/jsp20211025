-- 새로운 DB 만들고 사용
CREATE DATABASE mytest1;
USE mytest1;

USE test;
SELECT CustomerName FROM Customers WHERE CustomerID = 1;
SELECT CustomerName FROM Customers;

-- JDBC04Servlet
SELECT LastName FROM Employees;


-- JDBC05Servlet
SELECT CustomerName, ContactName FROM Customers WHERE CustomerID = 1;
-- JDBC05_1SErvlet
SELECT CustomerName, ContactName, Address FROM Customers WHERE CustomerID = 1;

-- JDBC06Servlet
SELECT LastName, FirstName FROM Employees WHERE EmployeeID = 1;


-- JDBC07Servlet
SELECT CustomerName, ContactName, Address FROM Customers WHERE CustomerID = 1;

-- JDBC0701Servlet 수정
SELECT CustomerName, ContactName,  Address, City FROM Customers WHERE CustomerID = 1;

-- JDBC08Servlet
SELECT  CustomerName, ContactName,  Address, City  FROM Customers;

-- 이건 내가해볼까?
SELECT LastName,  FirstName , BirthDate FROM Employees;

SELECT * FROM Employees;

-- JDBC09Servlet
SELECT LastName, FirstName FROM Employees;

SELECT * FROM Suppliers;   -- 순서보장을 못받음

SELECT 
    SupplierId,
    SupplierName,
    ContactName,
    Address,
    City,
    PostalCode,
    Country,
    Phone
FROM
    Suppliers;
    
SELECT * FROM Customers;    
    
    
SELECT CustomerName, ContactName From Customers;
    
SELECT CustomerName FROM Customers;    

SELECT LastName FROM Employees;    

SELECT CustomerName, ContactName, Address FROM Customers WHERE CustomerID = 1;

SELECT LastName, FirstName FROM Employees WHERE EmployeeID = 1;    

SELECT 
    CustomerName, ContactName, Address, City
FROM
    Customers
WHERE
    CustomerID = 1;

SELECT CustomerName, ContactName, Address, City FROM Customers;

SELECT FirstName, LastName, BirthDate FROM Employees;

SELECT 
    CustomerName,
    ContactName,
    Address,
    City,
    CustomerID,
    PostalCode,
    Country
FROM
    Customers;