create table if not exists Genre (
genre_id serial primary key,
name varchar(100) not null unique
);
create table if not exists Author (
author_id serial primary key,
name varchar(100) not null 
);
create table if not exists Genre_Author (
genre_id integer references Genre(genre_id),
author_id integer references Author(author_id),
constraint genre_author_pk primary key (genre_id, author_id)
);
create table if not exists Album (
album_id serial primary key,
name varchar(100) not null,
date integer not null
);
create table if not exists Author_Album (
author_id integer references Author(author_id),
album_id integer references Album(album_id),
constraint author_album_pk primary key (author_id, album_id)
);
create table if not exists Track (
track_id serial primary key,
name varchar(100) not null unique,
duration integer not null,
album_id integer references Album(album_id)
);
create table if not exists Collector (
collector_id serial primary key,
name varchar(100) not null unique,
date integer not null
);
create table if not exists Collector_track (
track_id integer references Track(track_id),
collector_id integer references Collector(collector_id),
constraint track_collector_pk primary key (track_id, collector_id)
);
