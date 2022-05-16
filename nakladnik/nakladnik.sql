#mysql -uroot < C:\Users\X\Documents\GitHub\baze\nakladnik\nakladnik.sql

drop database if exists nakladnik;
create database nakladnik;
use nakladnik;

create table izdavac(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    znanje varchar(50),
    placa int,
    umjetnik int not null
);

create table djela(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    cijena int,
    vrstadjela varchar(50),
    umjetnik int not null
);
create table mjesto(
    sifra int not null primary key auto_increment,
    adresa varchar(50),
    velicinamjesta int
);

create table umjetnik(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    starost int,
    mjesto int not null
);

alter table djela add foreign key (umjetnik) references umjetnik(sifra);
alter table izdavac add foreign key (umjetnik) references umjetnik(sifra);

alter table umjetnik add foreign key (mjesto) references mjesto(sifra);


