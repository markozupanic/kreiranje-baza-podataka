#mysql -uroot < C:\Users\X\Documents\GitHub\baze\restoran\restoran.sql

drop database if exists restoran;
create database restoran;
use restoran;

create table jelovnik(
    sifra int not null primary key auto_increment,
    cijene int,
    vrstajela varchar(100),
);