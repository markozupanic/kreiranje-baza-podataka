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
    ponuda varchar(50),
    centar int not null,
    trgovac int not null
);

create table osoba(
    sifra  int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    vjestina varchar(50),
    sef int not null,
    trgovac int not null
);



create table trgovac(
    ime varchar(50),
    prezime varchar(50),
    godine int,
    obrazovanje varchar(50)
);

alter table trgovina add foreign key (centar) references centar(sifra);


alter table osoba add foreign key (sef) references osoba(sifra);



