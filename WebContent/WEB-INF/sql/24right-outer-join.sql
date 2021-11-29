USE test;


SELECT * FROM mytable27Customer;	-- 3,4,5,6
SELECT * FROM mytable28Tel;     -- 1,3,4 


SELECT * FROM mytable27Customer c JOIN mytable28Tel t ON c.id = t.customerId;

SELECT * FROM mytable27Customer c RIGHT OUTER JOIN mytable28Tel t ON c.id = t.customerId;
SELECT * FROM mytable27Customer c RIGHT JOIN mytable28Tel t ON c.id = t.customerId;


-- 주인 없는 전화번호
SELECT * 
FROM mytable27Customer c RIGHT JOIN mytable28Tel t ON c.id = t.customerId
WHERE c.id IS NULL;




-- 연습1 주문한 적 없는 고객명 조회
-- 사용테이블 : Customers, Orders
SELECT * FROM Customers;
SELECT * FROM Orders;

SELECT c.CustomerName 
FROM Orders o RIGHT JOIN Customers c On c.customerID = o.customerID
WHERE o.OrderID IS NULL
ORDER BY 1;
-- ORDER BY c.CustomerName;


-- 연습2 : 주문한 받은 적 없는 직원명 오름차순 조회
-- 사용테이블 :Employees, Orders
SELECT * FROM Employees;
SELECT * FROM Orders;


SELECT e.LastName, e.FirstName 
FROM Orders o RIGHT JOIN Employees e On o.EmployeeID = e.EmployeeID 
WHERE o.OrderID IS NULL
ORDER BY 1,2; 
-- ORDER BY e.LastName, e.FirstName; 



