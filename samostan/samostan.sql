#C:\xampp\mysql\bin\mysql -uroot < C:\Users\dell\Documents\EdunovaJP26\SQL\edunovajp26.sql
#C:\xampp\mysql\bin\mysql -uroot < C:\Korisnici\X\Dokumenti\GitHub\baze\zadaca2\doktorskaordinacija.sql
#C:\xampp\mysql\bin>mysql -uroot <C:\Users\X\Documents\GitHub\baze\samostan.sql



drop database if exists samostan;
create database samostan;
use samostan;

create table samostan(
    brojsvecenika varchar(50),
    adresa varchar(50),
    radnovrijeme varchar(50),
    vrstasamostana varchar(50)
);

create table svecenik(
    osbine varchar(50),
    starost varchar(50),
    ime varchar(50),
    prezime varchar(50)
);

create table posao(
    vrstaposla varchar(50)
);



