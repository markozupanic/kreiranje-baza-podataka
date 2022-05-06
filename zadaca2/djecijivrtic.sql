



drop database if exists djecijivrtic;
create database djecijivrtic;
use djecijivrtic;

create table skupina(
    uzrast varchar(50),
    velicinaskupine varchar(50),
    vrstaskupine varchar(50)
);

create table odgojiteljica(
    ime varchar(50),
    prezime varchar(50),
    obrazovanje varchar(50),
    karakter varchar(50)
);

create table vrtic(
    adresa varchar(50),
    specijalizacijavrtica varchar(50);
    naziv varchar(50),
    kontakt varchar(50)
);

