#C:\xampp\mysql\bin\mysql -uroot < C:\Users\dell\Documents\EdunovaJP26\SQL\edunovajp26.sql
#C:\xampp\mysql\bin\mysql -uroot < C:\Korisnici\X\Dokumenti\GitHub\baze\zadaca2\doktorskaordinacija.sql
#C:\xampp\mysql\bin>mysql -uroot < C:\Users\X\Documents\GitHub\baze\salonzauljepsavanje\salonzauljepsavanje.sql




drop database if exists salonzauljepsavanje;
create database salonzauljepsavanje;
use salonzauljepsavanje;

create table salonzauljepsavanje(
    sifra int not null primary key auto_increment,
    brojsjedecihmjesta int not null,
    naziv varchar(50) not null,
    adresa varchar(50) not null,
    markeproizvoda varchar(100) null
);

create table djelatnica(
    sifra int not null primary key auto_increment,
    osoba int not null,
    salonzauljepsavanje int not null,
    obrazovanje varchar(50) null,
    nacinrada varchar(50) not null
);

create table usluga(
    sifra int not null primary key auto_increment,
    kvaliteta varchar(50) not null,
    cijena decimal(18,2) not null,
    korisnik int not null,
    salonzauljepsavanje int not null,
    konzistentnost varchar(50) not null
);

create table korisnik(
    sifra int not null primary key auto_increment,
    osoba int not null,
    email varchar(100),
    termin datetime(6)
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null
);

#definiranje vanjskih ključeva alter table djelatnica add foreign key (salonzauljepsavanje) references salonzauljepsavanje(sifra);
#SET FOREIGN_KEY_CHECKS=0;

alter table djelatnica add foreign key (salonzauljepsavanje) references salonzauljepsavanje(sifra);

alter table djelatnica add foreign key (osoba) references osoba(sifra);

alter table usluga add foreign key (korisnik) references korisnik(sifra);
alter table usluga add foreign key (salonzauljepsavanje) references salonzauljepsavanje(sifra);

alter table korisnik add foreign key (osoba) references osoba(sifra);



