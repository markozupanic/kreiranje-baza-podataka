
#C:\xampp\mysql\bin\mysql -uroot < C:\Users\dell\Documents\EdunovaJP26\SQL\edunovajp26.sql
#C:\xampp\mysql\bin\mysql -uroot < C:\Korisnici\X\Dokumenti\GitHub\baze\zadaca2\doktorskaordinacija.sql
#C:\xampp\mysql\bin>mysql -uroot <C:\Users\X\Documents\GitHub\baze\doktorskaordinacija.sql




drop database if exists doktorskaordinacija;
create database doktorskaordinacija;
use doktorskaordinacija;

create table doktor(
    ime varchar(50),
    prezime varchar(50),
    specijalizacija varchar(50),
    reputacija varchar(50),
    slobodantermin varchar(50)
);

create table pacijent(
    ime varchar(50),
    prezime varchar(50),
    bolest varchar(50),
    godine varchar(50)
);

create table ordinacija(
    adresa varchar(50),
    vrstaordinacije varchar(50),
    mjesto varchar(50)
);

create table osoba(
    ime varchar(50),
    prezime varchar(50)
);




