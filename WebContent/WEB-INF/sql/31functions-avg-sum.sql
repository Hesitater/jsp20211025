USE test;
-- avg
SELECT AVG(Price) FROM Products; -- '28.866364' -> 28.496282

-- sum
SELECT SUM(Price) FROM Products;


SELECT * FROM Products;

INSERT INTO Products (ProductName , SupplierID, CategoryID, Unit, Price)
VALUES ('My Prod',1 ,1, '1KG', 0 );

INSERT INTO Products (ProductName, SupplierID, CategoryID, unit)
VALUES ('My Prod',1 ,1, '1KG'); -- null 평균 계산에서 제외


-- 쿼리 안에 쿼리(nested query, subquery);
SELECT * FROM Employees
WHERE BirthDate = (SELECT MIN(BirthDate) FROM Employees);  


-- 연습 1: subQuery 사용해서 평균값 보다 이하인 성품 목록
SELECT * FROM Products 
WHERE Price <= (SELECT AVG(Price) FROm Products); -- <= 서브쿼리는 단일(1row)

-- 연습2:subQuery 사용해서 평균값 보다 이상인 성품 목록
SELECT * FROm Products 
WHERE Price >= (SELECT AVG(Price) FROM Products);


-- 연습 3: 1996-07-08에 주문한 상품의 총 수량 (Quantity)
-- 사용 테이블 : Orders, OrdersDetails



SELECT * FROM Orders, OrderDetails;

SELECT * 
FROM Orders o JOIN OrderDetails od On o.OrderID = od.OrderID
WHERE o.OrderDate = '1996-07-08';

SELECT Sum(od.Quantity)
FROM Orders o JOIN OrderDetails od On o.OrderID = od.OrderID
WHERE o.OrderDate = '1996-07-08';





