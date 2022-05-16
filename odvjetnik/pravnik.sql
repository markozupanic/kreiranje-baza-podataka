#mysql -uroot < C:\Users\X\Documents\GitHub\baze\odvjetnik\pravnik.sql


drop database if exists pravnik;
create database pravnik;
use pravnik;

create table odvjetnik(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    cijena decimal(18,2),
    obrazovanje varchar(50),
    osoba int not null
);

create table klijent(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    budzet decimal(18,2),
    zahtjevi varchar(50),
    osoba int not null
);

create table obrana(
    sifra int not null primary key auto_increment,
    vrstaobrane varchar(50),
    datumpocetkaobrane datetime,
    datumkrajaobrane datetime,
    tezinaobrane varchar(50) 
);

create table suradnik(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    osoba int not null
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    obrana int not null
);

alter table klijent add foreign key (osoba) references osoba(sifra);
alter table odvjetnik add foreign key (osoba) references osoba(sifra);
alter table suradnik add foreign key (osoba) references osoba(sifra);
alter table osoba add foreign key (obrana) references obrana(sifra);


