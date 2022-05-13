#C:\Users\X\Documents\GitHub\baze\fakultet\fakultet.sql

drop database if exists fakultet;
create database fakultet;
use fakultet;

create table student(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    jmbg int 
    kolegij int not null
);

create table kolegij(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    semestar varchar(50)
    rok int not null
);

create table rok(
    datum datetime,
    trajanje int
);