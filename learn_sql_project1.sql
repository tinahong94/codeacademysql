--TRUNCATE friends;
--DROP TABLE friends;
BEGIN;
--Create a table named friends with the following columns: id, name, and birthday
CREATE TABLE friends (id SERIAL PRIMARY KEY, name TEXT, birthday DATE);

--Add Jane Doe to friends. Her birthday is May 19th, 1993. Add three more of your friends to friends.
INSERT INTO friends (name, birthday)
VALUES
('Jane Doe', '1993-05-19'),
('Yixin Xia', '1989-07-07'),
('Tina Hong', '1994-03-2'),
('David Liou', '1989-12-10');

--Jane Doe just got married! Her new last name is Smith. Update her record in your database.#
UPDATE friends
SET name = 'Jane Smith' WHERE id = 1;

--Add a new column to your table named email#
ALTER TABLE friends
ADD email TEXT; 

--Update the email address for each friend in your table. Jane Doe's email is jdoe@example.com

UPDATE friends
SET email = 'jdoe@example.com' WHERE id = 1;

UPDATE friends
SET email = 'yxia@utexas.edu' WHERE id = 2;

UPDATE friends
SET email = 'shishi@utexas.edu' WHERE id = 3;

UPDATE friends
SET email = 'davidliou@utexas.edu' WHERE id = 4;

--Jane Doe is not a real person. Remove her from friends.
DELETE FROM friends WHERE id = 1;

SELECT * FROM friends;


--Create table named company with columns with id: serial primary key, name: text
CREATE TABLE company (id SERIAL PRIMARY KEY, name TEXT);

--Add new column to friends company_id: integer (foreign key to company table)
ALTER TABLE friends	ADD column company_id INTEGER;
SELECT * FROM friends;

--Insert records into company Apple, IBM
INSERT INTO company (name)
VALUES 
('Apple'),
('IBM');

--Yixin works at Apple, David works at IBM, Tina works at Apple
UPDATE friends
SET company_id = 1 WHERE email = 'yxia@utexas.edu';

UPDATE friends
SET company_id = 1 WHERE email = 'shishi@utexas.edu';

UPDATE friends
SET company_id = 2 WHERE email = 'davidliou@utexas.edu';

SELECT * FROM friends JOIN company ON friends.company_id = company.id;
COMMIT;

ROLLBACK;
