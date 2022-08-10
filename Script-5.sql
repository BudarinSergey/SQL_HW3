SELECT c."name" , count(m."name") 
FROM categories AS c
JOIN categ_musicians AS cm ON c.id = cm.id_category 
JOIN musicians AS m  ON m.id = cm.id_musician
GROUP BY c."name" ;

/* количество треков, вошедших в альбомы 2019-2020 годов; 
Вариант №1
 */
SELECT a.album_year, count(t."name") AS time_count
FROM albums AS a 
JOIN trucks AS t ON t.id_album = a.id 
WHERE a.album_year BETWEEN 2018 and 2020
GROUP BY a.album_year;

/*количество треков, вошедших в альбомы 2019-2020 годов;
Вариант № 2
 */

CREATE VIEW common_time1 AS 
SELECT a.album_year, count(t."name") AS time_count1
FROM albums AS a 
JOIN trucks AS t ON t.id_album = a.id 
WHERE a.album_year BETWEEN 2018 and 2020
GROUP BY a.album_year;

SELECT sum(time_count1)
FROM common_time1




SELECT a."name", round(avg (t.truck_time),2)
FROM albums a 
JOIN trucks t ON t.id_album = a.id 
GROUP BY a."name";

SELECT m."name" AS name1
FROM musicians m 
WHERE m."name" NOT IN (
SELECT m."name" FROM musicians m
JOIN music_albums ma ON m.id= ma.id_musician 
JOIN albums a ON a.id = ma.id_album
WHERE album_year = 2020)
ORDER BY m."name" ;

SELECT c."name" FROM collections c 
JOIN truck_collections tc ON c.id = tc.id_collection 
JOIN trucks t ON tc.id_truck = t.id 
JOIN albums a ON t.id_album = a.id 
JOIN music_albums ma ON a.id = ma.id_album 
JOIN musicians m ON ma.id_musician = m.id 
WHERE m."name" = 'Queen'
ORDER BY c."name" ;

SELECT a."name" FROM albums a 
JOIN music_albums ma ON a.id = ma.id_album 
JOIN musicians m ON ma.id_musician = m.id 
JOIN categ_musicians cm ON m.id =cm.id_musician 
JOIN categories c ON cm.id_category = c.id 
GROUP BY a."name" 
HAVING count(c."name") > 1;

SELECT t."name" FROM trucks t 
FULL JOIN truck_collections tc ON t.id = tc.id_truck 
WHERE tc.id_truck  is NULL ;

SELECT m."name", t.truck_time  FROM trucks t
JOIN albums a ON t.id_album = a.id 
JOIN music_albums ma ON a.id = ma.id_album 
JOIN musicians m ON ma.id_musician = m.id 
GROUP BY m."name" , t.truck_time 
HAVING t.truck_time = (SELECT min(truck_time) FROM trucks);


/* название альбомов, содержащих наименьшее количество треков.
 */
CREATE VIEW name_alb_truck as
SELECT a."name" AS name_alb, t."name"  FROM albums a 
JOIN trucks t ON a.id = t.id_album 
GROUP BY a."name" , t."name";

SELECT nat.name_alb FROM name_alb_truck nat 
GROUP BY nat.name_alb 
ORDER BY count(*) ASC 
LIMIT 1

