#C:\xampp\mysql\bin\mysql -uroot < C:\Users\dell\Documents\EdunovaJP26\SQL\edunovajp26.sql
#C:\xampp\mysql\bin\mysql -uroot < C:\Korisnici\X\Dokumenti\GitHub\baze\zadaca2\doktorskaordinacija.sql
#C:\xampp\mysql\bin>mysql -uroot <C:\Users\X\Documents\GitHub\baze\udrugazazivotinje\udrugazazivotinje.sql



drop database if exists udrugazazivotinje;
create database udrugazazivotinje;
use udrugazazivotinje;

create table zaposlenik(
    sifra int not null primary key auto_increment
    #bice int not null,
    prezime varchar(50),
    obrazovanje varchar(50),
    karakter varchar(50)
);

create table sticenik(
    sifra int not null primary key auto_increment
    bice int not null,
    pasmina varchar(50),
    starost varchar(50)
);

create table bice(
    sifra int not null primary key auto_increment
    ime int not null
);

create table prostor(
    sifra int not null primary key auto_increment
    adresa varchar(50),
    brojsticenika varchar(50),
    naziv varchar(50)
);

#alter table zaposlenik add foreign key (prostor) references prostor(sifra);
#alter table sticenik add foreign key (bice) references bice(sifra);


