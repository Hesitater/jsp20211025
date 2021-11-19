SELECT * FROM Customers WHERE CustomerID < 10;

SELECT * FROM Customers WHERE Country = 'Mexico';

-- AND : 두 조건 모두 만족
SELECT * FROM Customers WHERE CustomerID < 10 AND Country = 'Mexico';

-- Customers 테이블에서 Country 가 Germany 이고 City가 Berlin 인 행 조회
SELECT * FROM Customers WHERE Country = 'Germany';
SELECT * FROM Customers WHERE City = 'Berlin';

SELECT * FROM Customers WHERE Country = 'Germany' AND City = 'Berlin';

-- Customers 테이블에서 Country 가 Germany 이고 City가 Berlin 인 행의 CustomerName 조회
SELECT CustomerName FROM Customers WHERE Country= 'Germany' AND City = 'Berlin';

-- OR : 두 조건 중 하나만 만족
SELECT * FROM Customers WHERE City ='Paris' OR Country = 'UK';

-- Customers 테이블에서 Country Germany 이거나 Country 가 Spain 인 행 조회
SELECT * FROM Customers WHERE Country = 'Germany' OR  Country = 'Spain';

-- NOT : 조건에 해당하지 않는 것
SELECT * FROM Customers WHERE NOT Country ='UK';   -- Country != 'UK' 도 가능

-- Customers 테이블에서 Country가 Germany 가 아닌 행 조회 (NOT 키워드 사용)
SELECT * FROM Customers WHERE NOT Country = 'Germany';

-- Customers 테이블에서 Country가 Germany이고 City가 Berlin 이거나 Country가 Germany이고 City가 München인것
SELECT * FROM Customers WHERE Country='Germany' AND (City='Berlin' OR City='München');

-- 나라는 독일이고 도시는 베를린이나 뮌헨이 아닌 행 조회
-- Customers 테이블에서 Country가 Germany이고 City가 Berlin 이거나 München가 아닌것
SELECT * FROM Customers WHERE Country='Germany' AND NOT (City='Berlin' OR City='München');
SELECT * FROM Customers WHERE Country='Germany' AND (City!='Berlin' OR City !='München');

-- Customers 테이블에서 Country 가 Germany가 아니고 Country가 USA가 아닌것
SELECT * FROM Customers WHERE NOT Country='Germany' AND NOT Country='USA';

-- Customers 테이블에서 Country 가 Germany 이거나 USA 인것
SELECT * FROM Customers WHERE Country = 'Germany' OR Country='USA';
SELECT * FROM Customers WHERE NOT Country!='Germany' OR NOT Country!='USA';



SELECT COUNT(DISTINCT Country) FROM Customers;


