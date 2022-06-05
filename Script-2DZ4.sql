SELECT title, year_of_issue FROM album
	WHERE year_of_issue = 2018;
SELECT title, MAX(duration) FROM songs
	GROUP BY title, duration
	HAVING duration = (SELECT MAX(duration) FROM songs);	 
SELECT title, duration FROM songs
	WHERE duration < 3.5;	
SELECT name, year_of_issue FROM compilation
	WHERE year_of_issue BETWEEN 2018 AND 2020;	
SELECT title FROM songs
	WHERE title ILIKE '%%мой%%';
SELECT name FROM executor
	WHERE NOT name LIKE '%% %%';	