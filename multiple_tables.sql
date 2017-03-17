--create a table named tracks with an id, title, and album_id column. The id column should be the PRIMARY KEY
CREATE TABLE tracks (id SERIAL PRIMARY KEY, title TEXT, album_id INTEGER);

--"Smooth Criminal" is a track from Michael Jackson's 'Bad' album. Add this track to the database
SELECT * FROM albums;
INSERT INTO tracks (title, album_id) VALUES ( 'Smotth Criminal', 8);

--Add more tracks to the database
INSERT INTO tracks (title, album_id) VALUES ( 'Money', 11);

--Combine the albums and tracks tables using an INNER JOIN. Order the query by album_id.
SELECT t.*
	FROM tracks t 
	JOIN albums a ON
  	t.album_id = a.id
    ORDER BY t.album_id; 

--Combine the albums and artists table using a LEFT OUTER JOIN. Let albums be the left table.
SELECT *
	FROM albums al
  LEFT JOIN artists ar ON
  	al.artist_id = ar.id;

--Combine the albums and artists table using a LEFT OUTER JOIN. Let artists be the left table.
SELECT *
	FROM artists ar
  LEFT JOIN albums al ON
  	ar.id = al.artist_id ;

--Use any join you like to combine the albums and tracks table. Rename the album_id column to Albums.
SELECT a.*, t.album_id AS 'Albums', t.id, t.title
	FROM albums a
  	JOIN tracks t ON
    	a.id = t.album_id;

