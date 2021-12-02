USE test;

-- 3개의 테이블 조인 (Orders, Customers, Employees;

SELECT * FROM Customers;
SELECT * FROM Employees; 
SELECT * FROM Orders;

-- Right, left join은 순서가 중요함 
-- 이 날짜에 누가 주문을 했나? 근데 이 고객이 어떤 직원에게 주문을했나?
SELECT c.customerName, o.OrderDate, o.EmployeeID, e.LastName, e.FirstName
FROM Customers c JOIN Orders o ON c.customerID = o.CustomerID
JOIN Employees e ON o.EmployeeID = e.EmployeeID
ORDER BY 1;



-- Orders 의  ShipperID  ,Shippers 의 ShipperID
-- 어떤 고객이 어떤 배송자(Shipper)를 사용했는 지 조회
-- 컬럼 :고객명, 주문 날짜, 배송자명 배송자 전화번호
-- 테이블: Customers, Orders, Shippers

SELECT c.ContactName, o,OrderDate, s.ShipperName, s.Phone
FROM Customers c JOIN Orders o On o.CustomerID = c.CustomerID
				 JOIN Shippers s On o.ShipperID = s.ShipperID
ORDER BY 1; 

-- 주문 상세 내용도 추가 내용
SELECT c.ContactName ,OrderDate, od.ProductID, od.Quantity, s.ShipperName, s.Phone
FROM Customers c JOIN Orders o On o.CustomerID = c.CustomerID
				 JOIN Shippers s On o.ShipperID = s.ShipperID
                 JOIN OrderDetails od On o.OrderID = od.OrderID
ORDER BY 1; 

-- 주문 상세 내용도 추가 조회2
SELECT c.ContactName ,OrderDate, od.ProductID, od.Quantity, s.ShipperName, s.Phone
FROM Customers c JOIN Orders o On o.CustomerID = c.CustomerID
				 JOIN Shippers s On o.ShipperID = s.ShipperID
                 JOIN OrderDetails od On o.OrderID = od.OrderID
                 JOIN Products p ON od.ProductID = p.ProductID
ORDER BY 1; 

-- 주문 상세 내용도 추가 조회3
SELECT c.ContactName ,o.OrderDate, p.ProductName, ct.CategoryName, od.Quantity, s.ShipperName, s.Phone
FROM Customers c JOIN Orders o On o.CustomerID = c.CustomerID
				 JOIN Shippers s On o.ShipperID = s.ShipperID
                 JOIN OrderDetails od On o.OrderID = od.OrderID
                 JOIN Products p ON od.ProductID = p.ProductID
                 JOIN Categories ct On p.CategoryID = ct.CategoryID
ORDER BY 1,2; 




-- 내가 한것


SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM Shippers;

SELECT c.ContactName, o.OrderDate, s.ShipperName, s.Phone
FROM Orders o JOIN  Shippers s ON o.ShipperID = s.ShipperID
JOIN Customers c ON o.CustomerID = c.CustomerID
ORDER BY 1;



SELECT * FROM OrderDetails;
SELECT * FROM OrderDetails, Orders;
desc OrderDetails;

SELECT c.CustomerName, o.OrderDate, s.ShipperName, s.Phone, od.Quantity
FROM Orders o JOIN  Shippers s ON o.ShipperID = s.ShipperID
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN OrderDetails od On od.Quantity < 20;












