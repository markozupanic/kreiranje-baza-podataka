#C:\xampp\mysql\bin\mysql -uroot < C:\Users\dell\Documents\EdunovaJP26\SQL\edunovajp26.sql
#C:\xampp\mysql\bin\mysql -uroot < C:\Korisnici\X\Dokumenti\GitHub\baze\zadaca2\doktorskaordinacija.sql
#C:\xampp\mysql\bin>mysql -uroot <C:\Users\X\Documents\GitHub\baze\salonzauljepsavanje.sql




drop database if exists salonzauljepsavanje;
create database salonzauljepsavanje;
use salonzauljepsavanje;

create table salonzauljepsavanje(
    brojsjedecihmjesta varchar(50),
    naziv varchar(50),
    adresa varchar(50),
    markeproizvoda varchar(50)
);

create table djelatnica(
    iem varchar(50),
    prezime varchar(50),
    obrazovanje varchar(50),
    nacinrada varchar(50)
);

create table usluga(
    kvaliteta varchar(50),
    cijena varchar(50),
    konzistentnost varchar(50)
);

create table korisnik(
    ime varchar(50),
    prezime varchar(50),
    email varchar(50),
    termin varchar(50)
);

create table osoba(
    ime varchar(50),
    prezime varchar(50)
);


