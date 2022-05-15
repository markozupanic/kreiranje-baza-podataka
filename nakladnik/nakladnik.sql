

drop database if exists nakladnik;
create database nakladnik;
use nakladnik;

create table izdavac(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    znanje varchar(50),
    placa int 
);

create table djela(
    ime varchar(50),
    cijena int,
    vrstadjela varchar(50)
);
create table mjesto(
    adresa varchar(50),
    velicinamjesta int,
);


