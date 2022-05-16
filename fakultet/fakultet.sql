#mysql -uroot < C:\Users\X\Documents\GitHub\baze\fakultet\fakultet.sql

drop database if exists fakultet;
create database fakultet;
use fakultet;

create table student(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    jmbg int,
    kolegij int not null,
    ispit int not null
);

create table kolegij(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    semestar varchar(50),
    rok int not null
);

create table rok(
    sifra int not null primary key auto_increment,
    datum datetime,
    trajanje int,
    ispit int not null
);


create table ispit(
    sifra int not null primary key auto_increment,
    datumispita datetime,
    trajanjeispita int,
    brojispita int,
    kolegij int not null
);


alter table student add foreign key (ispit) references ispit(sifra);
alter table rok add foreign key (ispit) references ispit(sifra);
alter table ispit add foreign key (kolegij) references kolegij(sifra);
