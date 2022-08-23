Which country's customers spent the most?
HINT: Use the MAX function on a subquery.


WITH cSum as (
SELECT BillingCountry, SUM(Total) as SalesTotal
FROM Invoice
GROUP BY BillingCountry
)
SELECT BillingCountry, SalesTotal
FROM cSum
WHERE SalesTotal = (
    SELECT MAX(SalesTotal) 
From cSum) 