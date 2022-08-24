Provide a query that shows the top 3 best selling artists.

SELECT T.TrackId, T.Name, Ar.Name AS Artist, COUNT(Ar.name) as Dowloads
FROM Invoice AS i 
JOIN InvoiceLine Il ON i.InvoiceId = Il.InvoiceId
JOIN Track T on Il.TrackId = T.TrackId
JOIN Album A on T.AlbumId = A.AlbumId
JOIN Artist Ar on A.ArtistId = Ar.ArtistId
GROUP By Ar.Name
ORDER By COUNT(Ar.name) DESC
LIMIT 3

