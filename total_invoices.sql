SELECT count(*) FROM Invoice as i 
WHERE i.InvoiceDate BETWEEN "2009-01-01" AND "2009-12-31"
    OR i.InvoiceDate BETWEEN "2011-01-01" AND "2011-12-31"
