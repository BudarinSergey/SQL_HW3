SELECT "name", album_year  FROM albums
WHERE album_year = 2018;

SELECT "name" , truck_time FROM trucks
WHERE truck_time = (SELECT max(truck_time) FROM trucks);

SELECT "name" FROM trucks
WHERE truck_time >= 210;

SELECT "name" FROM collections
WHERE collection_year BETWEEN 2018 AND 2020;

SELECT "name" FROM musicians 
WHERE "name" NOT LIKE '% %';

SELECT "name" FROM trucks
WHERE "name" LIKE '%Me%';
