#mysql -uroot < C:\Users\X\Documents\GitHub\baze\fakultet\fakultet.sql

drop database if exists fakultet;
create database fakultet;
use fakultet;

create table student(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    jmbg int,
    kolegij int not null,
    ispit int not null
);

create table kolegij(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    semestar varchar(50),
    rok int not null
);

create table rok(
    sifra int not null primary key auto_increment,
    datum datetime,
    trajanje int,
    ispit int not null
);


create table ispit(
    sifra int not null primary key auto_increment,
    datumispita datetime not null,
    trajanjeispita int not null,
    brojispita int not null,
    kolegij int not null
);

insert into kolegij (sifra,naziv,semestar,rok)
values (null,'poslovbbna informatika' ,'drugi',3);

alter table student add foreign key (ispit) references ispit(sifra);
alter table rok add foreign key (ispit) references ispit(sifra);
alter table ispit add foreign key (kolegij) references kolegij(sifra);


insert into ispit (sifra,datumispita,trajanjeispita,brojispita,kolegij)
values (null,'2022-03-02',2,6,1);



insert into student (sifra,ime,prezime,jmbg,kolegij,ispit) 
values (null,'marko','zupanic',186484184,1,1);