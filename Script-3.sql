INSERT INTO musicians
VALUES
    (01,'Queen'),
    (02,'Bach J.S.'),
    (03,'Elton Jon'),
    (04,'Rammstein'),
    (05,'IC/DC'),
    (06,'Tcaikovskiy P.I.'),
    (07,'Mikael Jakson'),
    (08,'Babkina N.'),
    (09,'Elvis Presley'),
    (10,'Bob Marley'),
    (11,'Nirvana'),
    (12,'Beatles');   
    
INSERT INTO categories 
VALUES 
(01,'Classic'),
(02,'Rock'),
(03,'Pop'),
(04,'Ethnic'),
(05,'Reggey'),
(06,'Metall');

INSERT INTO albums 
VALUES
(01,'The Miracle',1989),
(02,'A Night at the Opera',1975),
(03,'Orgelb?chlein',1717),
(04,'Here and There',1976),
(05,'Mutter',2001),
(06,'Back in Black',1980),
(07,'Seasons',1876),
(08,'Bad',1987),
(09,'Songs of Russia',2008),
(10,'Raised on Rock',1973),
(11,'Exodus',1977),
(12,'Nevermind',1991),
(13,'Yellow Submarine',1969),
(14,'Let It Be',1970),
(15,'The Show Must Go On',1991);


INSERT INTO trucks 
VALUES
(01,'I Want It All',282,01),
(02,'I Me Mine',125,14),
(03,'Sea of Time',180,13),
(04,'Breed',183,12),
(05,'Three Little Birds',181,11),
(06,'Find Out What?s',169,10),
(07,'Walking the Don',252,09),
(08,'Just Good Friends',245,08),
(09,'Autumn Song',186,07),
(10,'Shoot to Thrill',317,06),
(11,'Ich will',217,05),
(12,'Border Song',198,04),
(13,'Du Lamm Gottes',48,03),
(14,'Bohemian Rhapsody',355,02),
(15,'Show Must Go On',233,15);

INSERT INTO trucks 
VALUES
(16,'Truck02_Queen',282,01),
(17,'Truck03_Queen',125,15),
(18,'Truck02_Rammst',180,05),
(19,'Truck03_Rummst',183,05),
(20,'Truck02_Babkina',181,09),
(21,'Truck03_Babkina',169,09),
(22,'Truck02_IC/DC',252,06),
(23,'Truck03_IC/DC',245,06),
(24,'Truck04_IC/DC',186,06),
(25,'Truck05_IC/DC',317,06);


INSERT INTO collections 
VALUES
(01,'Relaxe',2010),
(02,'Car musick',1996),
(03,'Good idea', 1997),
(04,'Sport',2000),
(05,'Travelling',2011),
(06,'Sea',1998),
(07,'Drink and wolk',2000),
(08,'Working',2010);

INSERT INTO categ_musicians 
VALUES
(01,02),
(01,06),
(02,01),
(02,05),
(02,09),
(03,01),
(03,03),
(03,05),
(03,07),
(02,11),
(03,12),
(04,08),
(05,10),
(06,04);    

INSERT INTO music_albums 
VALUES
(01,01),
(01,02),
(01,15),
(02,03),
(03,04),
(04,05),
(05,06),
(06,07),
(07,08),
(08,09),
(09,10),
(10,11),
(11,12),
(12,13),
(12,14);

INSERT INTO truck_collections 
VALUES
(01,04),
(01,03),
(02,02),
(03,03),
(03,08),
(04,06),
(04,07),
(05,01),
(06,05),
(06,08),
(07,01),
(08,07),
(09,05),
(10,02),
(11,04),
(11,07),
(12,06),
(13,01),
(14,01),
(15,02);

UPDATE albums 
SET album_year = 2018,
"name"  = 'Rammstein_album'
WHERE id = 5;

UPDATE albums 
SET album_year = 2020,
"name"  = 'Songs of Russia'
WHERE id = 9;

UPDATE albums 
SET album_year = 2019,
"name"  = 'Back in Black'
WHERE id = 6;

UPDATE collections 
SET collection_year = 2018
WHERE id = 1;
UPDATE collections
SET collection_year = 2019
WHERE id = 3;
UPDATE collections
SET collection_year = 2020
WHERE id = 8;

