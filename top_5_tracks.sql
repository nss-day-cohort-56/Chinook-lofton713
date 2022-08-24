Provide a query that shows the top 5 most purchased tracks over all.

SELECT T.TrackId, T.Name, COUNT(T.TrackId) AS NumSold
FROM Invoice AS i 
JOIN InvoiceLine Il ON i.InvoiceId = Il.InvoiceId
JOIN Track T on Il.TrackId = T.TrackId
GROUP By T.TrackId
ORDER BY NumSold DESC
LIMIT 5



SELECT t.TrackId, t.Name, Count(t.Name) AS Sold
FROM InvoiceLine il
Join Track t on il.TrackId = t.TrackId 
GROUP BY t.TrackId
ORDER BY Sold DESC
LIMIT 5 

