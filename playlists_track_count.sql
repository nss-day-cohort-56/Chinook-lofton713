Provide a query that shows the total number of tracks in each playlist.
The resultant table should include:
-Playlist name
-Total number of tracks on each playlist

SELECT P.Name, COUNT(P.Name)
FROM Playlist P 
Join PlaylistTrack Pt on P.PlaylistId = Pt.PlaylistId
Join Track T on Pt.TrackId = T.TrackId
GROUP BY P.PlaylistId