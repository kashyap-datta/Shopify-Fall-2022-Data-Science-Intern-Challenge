-- a
SELECT COUNT(o.OrderID),o.EmployeeID, e.LastName FROM Orders as o
join Employees as e
ON o.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID 
ORDER BY COUNT(o.OrderID) DESC
LIMIT 1
-- Ans: 54

-- b
SELECT p.ProductName, SUM(od.Quantity) AS TotalQuantity
FROM Orders AS o, OrderDetails AS od, Customers AS c, Products AS p
WHERE c.Country = "Germany" AND od.OrderID = o.OrderID AND od.ProductID = p.ProductID AND c.CustomerID = o.CustomerID
GROUP BY p.ProductID
ORDER BY TotalQuantity DESC
LIMIT 1;
-- Ans: Peacock

-- c
SELECT p.ProductName, od.OrderID, SUM(od.Quantity) as Total_Quantity, o.CustomerID, c.Country
FROM Products as p
LEFT JOIN OrderDetails as od
ON p.ProductID = od.ProductID
LEFT JOIN Orders as o
ON od.OrderID = o.OrderID
LEFT JOIN Customers as c
ON o.CustomerID = c.CustomerID
WHERE c.Country = "Germany"
GROUP BY p.ProductName
ORDER BY Total_Quantity DESC
LIMIT 1;
-- Ans: Boston Crab Meat


