



drop database if exists postolar;
create database postolar;
use postolar;

create table postolar(
    ime varchar(50),
    prezime varchar(50),
    cijena varchar(50),
    vjestine varchar(50)
);

create table obuca(
    vrstaobuce varchar(50),
    marka varchar(50),
    broj varchar(50)
);

create table segrt(
    ime varchar(50),
    prezime varchar(50),
    vjestine varchar(50)
);

