Provide a query that shows all the Tracks, but displays no IDs.
The resultant table should include:
Album name
Media type
Genre

SELECT T.Name, Al.Title as Album, M.Name as MediaType, G.Name as Genre 
FROM Track T 
JOIN Album Al on T.AlbumId = Al.AlbumId
JOIN MediaType M on T.MediaTypeId = M.MediaTypeId
JOIN Genre G on G.GenreId = T.GenreId