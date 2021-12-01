USE test;


SELECT * FROM Customers
WHERE Country = 'Germany'
	OR Country = 'Mexico'
    OR Country = 'USA';

-- IN 사용하는법, 위 아래 같은 코드임 같은 결과나옴
SELECT * FROM Customers
WHERe Country IN ('Germany','Mexico', 'USA');

--  IN() 이 아닌 것들
SELECT * FROm Customers
WHERE Country NOT IN ('Germany','Mexico','USA');

SELECT * FROm Suppliers;
-- 연습1 : 국가가 'USA', 'UK'인 SUpplier들 조회 (IN 키워드 사용)

SELECT * FROM Suppliers
WHERE Country IN ('USA','UK')
ORDER BY Country;

-- 연습2 : 국가가 'USA', 'UK'가 아닌 SUpplier들 조회 (NOT IN 키워드 사용)
SELECT * FROM Suppliers
WHERE Country NOT IN ('USA', 'UK')
ORDER BY Country;

-- 연습3 : Meat 또는 Seafood 카테고리에 속한 상품명 조회

SELECT * FROM Products;
SELECT * FROM Categories;
SELECT * FROM Products, Categories;

SELECT p.ProductID, p.ProductName, c.CategoryName
FROM Categories c JOIN Products p ON c.CategoryID = p.CategoryID
WHERE CategoryName IN ('Meat/Poultry', 'seafood');


SELECT p.ProductID, p.ProductName, c.CategoryName
FROM Categories c JOIN Products p ON c.CategoryID = p.CategoryID
WHERE CategoryName LIKE '%Meat%' OR 
		CategoryName LIKE '%seafood%';


SELECT p.ProductID, p.ProductName, c.CategoryName
FROM Categories c JOIN Products p ON c.CategoryID = p.CategoryID
WHERE CategoryName LIKE '%Meat%' OR CategoryName IN ('seafood');



-- SUBQUERY 활용
SELECT * FROM Categories WHERE CategoryName IN ('Meat/Poultry', 'seafood'); -- 아래 in 안에 들어가면 되죠?

SELECT * FROM  Products WHERE CategoryID IN (6,8);

-- 위 2개 코드 합친것
SELECT * FROM  Products 
WHERE CategoryID IN (SELECT CategoryID  FROM Categories WHERE CategoryName IN ('Meat/Poultry', 'seafood'));


-- 연습 4: Supplier가 있는 나라에 살고 있는 고객 목록 조회

SELECT * FROM Suppliers;
SELECT * FROM Customers;

SELECT Country FROM Suppliers;

-- 선생님 답
SELECT * FROM Customers
WHERE Country IN (SELECT country FROM Suppliers);

-- 멍청한 내답
SELECT * FROM Customers c
WHERE Country IN (SELECT Country FROM Suppliers s WHERE Country IN ( c.Country)) ORDER BY CustomerID;







