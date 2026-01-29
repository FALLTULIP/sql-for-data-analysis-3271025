SELECT state, COUNT(OrderID)
FROM Customer
INNER JOIN Orders on Orders.customerID=Customer.customerID
GROUP BY state; 