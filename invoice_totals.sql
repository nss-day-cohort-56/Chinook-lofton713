SELECT total, c.FirstName || " " || c.LastName AS FullName, BillingCountry, e.FirstName || " " || e.LastName AS EmpFullName 
From Invoice as i
JOIN Customer as c on I.CustomerId == c.CustomerId
Join Employee as e on c.SupportRepId == e.EmployeeId