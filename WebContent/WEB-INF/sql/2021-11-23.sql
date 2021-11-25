USE test;

SELECT * FROM Employees;

SELECT 
    EmployeeID, LastName, FirstName, BirthDate, Photo, Notes
FROM
    Employees;

SELECT * FROM Employees;

SELECT * FROM Customers WHERE CustomerID = 1;

SELECT * FROM Customers WHERE Country = 'Uk';

SELECT * FROM Customers WHERE Country = 'usa';

SELECT *FROM Suppliers WHERE Country = 'USA';

SELECT SupplierID, SupplierName, ContactName, Address, City, PostalCode, Country, Phone 
FROM Suppliers WHERE Country='usa';

SELECT * FROM Suppliers;

SELECT DISTINCT country FROM Suppliers;



SELECT DISTINCT country FROM Suppliers;

SELECT DISTINCT country FROM Suppliers ORDER BY Country;

SELECT * FROM Customers;

SELECT * FROM Employees;


-- JDBC11Servlet 
SELECT EmployeeID, LastName, FirstName, BirthDate, Photo, Notes FROM Employees;

-- JDBC12Servlet
SELECT CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country 
	FROM Customers WHERE CustomerID = 1;

SELECT * FROm Customers;

SELECT CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country 
	FROM Customers;
