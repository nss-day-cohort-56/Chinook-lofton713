SELECT e.FirstName ||" "|| e.LastName AS FullName, i.InvoiceId FROM Customer as c
Join Employee as e on c.SupportRepId == e.EmployeeId
Join Invoice as i on i.CustomerId == c.CustomerId
