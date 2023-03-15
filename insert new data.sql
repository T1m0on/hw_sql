INSERT INTO album(name, date) 
VALUES('9 album',2019), ('10 album',2020);

INSERT INTO track(name, duration, album_id) 
values('16 track', 256, 9), ('17 track', 257, 10);

INSERT INTO author_album(author_id, album_id) 
values(1,9), (2,10);

INSERT INTO genre_author(genre_id, author_id) 
VALUES(4,1);



