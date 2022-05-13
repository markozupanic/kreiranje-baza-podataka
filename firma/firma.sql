#C:\Users\X\Documents\GitHub\baze\firma\firma.sql

drop database if exists firma;
create database firma;
use firma;

create table projekt(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    cijena int
);

create table sudjeluje(
    sifra int not null primary key auto_increment,
    projekt  int not null,
    programer int not null,
    datumpocetka datetime,
    datumkraja datetime
);

create table programer(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    datumrodjena datetime,
    placa int
);

alter table sudjeluje add foreign key (projekt) references projekt(sifra);
alter table sudjeluje add foreign key (programer) references programer(sifra);