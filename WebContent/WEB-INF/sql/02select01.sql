-- A 테이블의 내용을 읽을 때
 -- SELECT 와 FROM 조합으로 작성
 -- SELECT : 조회찰 열 (columns) 명시
 -- FROM : Table 명 작성
 
 SELECT * FROM Customers; -- Cusotmers 테이블 조회
 
 -- Employees 테이블 조회
 SELECT * FROM Employees;
 
 -- 조회할 열 선택
 SELECT LastName, FirstName FROM Employees;
 
 -- Customers 테이블의 CustomerName, Country Column만 조회
 SELECT CustomerName, Country FROM Customers;
 
 SELECT customername, country FROM Customers;
 
 -- 모든 컬럼 조회 : *
 SELECT * FROM Customers;
 
 
 -- 테이블 컬럼(and 제약사항) 조회
 DESCRIBE Customers;
 DESC Customers;
 
 DESC Employees;
 
 -- Categories 테이블의 컬럼을 조회
 DESCRIBE Categories;
 DESC Categories;
 
 
 
 
 
 
 
 
 
 