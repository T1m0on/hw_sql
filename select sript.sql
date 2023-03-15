SELECT name, date FROM album    
	WHERE date = 2018;

SELECT name, duration FROM track    
	ORDER BY duration DESC
	LIMIT 1;
	
SELECT name FROM track 
	WHERE duration >= 210;
	
SELECT name FROM collector 
	WHERE date BETWEEN 2018 and 2020;
	
SELECT name FROM author
	WHERE name NOT LIKE '%% %%';
	
SELECT name FROM track
	where name LIKE '%%My%%' or name like '%%мой%%';