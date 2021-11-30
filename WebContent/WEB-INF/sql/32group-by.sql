use test;

SELECT count(CustomerID) FROM Customers;

SELECT * FROM Customers
GROUP BY Country;

SELECT Country, count(CustomerID) FROM Customers
GROUP BY Country
ORDER BY 1;


-- 연습1 : 나라별 Supplier 수 조회
SELECT Country, count(SupplierID) FROM Suppliers
GROUP BY Country
ORDER BY 2;

-- 연습2 : 가장 많은 고객이 있는 나라(들) 조회 (T)
SELECT 
    *
FROM
    (SELECT 
        Country, COUNT(CustomerID) Count
    FROM
        Customers
    GROUP BY Country) B
WHERE
    count = (SELECT 
            MAX(Count)
        FROM
            (SELECT 
                Country, COUNT(CustomerID) Count
            FROM
                Customers
            GROUP BY Country) A);
            


-- 연습2: 가장 많은 고객이 있는 나라(들) 조회

SELECT * FROM Customers;

SELECT Country, count(CustomerID) FROM Customers
GROUP BY Country
ORDER BY 2 DESC;

SELECT * FROM Customers ORDER BY 1 DESC ;

SELECT Country, count(CustomerID) Count FROM Customers
GROUP BY Country;


SELECT Country, MAX(Count) FROM Customers, (
				SELECT count(CustomerID) Count FROM Customers
				GROUP BY Country) AS a
;

SELECT Country, count(CustomerID) Count FROM Customers
GROUP BY Country ORDER BY 2;



-- 연습3: 가자 적은 고객이 있는 나라 (들) 조회
SELECT Country, count(CustomerID) FROM Customers
GROUP BY Country ORDER BY 2;


SELECT 
    *
FROM
    (SELECT 
        Country, COUNT(CustomerID) Count
    FROM
        Customers
    GROUP BY Country) B
WHERE
    count = (SELECT 
            MIN(Count)
        FROM
            (SELECT 
                Country, COUNT(CustomerID) Count
            FROM
                Customers
            GROUP BY Country) A)
;


-- 연습 4 :  고객별 주문 수 조회 (CustomerID, 주문수)
-- table : Customers, Orders 

SELECT * FROM Customers, Orders;
SELECT * FROM Orders;

SELECT CustomerID, count(OrderID) '주문수'
FROM Orders 
GROUP BY CustomerID;

-- 고객이름도 같이 조회
SELECT o.CustomerID, c.CustomerName, count(OrderID) '주문수'
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY o.CustomerID;


-- 연습5 : 고객별로 주문한 총 주문한 수량
-- tables : Orders, OrderDetails

SELECT CustomerID, sum(Quantity) 
FROM Orders o JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY CustomerID
;


SELECT o.CustomerID, c.CustomerName, sum(Quantity) 
FROM Orders o JOIN OrderDetails od ON o.OrderID = od.OrderID
			  JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY CustomerID
;





