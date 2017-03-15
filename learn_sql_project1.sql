#Create a table named friends with the following columns: id, name, and birthday
CREATE TABLE friends (id INTEGER, name TEXT, birthday TEXT);

#Add Jane Doe to friends. Her birthday is May 19th, 1993. Add three more of your friends to friends.
INSERT INTO friends (id, name, birthday)
VALUES
(1, "Jane Doe", "May 19th, 1993"),
(2, "Yixin Xia", "July 7th, 1989"),
(3, "Tina Hong", "March 2nd, 1994"),
(4, "David Liou", "December 10th, 1989");

#Jane Doe just got married! Her new last name is Smith. Update her record in your database.#
UPDATE friends
SET name = "Jane Smith" WHERE id = 1;

#Add a new column to your table named email#
ALTER TABLE friends
ADD email TEXT; 

#Update the email address for each friend in your table. Jane Doe's email is jdoe@example.com
UPDATE friends
SET email = "jdoe@example.com" WHERE id = 1;

UPDATE friends
SET email = "yxia@utexas.edu" WHERE id = 2;

UPDATE friends
SET email = "shishi@utexas.edu" WHERE id = 3;

UPDATE friends
SET email = "davidliou@utexas.edu" WHERE id = 4;

#Jane Doe is not a real person. Remove her from friends.
DELETE FROM friends WHERE id = 1;

SELECT * FROM friends;
