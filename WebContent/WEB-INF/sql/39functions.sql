USE test;


-- CONCAT : 스트링 연결 함수
SELECT concat('abc', 'def') AS newStr;

SELECT EmployeeID, concat(LastName, ', ',FirstName) name, BirthDate, Notes FROM Employees;

-- SUBSTR : 부분문자열 

SELECT substr('hello world',1 , 5);
SELECT substr('hello world',1 ,4); -- (원본문자열, 시작위치 (1부터 시작), 길이)
SELECT substr('hello world',7 ,5 );

SELECT * FROM Employees;
SELECT LastName, substr( e.lastName, 1, 4) FROM Employees e;

-- IFNULL : null 을 다른 값으로
SELECT * FROM Customers ORDER BY CustomerID DESC;
SELECT CustomerName, IFNULL(ContactName, 'none'), ContactName FROM Customers
ORDER BY CustomerId DESC;


-- coaleasce : 첫번째로 null 아닌값
SELECT coalesce(null, null, 'hello', null, 'world');

SELECT CustomerName, coalesce(ContactName, 'none') FROM Customers ORDER BY CustomerID DESC;


-- now
SELECT now();

-- 연습 : Customers 테이블 조회
--      단, Address, City, PostalCode, Country 컬럼을
--          ','를 구분자로 하여 연결된 값을 
--          FullAddress라는 컬럼으로 조회
--          또한 Address, City, PostalCode, Country 중 null값인 경우 빈 스트링'' 으로 연결 

-- 샘 답
SELECT 
    CustomerID,
    CustomerName,
    ContactName,
    CONCAT(IFNULL(Address, ''),
            ', ',
            IFNULL(City, ''),
            ', ',
            IFNULL(PostalCode, ''),
            ', ',
            IFNULL(Country, '')) FullAddress
FROM
    Customers;

SELECT CustomerName, IFNULL(ContactName, 'none'), ContactName FROM Customers
ORDER BY CustomerId DESC;


-- 내답 ( NULL일때에 하는걸 처리 못함)
SELECT CustomerID, CustomerName, ContactName, 
	concat(Address, ', ' , City, ', ', PostalCode,', ', Country ) FullAddress FROM Customers;




