#C:\xampp\mysql\bin\mysql -uroot < C:\Users\dell\Documents\EdunovaJP26\SQL\edunovajp26.sql
#C:\xampp\mysql\bin\mysql -uroot < C:\Korisnici\X\Dokumenti\GitHub\baze\zadaca2\doktorskaordinacija.sql
#C:\xampp\mysql\bin>mysql -uroot <C:\Users\X\Documents\GitHub\baze\djecijivrtic\djecijivrtic.sql



drop database if exists djecijivrtic;
create database djecijivrtic;
use djecijivrtic;

create table skupina(
    sifra int not null primary key auto_increment,
    uzrast int not null,
    velicinaskupine int not null,
    vrstaskupine varchar(50),
    vrtic int not null
);

create table odgojiteljica(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    obrazovanje varchar(50),
    karakter varchar(50),
    vrtic int not null,
    skupina int not null
);

create table vrtic(
    sifra int not null primary key auto_increment,
    adresa varchar(50),
    specijalizacijavrtica varchar(50),
    naziv varchar(50),
    kontakt int
);


alter table odgojiteljica add foreign key (vrtic) references vrtic(sifra);
alter table odgojiteljica add foreign key (skupina) references skupina(sifra);
alter table skupina add foreign key (vrtic) references vrtic(sifra);