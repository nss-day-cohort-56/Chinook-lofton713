Provide a query that shows the most purchased track(s) of 2013.

SELECT I.InvoiceDate, Il.Quantity, T.TrackId, T.Name
FROM Invoice AS i 
JOIN InvoiceLine Il ON i.InvoiceId = Il.InvoiceId
JOIN Track T on Il.TrackId = T.TrackId
WHERE i.InvoiceDate BETWEEN "2013-01-01" AND "2013-12-31"
GROUP By t.TrackId