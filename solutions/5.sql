SELECT Group.name AS 'Group name'
FROM Group
LEFT JOIN albums ON bands.id = albums.band_id
GROUP BY albums.band_id
HAVING COUNT(albums.id) = 0;