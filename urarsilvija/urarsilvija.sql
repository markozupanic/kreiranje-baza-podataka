#C:\xampp\mysql\bin\mysql -uroot < C:\Users\dell\Documents\EdunovaJP26\SQL\edunovajp26.sql
#C:\xampp\mysql\bin\mysql -uroot < C:\Korisnici\X\Dokumenti\GitHub\baze\zadaca2\doktorskaordinacija.sql
#C:\xampp\mysql\bin>mysql -uroot < C:\Users\X\Documents\GitHub\baze\urarsilvija\urarsilvija.sql



drop database if exists urarsilvija;
create database urarsilvija;
use urarsilvija;

create table sat(
    sifra int not null primary key auto_increment,
    marka varchar(50) not null,
    godinaproizvodnje datetime(4) not null,
    vrstasata varchar(50) null,
    ostecenje varchar(50) not null,
    korisnik int not null,
    osoba int not null
);

create table korisnik(
    sifra int not null primary key auto_increment,
    osoba int not null,
    telefon int not null,
    budzet int not null
);

create table urar(
    sifra int not null primary key auto_increment,
    osoba int not null,
    znanje varchar(50),
    cijena varchar(50)
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null ,
    prezime varchar(50) null
);

alter table sat add foreign key (korisnik) references korisnik(sifra);
alter table sat add foreign key (osoba) references osoba(sifra);
alter table urar add foreign key (osoba) references osoba(sifra);
alter table korisnik add foreign key (osoba) references osoba(sifra);
