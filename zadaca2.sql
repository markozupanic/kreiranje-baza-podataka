


drop database if exists zadaca2;
create database zadaca2;
use zadaca2;

#C:\xampp\mysql\bin\mysql -uroot < C:\Korisnici\X\RadnaPovrsina\SQL\Edunovajp26.sql 
^

create table frizerskisalon(
    brojmjesta varchar(50),
    naziv varchar(50),
    adresa varchar(50)
);


create table djelatnica(
    ime varchar(50),
    prezime varchar(50),

);

create table usluga(
    kvaliteta varchar(50),
    cijena varchar(50)
);

create table korisnik(
    ime varchar(50),
    prezime varchar(50),
    zahtjevi varchar(50)
);

