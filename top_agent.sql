Which sales agent made the most in sales over all?

WITH eSum AS (
SELECT E.FirstName || " " || E.LastName AS FullName, sum(I.Total) AS SalesTotal
FROM Invoice I
JOIN Customer C on I.customerId = C.customerId
JOIN Employee E on C.SupportRepId = E.EmployeeId
WHERE InvoiceDate   
   
GROUP BY FullName
)
SELECT FullName, SalesTotal
FROM eSum
WHERE SalesTotal = (
    SELECT MAX(SalesTotal) 
From eSum)