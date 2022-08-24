Provide a query that shows the most purchased Media Type.

SELECT m.Name, Count(t.MediaTypeId) 
FROM InvoiceLine il
Join Track t on il.TrackId = t.TrackId 
JOIN MediaType m ON m.MediaTypeId = t.MediaTypeId
GROUP BY m.Name 
ORDER BY Count(t.MediaTypeId) DESC
