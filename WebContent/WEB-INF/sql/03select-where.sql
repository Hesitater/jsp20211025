SELECT * FROM Customers;

-- WHERE : 조건에 해당하는 행(row, record))만 필터

SELECT * FROM Customers WHERE Country = 'Brazil'; -- sql에서 문자열 작은 따옴표 사용

-- Customers 테이블에서 Country가 France인 행만 조회

SELECT * FROM Customers WHERE Country = 'France';
SELECT * FROM Customers WHERE Country = 'france';  -- 대소문자 구분 안함
SELECT CustomerName, Address, City FROM Customers WhERE Country = 'France';

-- where에서 사용할 수 있는 연산자들
SELECT * FROM Customers WHERE CustomerID > 50;
SELECT * FROM Customers WHERE CustomerID < 5;

SELECT * FROM Customers WHERE CustomerID >= 89;
SELECT * FROM Customers WHERE CustomerID <= 5;

SELECT * FROM Customers WHERE CustomerID <> 1;   -- 같지 않다
SELECT * FROM Customers WHERE CustomerID != 1;   -- 같지 않다

SELECT * FROM Customers WHERE ContactName > 'e';
SELECT * FROM Customers WHERE ContactName <= 'c';

-- Employees 테이블의 EmployeeID를 사용해서 위 연산자 연습
SELECT * FROm Employees WHERE EmployeeID <= 2;
SELECT * FROM Employees WHERE EmployeeID > 5;
 
SELECT * FROM Employees WHERE EmployeeID <> 1;
SELECT * FROM Employees WHERE EmployeeID BETWEEN 2 and 5;

SELECT * FROM Customers WHERE City IN ('Paris','London');

-- 비교 연산 사용시 주의
SELECT * FROM Customers WHERE CustomerID = 1;    -- number와 string 연산시 형변환 일어남 (stirng -> number)
SELECT * FROM Customers WHERE CustomerID = '1';

SELECT * FROM Customers WHERE CustomerID <= '3';

SELECT * FROM Customers WHERE Country >= 'Mexico';  -- 사전순 (캐릭터 코드) 비교
SELECT * FROM Customers WHERE Country < 'Mexico';

SELECT * FROM Customers WHERE Country >= 'mexico';  -- 대소문자 구분 안함







