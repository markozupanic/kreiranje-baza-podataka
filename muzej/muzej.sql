#C:\xampp\mysql\bin\mysql -uroot < C:\Users\dell\Documents\EdunovaJP26\SQL\edunovajp26.sql
#C:\xampp\mysql\bin\mysql -uroot < C:\Korisnici\X\Dokumenti\GitHub\baze\zadaca2\doktorskaordinacija.sql
#C:\xampp\mysql\bin>mysql -uroot < C:\Users\X\Documents\GitHub\baze\muzej\muzej.sql



drop database if exists muzej;
create database muzej;
use muzej;

create table izlozba(
    sifra int not null primary key auto_increment,
    vrstaizlozbe varchar(50),
    temaizlozbe varchar(50),
    datumizlozbe datetime(6)
);

create table kustos(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    starost int,
    obrazovanje varchar(50),
    izlozba int not null
);

create table sponzor(
    sifra int null primary key auto_increment,
    nacinsponzorstva varchar(50),
    muzej int not null,
    izlozba int not null
);

create table muzej(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    adresa varchar(50),
    tipmuzeja varchar(50),
    kustos int not null
);

alter table sponzor add foreign key (muzej) references muzej(sifra);
alter table sponzor add foreign key (izlozba) references izlozba(sifra);
alter table muzej add foreign key (kustos) references kustos(sifra);
alter table kustos add foreign key (izlozba) references izlozba(sifra);
