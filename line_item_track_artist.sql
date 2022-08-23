Provide a query that shows each Invoice line item, 
with the name of the track that was purchase,
and the name of the artist.

SELECT i.InvoiceLineId,	i.InvoiceId, i.TrackId, i.UnitPrice, i.Quantity, t.TrackId, t.name, Ar.Name as Artist
FROM InvoiceLine as i 
Join Track t ON i.TrackId = t.TrackId
Join Album a on t.AlbumId = a.AlbumId
JOIN Artist Ar on a.ArtistId = Ar.ArtistId
Order BY InvoiceId