#C:\xampp\mysql\bin\mysql -uroot < C:\Users\dell\Documents\EdunovaJP26\SQL\edunovajp26.sql
#C:\xampp\mysql\bin\mysql -uroot < C:\Korisnici\X\Dokumenti\GitHub\baze\zadaca2\doktorskaordinacija.sql
#C:\xampp\mysql\bin>mysql -uroot < C:\Users\X\Documents\GitHub\baze\postolar\postolar.sql



drop database if exists postolar;
create database postolar;
use postolar;

create table postolar(
    sifra int not null primary key auto_increment,
    osoba int not null,
    cijena int not null,
    vjestine varchar(50)
);

create table obuca(
    sifra int not null primary key auto_increment,
    vrstaobuce varchar(50) not null,
    marka varchar(50) null,
    broj varchar(50) null,
    osoba int not null
);

create table segrt(
    sifra int not null primary key auto_increment,
    osoba int not null,
    vjestine varchar(50) null
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null
);


alter table obuca add foreign key (osoba) references osoba(sifra);
alter table segrt add foreign key (osoba) references osoba(sifra);
alter table postolar add foreign key (osoba) references osoba(sifra);



