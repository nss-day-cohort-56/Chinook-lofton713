Provide a query that shows total sales made by each sales agent.
The resultant table should include:
Employee full name
Total sales for each employee (all time)

SELECT E.FirstName || " " || E.LastName AS FullName, sum(I.Total)
FROM Invoice I 
JOIN Customer C on I.customerId = C.customerId
JOIN Employee E on C.SupportRepId = E.EmployeeId
GROUP BY FullName
