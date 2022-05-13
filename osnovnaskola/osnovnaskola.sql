#C:\Users\X\Documents\GitHub\baze\osnovnaskola\osnovnaskola.sql

drop database if exists osnovnaskola;
create database osnovnaskola;
use osnovnaskola;

create table osnovnaskola(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    adresa varchar(50),
    brojucenika int
);

create table dijete(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    dob int
    );

create table ucteljica(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    obrazovanje varchar(50)
);

create table radionica(
    sifra int not null primary key auto_increment,
    vrsta varchar(50),
    trajanjeradionice int not null,
    pocetak datetime null
);
