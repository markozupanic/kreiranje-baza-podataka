#C:\xampp\mysql\bin\mysql -uroot < C:\Users\dell\Documents\EdunovaJP26\SQL\edunovajp26.sql
#C:\xampp\mysql\bin\mysql -uroot < C:\Korisnici\X\Dokumenti\GitHub\baze\zadaca2\doktorskaordinacija.sql
#C:\xampp\mysql\bin>mysql -uroot <C:\Users\X\Documents\GitHub\baze\taksisluzba.sql



drop database if exists taksisluzba;
create database taksisluzba;
use taksisluzba;

create table vozilo(
    godiste varchar(50),
    marka varchar(50),
    snaga varchar(50),
    kilometraza varchar(50)
);

create table vozac(
    ime varchar(50),
    prezime varchar(50),
    godine varchar(50),
    kategorije varchar(50)
);

create table putnik(
    ime varchar(50),
    prezime varchar(50),
    telefon varchar(50),
    polaziste varchar(50),
    destinacija varchar (50)
);

create table osoba(
    ime varchar(50),
    prezime varchar(50)
);


