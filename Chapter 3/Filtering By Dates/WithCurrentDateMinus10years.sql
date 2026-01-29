SELECT OrderID, CreationDate
FROM Orders
Where Year(CreationDate) > ('2023-01-29' - 10);