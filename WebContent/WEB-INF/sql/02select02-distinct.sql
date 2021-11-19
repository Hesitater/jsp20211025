-- DISTINCT 키워드
-- : 중복 제거

SELECT City FROM Customers;

SELECT DISTINCT City FROM Customers;

SELECT * FROM Customers;
-- Customers 테이블의 Country 컬럼을 중복 제거해서 조회

SELECT Country FROM Customers;

SELECT DISTINCT Country FROM Customers;

-- 여러 컬럼 나열 가능
SELECT DISTINCT City, Country FROM Customers;






