#C:\xampp\mysql\bin\mysql -uroot < C:\Users\dell\Documents\EdunovaJP26\SQL\edunovajp26.sql
#C:\xampp\mysql\bin\mysql -uroot < C:\Korisnici\X\Dokumenti\GitHub\baze\zadaca2\doktorskaordinacija.sql
#C:\xampp\mysql\bin>mysql -uroot < C:\Users\X\Documents\GitHub\baze\taksisluzba\taksisluzba.sql



drop database if exists taksisluzba;
create database taksisluzba;
use taksisluzba;

create table vozilo(
    sifra int not null primary key auto_increment,
    godiste int not null,
    marka varchar(50) not null,
    snaga varchar(50) null,
    kilometraza varchar(50) null
);

create table vozac(
    sifra int not null primary key auto_increment,
    osoba int not null,
    godine int not null,
    kategorije varchar(50)
);

create table putnik(
    sifra int not null primary key auto_increment,
    osoba int not null,
    telefon int,
    polaziste varchar(50),
    destinacija varchar (50),
    vozac int not null
);

create table osoba(
    sifra int not null primary key auto_increment, 
    ime varchar(50) not null,
    prezime varchar(50) not null,
    vozilo int not null
);


alter table osoba add foreign key (vozilo) references vozilo(sifra);
alter table putnik add foreign key ( vozac) references vozac(sifra);
alter table putnik add foreign key (osoba) references osoba(sifra);
alter table vozac add foreign key (osoba) references osoba(sifra);