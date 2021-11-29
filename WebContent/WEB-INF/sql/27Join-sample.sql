USE test;

SELECT * FROM Categories;
SELECT * FROM Products;
SELECT * FROm Categories , Products;


SELECT p.ProductID, p.ProductName, c.CategoryName, p.Unit, p.Price
FROM   Products p JOIN Categories c ON  p.CategoryID = c.CategoryID
ORDER BY 3, 2;


-- JDBC39Servlet
SELECT 
    c.CategoryName, p.ProductName, p.Unit, p.Price
FROM
    Products p
        JOIN
    Categories c ON p.CategoryID = c.CategoryID
ORDER BY 1 , 2;

DESC Products;












