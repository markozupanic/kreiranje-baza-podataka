#<  C:\Users\X\Documents\GitHub\baze\srednjaskola\srednjaskola.sql

drop database if exists srednja;
create database srednja;
use srednja;

create table srednjaskola(
    sifra int not null primary key auto_increment,
    adresa varchar(50),
    naziv varchar(50),
    vrsta varchar(50)
);

create table razred(
    sifra int not null primary key auto_increment,
    brojucenika int,
    naziv varchar(50)
);

create table ucenik(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    ocjene int
);

create table profesor(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    obrazovanje varchar(50)
);

