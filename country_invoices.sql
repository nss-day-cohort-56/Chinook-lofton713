Provide a query that shows the total number of invoices per country.
HINT: GROUP BY



SELECT count(*) as NumInvoices, BillingCountry
FROM Invoice i 
GROUP BY BillingCountry