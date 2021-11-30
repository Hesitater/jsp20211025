use test;

SELECT * FROM Customers;

SELECT Country, count(CustomerID) FROM Customers
GROUP BY Country;

SELECT Country, count(CustomerID) people FROM Customers
WHERE people > 10
GROUP BY Country;


-- 그룹함수를 where절 쓸 수 없다.
SELECT Country, count(CustomerID) people FROM Customers
WHERE count > 10
GROUP BY Country;

SELECT Country, count(CustomerID) people FROM Customers
-- WHERE people > 10
GROUP BY Country
HAVING count(CustomerID) >= 10
-- HAVING people >= 10
;

-- 연습1 : 주문을 한 번만 한 사람들 조회 (CustomerName)
-- table : Orders, Customers


SELECT * FROM Orders;

SELECT CustomerID, (OrderID)  FROM Orders 
 GROUP BY CustomerID
;

SELECT o.CustomerID, c.CustomerName, count(OrderID)  
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY o.CustomerID
HAVING count(OrderID) = 1
;


-- 선택님 코드
-- 연습1 : 주문을 한 번만 한 사람들 조회 (CustomerName)
-- table : Orders, Customers
SELECT o.CustomerID, c.CustomerName, count(OrderID) 
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY o.CustomerID
HAVING count(OrderID) = 1
;


-- 연습2: 주문을 한번만 또는 한번도 안한(0) 사람들 조회 (CustomerID, CustomerName, 주문수)

SELECT o.CustomerID, c.CustomerName, count(OrderID)
FROM Orders o Right JOIN Customers c ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID
HAVING count(o.OrderID) <= 1
ORDER BY o.OrderID, c.CustomerName
;

-- 백t

SELECT c.CustomerID, c.CustomerName, count(OrderID) 
FROM Orders o RIGHT JOIN Customers c ON o.CustomerID = c.CustomerID
;


SELECT c.CustomerID, c.CustomerName, count(OrderID) count
FROM Orders o RIGHT JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerID
HAVING count(o.OrderID) <= 1
ORDER BY count, c.CustomerID;
;


-- 연습3 : 주문을 한번 또는 0번 받은 직원들 조회
SELECT e.EmployeeID, e.LastName, e.FirstName, count(o.OrderID)
FROM Employees e LEFT JOIN Orders o ON e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeID
HAVING count(o.OrderID) <= 1
;





-- 틀린 내답

SELECT e.LastName, e.FirstName ,count(o.OrderID) count
FROM Orders o RIGHT JOIN Employees e ON o.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID
HAVING count(o.OrderID) <= 1
ORDER BY count, e.EmployeeID
;


--
SELECT Country, City, COUNT(customerID) 
FROM 
	Customers
GROUP BY Country, City;



