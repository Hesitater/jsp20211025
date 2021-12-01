USE test;

SELECT * FROM Customers
WHERE CustomerName = 'Alfreds Futterkiste';

SELECT * FROM Customers
WHERE CustomerName LIKE 'Alf%'; -- % 아무거나 0개이상 일치

SELECT * FROM Customers
WHERE CustomerName LIKE 'A%'; --  아무거나 0개이상 일치

SELECT * FROM Customers
WHERE CustomerName LIKE '%A'; -- A로 끝나는~


SELECT * FROM Customers
WHERE CustomerName LIKE '%A%'; -- 중간 a가 있기만하면~

-- 연습 1 : Employees 에서 LastName 에 'u'에 포함된 직원들 조회
SELECT * FROM Employees
WHERE LastName Like '%u%';

-- dustmq 2 : Employees에서 Notes 'BA'가 포함된 직원들 조회

SELECT * FROM Employees
WHERE Notes Like '%BA%';

SELECT * FROM Customers
WHERE CustomerName LIKE '%Ernst Hande_%'; -- 언더바( _ ): 한글자 아무거나

-- 연습3 : dao의 쿼리
SELECT employeeID, lastName, firstName, birthDate, notes
FROM Employees
WHERE note LIKE ?
	  OR lastName LIKE?
      OR firstName LIKE?;



