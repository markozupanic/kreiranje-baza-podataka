#mysql -uroot < C:\Users\X\Documents\GitHub\baze\hijerarhija\hijerarhija.sql


drop database if exists hijerarhija;
create database hijerarhija;
use hijerarhija;

create table zaposlenik(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    placa decimal(18,2),
    nadredjeni int not null
);

alter table zaposlenik add foreign key (nadredjeni) references zaposlenik(sifra);
