#mysql -uroot < C:\Users\X\Documents\GitHub\baze\kud\kud.sql

drop database if exists kud;
create database kud;
use kud;

create table clan(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    vjestina varchar(50),
    starost datetime,
    skupinanastupa int not null
);

create table nastup(
    sifra int not null primary key auto_increment,
    vrstanastupa varchar(50),
    pocetaknastupa datetime,
    krajnastupa datetime,
    brojclanova int,
    mjesto int not null
);

create table mjesto(
    sifra int not null primary key auto_increment,
    adresa varchar(50),
    velicinamjesta int,
    vrstamjesta varchar(50)
);

create table skupinanastupa(
    sifra int not null primary key auto_increment,
    brojskupine int,
    nastup int not null
);

alter table skupinanastupa add foreign key (nastup) references nastup(sifra);
alter table nastup add foreign key (mjesto) references mjesto(sifra);
alter table clan add foreign key (skupinanastupa) references skupinanastupa(sifra);