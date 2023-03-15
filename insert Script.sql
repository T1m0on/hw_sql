INSERT INTO genre(name) 
VALUES('rock'), ('rap'), ('metal'), ('pop'), ('reggae');

INSERT INTO author(name) 
VALUES('Tim'),('Nik'),
('Anna'),('Alex'),('Roody'),
('Sum41'),('The Cranberries'),
('Random');

INSERT INTO genre_author(genre_id, author_id) 
VALUES(1,1), (2,2), (2,3), (5,4), (4,8), (1,7), (4,5), (3,6);

INSERT INTO album(name, date) 
VALUES('1 album',1985), ('2 album',1999),
('3 album',2012), ('4 album',2007),
('5 album',2000), ('6 album',2012),
('7 album',2018), ('random album',2022);

INSERT INTO author_album(author_id, album_id) 
values(1,1), (2,2), (3,3), (4,4),
(5,5), (6,6), (7,7), (8,8);

INSERT INTO track(name, duration, album_id) 
values('1 track', 183, 1), ('2 track', 150, 1),
('3 track', 200, 2), ('4 track', 189, 2),
('5 track', 176, 3), ('6 track', 198, 3),
('7 track', 314, 4), ('8 track', 204, 4),
('9 track', 180, 5), ('10 track', 181, 5),
('11 track', 176, 6), ('12 track', 179, 6),
('13 track', 221, 7), ('14 track', 211, 7),
('15 track', 185, 8);

INSERT INTO collector(name, date) 
values('Collector 1', 2016), ('Collector 2', 2017),
('Collector 3', 2018), ('Collector 4', 2019),
('Collector 5', 2020), ('Collector 6', 2021),
('Collector 7', 2022), ('Collector 8', 2023);

INSERT INTO collector_track(track_id, collector_id) 
values(1,3), (2,2), (3,6), (4,1), (5,4), (6,5), (7,7), (8,8), 
(9,8), (10,2), (11,3), (12,1), (13,7), (14,4), (15,5);




