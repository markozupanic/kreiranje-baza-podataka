#mysql -uroot < C:\Users\X\Documents\GitHub\baze\kud\kud.sql

drop database if exists kud;
create database kud;
use kud;

create table clan(
    ime varchar(50),
    prezime varchar(50),
    vjestina varchar(50),
    starost datetime
);

create table nastup(
    vrstanastupa varchar(50),
    pocetaknastupa datetime,
    krajnastupa datetime,
    brojclanova int
);

create table mjesto(
    adresa varchar(50),
    velicinamjesta int,
    vrstamjesta varchar(50)
);

