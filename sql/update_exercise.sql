USE music;

SELECT 'All albums in albums table' as '';
SELECT * FROM albums;
UPDATE albums SET sales = (sales * 10);

SELECT 'All albums released before 1980' as '';
SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = '1800' WHERE release_date < 1980;

SELECT 'All albums by Michael Jackson' as '';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
