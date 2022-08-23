Which sales agent made the most in sales in 2009?

HINT: Use the MAX function on a subquery.

WITH eSum AS (
SELECT E.FirstName || " " || E.LastName AS FullName, sum(I.Total) AS SalesTotal
FROM Invoice I
JOIN Customer C on I.customerId = C.customerId
JOIN Employee E on C.SupportRepId = E.EmployeeId
WHERE InvoiceDate   
    BETWEEN '2009-01-01 00:00:00' AND '2009-12-31 23:59:59'
GROUP BY FullName
)
SELECT FullName, SalesTotal
FROM eSum
WHERE SalesTotal = (
    SELECT MAX(SalesTotal) 
From eSum)



