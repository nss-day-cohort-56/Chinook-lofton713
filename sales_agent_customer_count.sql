Provide a query that shows how many customers are assigned to each employee.
 The resultant table should include:
Employee full name
Total number of customers assigned to each employee (even if it's zero)


SELECT e.FirstName ||" "|| e.LastName AS FullName, COUNT(c.CustomerId) AS NumCustomer
FROM Customer as c
Join Employee as e on c.SupportRepId == e.EmployeeId
Join Invoice as i on i.CustomerId == c.CustomerId
GROUP BY FullName