SELECT g.name, count(ge.author_id) FROM genre g
JOIN genre_author ge ON g.genre_id = ge.genre_id
GROUP BY g.name;

SELECT a.name, a.date, count(t.track_id) FROM album a
JOIN track t ON a.album_id = t.album_id
WHERE a.date BETWEEN 2019 and 2020
GROUP BY a.name, a.date;

SELECT a.name, AVG(t.duration) FROM album a
JOIN track t ON a.album_id = t.album_id
GROUP BY a.name;

SELECT au.name FROM author au
JOIN author_album aa ON au.author_id = aa.author_id
JOIN album a ON a.album_id = aa.album_id
WHERE a.date != 2020; 

SELECT c.name FROM collector c
JOIN collector_track ct ON c.collector_id = ct.collector_id
JOIN track t ON t.track_id = ct.track_id
JOIN album a ON a.album_id = t.album_id
JOIN author_album aa ON a.album_id = aa.album_id
JOIN author au ON au.author_id = aa.author_id
WHERE au.name LIKE 'Tim';

SELECT a.name FROM album a
JOIN author_album aa ON a.album_id = aa.album_id
JOIN author au ON au.author_id = aa.author_id
JOIN genre_author ga ON ga.author_id = au.author_id
JOIN genre g ON g.genre_id = ga.genre_id
GROUP BY au.name, a.name
HAVING count(ga.genre_id) > 1;

SELECT t.name FROM track t
LEFT JOIN collector_track ct ON t.track_id = ct.track_id
WHERE ct.track_id IS null;

SELECT au.name FROM author au
JOIN author_album aa ON au.author_id = aa.author_id
JOIN album a ON a.album_id = aa.album_id
JOIN track t ON t.album_id = a.album_id
WHERE duration = (SELECT MIN(duration) FROM track);

SELECT a.name , count(t.track_id) FROM album a
JOIN track t ON a.album_id = t.album_id
GROUP BY a.name 
HAVING count(t.track_id) in (
SELECT count(t.track_id) FROM album a
JOIN track t ON a.album_id = t.album_id
GROUP BY a.name
ORDER BY count(t.track_id)
limit 1);
