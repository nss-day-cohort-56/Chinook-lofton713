SELECT SUM(total)
FROM Invoice
WHERE InvoiceDate   
    BETWEEN '2009-01-01 00:00:00' AND '2009-12-31 23:59:59';

SELECT SUM(total)
FROM Invoice
WHERE InvoiceDate   
    BETWEEN '2011-01-01 00:00:00' AND '2011-12-31 23:59:59';