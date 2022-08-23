Provide a query that shows each Invoice line item, with the name of the track
that was purchased.

SELECT i.InvoiceLineId,	i.InvoiceId, i.TrackId, i.UnitPrice, i.Quantity, t.TrackId, t.name
FROM InvoiceLine as i 
Join Track t ON i.TrackId = t.TrackId
Order BY InvoiceId
-- GROUP BY InvoiceId