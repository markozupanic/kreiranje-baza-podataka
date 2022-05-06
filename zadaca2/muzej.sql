



drop database if exists muzej;
create database muzej;
use muzej;

create table izlozba(
    vrstaizlozbe varchar(50),
    temaizlozbe varchar(50),
    datumizlozbe varchar(50)
)

create table kustos(
    ime varchar(50),
    prezime varchar(50),
    starost varchar(50),
    obrazovanje varchar(50)
);

create table sponzor(
    nacinsponzorstva(50)
);

create table muzej(
    naziv varchar(50),
    adresa varchar(50),
    tipmuzeja varchar(50)
);
