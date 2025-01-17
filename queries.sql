-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

 SELECT c.CategoryName , p.ProductName
 FROM Product as p
JOIN Category as c ON p.CategoryID = c.Id


-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT [Order].Id, Shipper.CompanyName
FROM [Order]
JOIN Shipper ON  Shipper.Id = ShipVia 
WHERE [Order].OrderDate < "2012-08-09"


-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT Product.ProductName, OrderDetail.Quantity
FROM Product
JOIN OrderDetail ON OrderDetail.ProductId = Product.Id
WHERE OrderDetail.OrderId = 10251


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT Product.ProductName, OrderDetail.Quantity
FROM Product
JOIN OrderDetail ON OrderDetail.ProductId = Product.Id
WHERE OrderDetail.OrderId = 10251