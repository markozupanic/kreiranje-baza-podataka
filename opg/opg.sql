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
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    placa decimal(18,2),
    obrazovanje varchar(50)
);

create table materijal(
    sifra int not null primary key auto_increment,
    vrstamaterijal varchar(50),
    kolicinamaterijala int,
    proizvod int not null,
    sirovina int not null
);

alter table materijal add foreign key (sirovina) references sirovina(sifra);
alter table materijal add foreign key (proizvod) references proizvod(sifra);
alter table proizvod add foreign key (djelatnik) references djelatnik(sifra);