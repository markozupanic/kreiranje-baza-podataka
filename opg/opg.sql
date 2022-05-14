# mysql -uroot < C:\Users\X\Documents\GitHub\baze\opg\opg.sql

drop database if exists opg;
create database opg;
use opg;


create table proizvod(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    vrsta varchar(50),
    cijena decimal(18,2),
    djelatnik int not null
);

create table sirovina(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    vrsta varchar(50),
    cijena decimal(18,2)
);

create table djelatnik(
    ime varchar(50),
    prezime varchar(50),
    placa decimal(18,2),
    obrazovanje varchar(50)
);