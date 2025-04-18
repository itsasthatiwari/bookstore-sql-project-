
-- View all books with authors
SELECT B.Title, A.Name AS Author, B.Price FROM Books B JOIN Authors A ON B.AuthorID = A.AuthorID;

-- View orders by customers
SELECT C.Name, B.Title, O.Quantity, O.OrderDate
FROM Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID
JOIN Books B ON O.BookID = B.BookID;

-- Total amount for each order
SELECT O.OrderID, C.Name, (B.Price * O.Quantity) AS TotalPrice
FROM Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID
JOIN Books B ON O.BookID = B.BookID;
