#C:\xampp\mysql\bin\mysql -uroot < C:\Users\dell\Documents\EdunovaJP26\SQL\edunovajp26.sql
#C:\xampp\mysql\bin\mysql -uroot < C:\Korisnici\X\Dokumenti\GitHub\baze\zadaca2\doktorskaordinacija.sql
#C:\xampp\mysql\bin>mysql -uroot < C:\Users\X\Documents\GitHub\baze\samostan\samostan.sql



drop database if exists samostan;
create database samostan;
use samostan;

create table samostan(
    sifra int not null primary key auto_increment,
    brojsvecenika int not null,
    adresa varchar(50),
    radnovrijeme varchar(50),
    vrstasamostana varchar(50),
    svecenik int not null,
    posao int not null
);

create table svecenik(
    sifra int not null primary key auto_increment,
    osbine varchar(50),
    starost int ,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    posao int not null,
    samostan int not null
);

create table posao(
    sifra int not null primary key auto_increment,
    vrstaposla varchar(50),
    samostan int not null
);


alter table svecenik add foreign key (samostan) references samostan(sifra);
alter table posao add foreign key (samostan) references samostan(sifra);
alter table svecenik add foreign key (posao) references posao(sifra);
