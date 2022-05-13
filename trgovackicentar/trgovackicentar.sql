#mysql -uroot < C:\Users\X\Documents\GitHub\baze\trgovackicentar\trgovackicentar.sql

drop database if exists trgovackicentar;
create database trgovackicentar;
use trgovackicentar;

create table centar(
    sifra  int not null primary key auto_increment,
    adresa varchar(50),
    naziv varchar(50),
    brojtrgovina int
);

create table trgovina(
    sifra  int not null primary key auto_increment,
    naziv varchar(50),
    vrstatrgovine varchar(50),
    velicinatrgovine int,
    ponuda varchar(50)
);

create table osoba(
    sifra  int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    vjestina varchar(50),
    sef varchar(50)
);

create table sef(
    sifra  int not null primary key auto_increment,
    ime varchar(50),
    predavac varchar(50),
    obrazovanje varchar(50)
);
