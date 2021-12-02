USE test;

-- count : 개수
-- Customers 테이블의 row 수
SELECT count(*) FROM Customers;
SELECT * FROM Customers;
SELECT count(CustomerID) FROM Customers; -- CustomerID 가 NOT NULL이라  
SELECT count(ContactName) FROM Customers;  -- null은 count 안함
SELECT * FROM Customers WHERE ContactName IS NULL;


SELECT * FROM Customers ORDER BY Country;

SELECT Count(Country) FROM Customers;
SELECT Count(DISTINCT Country) FROM Customers;


-- Suppliers 의 City Country
-- 연습1: Suppliers 의 City 컬럼의 값이 중복없이 몇개 있는지?
-- 연습2: Suppliers 의 Country 컬럼의값이 중복없이 몇개 있는지?

SELECT * FROM Suppliers;
SELECT count(*) FROM Suppliers;
SELECT DISTINCT * FROM Suppliers ; 

SELECT count(City) FROM Suppliers;
SELECT count(DISTINCT City) FROM Suppliers;

SELECT count(Country) FROM Suppliers;
SELECT count(DISTINCT Country) FROM Suppliers;



SELECT c.ContactName ,o.OrderDate, p.ProductName, ct.CategoryName, od.Quantity, s.ShipperName, s.Phone
FROM Customers c JOIN Orders o On o.CustomerID = c.CustomerID
				 JOIN Shippers s On o.ShipperID = s.ShipperID
                 JOIN OrderDetails od On o.OrderID = od.OrderID
                 JOIN Products p ON od.ProductID = p.ProductID
                 JOIN Categories ct On p.CategoryID = ct.CategoryID
ORDER BY 1,2; 





-- 연습3 :Seafood가 몇번 주문 되었는지 조회


SELECT count(*) FROM OrderDetails od JOIN Products p ON od.ProductID = p.ProductID
							  JOIN Categories ct On p.CategoryID = ct.CategoryID
WHERE ct.CategoryName = 'Seafood';                              


-- 내가한것
SELECT count(CategoryName)
FROM Customers c JOIN Orders o On o.CustomerID = c.CustomerID
				 JOIN Shippers s On o.ShipperID = s.ShipperID
                 JOIN OrderDetails od On o.OrderID = od.OrderID
                 JOIN Products p ON od.ProductID = p.ProductID
                 JOIN Categories ct On p.CategoryID = ct.CategoryID
                 WHERE CategoryName = 'seafood' ;


-- 연습4 : Seafood를 한번 이라도 주문 한적이 있는 고객 수 주회

SELECT c.CustomerID, c.CustomerName, ct.CategoryName FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
                       JOIN OrderDetails od ON o.OrderID = od.OrderID
                       JOIN Products p ON p.ProductID = od.ProductID
                       JOIN Categories ct ON p.CategoryID = ct.CategoryID
WHERE ct.CategoryName = 'Seafood'
ORDER BY 1;

SELECT count(DISTINCT c.CustomerID) FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
                       JOIN OrderDetails od ON o.OrderID = od.OrderID
                       JOIN Products p ON p.ProductID = od.ProductID
                       JOIN Categories ct ON p.CategoryID = ct.CategoryID
WHERE ct.CategoryName = 'Seafood'
ORDER BY 1;






