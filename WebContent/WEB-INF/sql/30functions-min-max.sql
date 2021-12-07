use test;


SELECT MIN(Price) AS SmallestPrice FROM Products;
SELECT MAX(Price) LargestPrice FROM Products; 		-- AS 생략 가능

-- Employees테이블에서 BirthDate  가장 이른 생일, 늦은 생일조회 

SELECT * FROM Employees;
SELECT MIN(BirthDate) 느린날짜 FROM Employees; 
SELECT MAX(BirthDate)  FROM Employees;

-- 쿼리 안에 쿼리(nested query, subquery);
SELECT * FROM Employees
WHERE BirthDate = (SELECT MIN(BirthDate) FROM Employees);  -- 주의 : 연산자 사용시  subquery결과는 단일 (1row)

-- 연습1:  가장 나중에 태어난 사람(들)
SELECT 
    *
FROM
    Employees
WHERE
    BirthDate = (SELECT 
            MAX(BirthDate)
        FROM
            Employees);

-- 연습2:  가장 저렴한 가격의 상품(들) 조회
SELECT * FROM Products
WHERE Price = (SELECT min(Price) FROM Products);

-- 연습3: 가장 비싼 가격의 상품(들) 조회
SELECT * FROM  Products
WHERE Price = (SELECT Max(Price) FROM Products);



