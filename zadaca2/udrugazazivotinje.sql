



drop database if exists udrugazazivotinje;
create database udrugazazivotinje;
use udrugazazivotinje;

create table zaposlenik(
    ime varchar(50),
    prezime varchar(50),
    obrazovanje varchar(50),
    karakter varchar(50)
);

create table sticenik(
    ime varchar(50),
    pasmina varchar(50),
    starost varchar(50)
);

create table prostor(
    adresa varchar(50),
    brojsticenika varchar(50),
    starost varchar(50)
);


