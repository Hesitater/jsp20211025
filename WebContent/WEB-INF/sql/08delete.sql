USE test;

SELECT * FROM Customers ORDER BY CustomerID DESC;
SELECT * FROM Suppliers ORDER BY SupplierID DESC;

DELETE FROM Customers WHERE CustomerID = 105 ;
-- DELETE FROM Customers WHERE CustomerID = ? ;

DELETE FROM Customers WHERE Address = 'jh';

-- DELETE FROM CUstomers; -- 이런거 하면안되요 
SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;


SELECT * FROM Customers ORDER BY CustomerID DESC;
SELECT * FROM Suppliers ORDER BY SupplierID DESC;











