create table if not exists Album (
id serial primary key,
name varchar (50) not null,
year_release integer CHECK (year_release <= 2023 )
);

create table if not exists Track (
id serial primary key,
name varchar (50) not null,
duration integer not null,
album_id integer references Album(id)
);

create table if not exists Artist (
id serial primary key,
name varchar (50) not null
);

create table if not exists AlbumArtist (
album_id integer references Album(id),
artist_id integer references Artist(id),
constraint AlbumArtist_id primary key (album_id, artist_id)
);

create table if not exists MusicGenre (
id serial primary key,
name varchar (50) not null
);

create table if not exists ArtistMusicGenre (
artist_id integer references Artist(id),
musicgenre_id integer references MusicGenre(id),
constraint ArtistMusicGenre_id primary key (artist_id, musicgenre_id)
);

create table if not exists Collection (
id serial primary key,
name varchar (50) not null,
year_release integer not null
);

create table if not exists TrackCollection (
track_id integer references Track(id),
collection_id integer references Collection(id),
constraint TrackCollection_id primary key (track_id, collection_id)
);
