/* task 3 */

CREATE TABLE Artists (
  artist_id INTEGER PRIMARY KEY,
  artist_name varchar(50) NOT NULL
);



CREATE TABLE Albums (
  album_id INTEGER PRIMARY KEY,
  album_name varchar(50) NOT NULL,
  artist_id INTEGER NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);


INSERT INTO Artists (artist_id, artist_name) VALUES(1, 'The Beatles');
INSERT INTO Artists (artist_id, artist_name) VALUES(2, 'Led Zeppelin');
INSERT INTO Artists (artist_id, artist_name) VALUES  (3, 'Pink Floyd');

select * from Artists;

INSERT INTO Albums (album_id, album_name, artist_id) VALUES (1, 'Abbey Road', 1);
INSERT INTO Albums (album_id, album_name, artist_id) VALUES (2, 'Led Zeppelin IV', 2);
INSERT INTO Albums (album_id, album_name, artist_id) VALUES (3, 'Dark Side of the Moon', 3);
INSERT INTO Albums (album_id, album_name, artist_id) VALUES (4, 'The Wall', 3); 
INSERT INTO Albums (album_id, album_name, artist_id) VALUES (5, 'Houses of the Holy', 2);
INSERT INTO Albums (album_id, album_name, artist_id) VALUES (6, 'Let It Be', 1);

select * from Albums;

/*1*/
select album_name , artist_name from Albums INNER JOIN Artists ON Albums.artist_id = Artists.artist_id;

/*2*/
select artist_name ,album_name from Artists LEFT JOIN Albums ON Artists.artist_id = Albums.artist_id;

/*3*/
select artist_name ,album_name from Artists RIGHT JOIN Albums ON Artists.artist_id = Albums.artist_id;

/*4*/
select album_name, artist_name from Albums FULL JOIN Artists ON Albums.artist_id = Artists.artist_id;