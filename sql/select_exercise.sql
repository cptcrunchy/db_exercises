# Before each item, output a caption explaining the results:
# The name of all albums by Pink Floyd.
# The year Sgt. Pepper's Lonely Hearts Club Band was released
# The genre for Nevermind
# Which albums were released in the 1990s
# Which albums had less than 20 million certified sales
# All the albums in the rock genre. Is this all the rock albums in the table?
USE music;

#This search query is for all albums by Pink Floyd.
SELECT * FROM albums WHERE artist = 'Pink Floyd';

#This search query is for the year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT artist, album_name, release_date FROM albums where album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';
#This search query is for the genre for Nevermind
SELECT genre FROM albums WHERE album_name = 'Nevermind';
#This search query is for albums released in the 1990s
SELECT * FROM albums WHERE release_date BETWEEN '1990' AND '1999';
#This search query is for albums which had less than 20 million certified sales
SELECT * FROM albums WHERE sales < '20.0';
#This search query is for all the albums ONLY in the rock genre.
SELECT * FROM albums WHERE genre = 'Rock';
#This search query is for all the albums that had 'rock' in their genre.
SELECT * FROM albums WHERE genre LIKE '%Rock%';