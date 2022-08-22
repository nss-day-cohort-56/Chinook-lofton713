Select FirstName || " " || LastName AS FullName , InvoiceId, InvoiceDate, BillingCountry
FROM Invoice
INNER JOIN Customer on Customer.CustomerId = Invoice.CustomerId
WHERE BillingCountry == 'Brazil'
