Provide a query that shows all Invoices. The resultant table should include:
InvoiceId
The total number of line items on each invoice

SELECT I.InvoiceId, count(*) as NumOfItems
FROM InvoiceLine I
GROUP BY I.InvoiceId