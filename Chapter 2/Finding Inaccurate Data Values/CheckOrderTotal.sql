SELECT OrderItem.OrderId,
  Orders.TotalDue,
  ROUND(SUM(Price * Quantity),2) as NewTotalDue
FROM OrderItem
  JOIN Product ON OrderItem.ProductID = Product.ProductID
  JOIN Orders ON OrderItem.OrderID = Orders.OrderID
GROUP BY OrderItem.OrderId,
  Orders.TotalDue
HAVING Orders.TotalDue < ROUND(SUM(Price * Quantity),2); 