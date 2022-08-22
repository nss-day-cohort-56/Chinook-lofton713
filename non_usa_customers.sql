SELECT FirstName || " " || LastName AS FullName ,CustomerId, Country from Customer
Where Country != 'USA';