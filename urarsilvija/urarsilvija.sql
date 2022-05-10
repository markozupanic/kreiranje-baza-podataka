#C:\xampp\mysql\bin\mysql -uroot < C:\Users\dell\Documents\EdunovaJP26\SQL\edunovajp26.sql
#C:\xampp\mysql\bin\mysql -uroot < C:\Korisnici\X\Dokumenti\GitHub\baze\zadaca2\doktorskaordinacija.sql
#C:\xampp\mysql\bin>mysql -uroot <C:\Users\X\Documents\GitHub\baze\urarsilvija.sql



drop database if exists urarsilvija;
create database urarsilvija;
use urarsilvija;

create table sat(
    marka varchar(50),
    godinaproizvodnje varchar(50),
    vrstasata varchar(50),
    ostecenje varchar(50)
);

create table korisnik(
    ime varchar(50),
    prezime varchar(50),
    telefon varchar(50),
    budzet varchar(50)
);

create table urar(
    ime varchar(50),
    prezime varchar(50),
    znanje varchar(50),
    cijena varchar(50)
);

create table osoba(
    ime varchar(50),
    prezime varchar(50)
);


