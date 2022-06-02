# hash je komentar
# Sljedeću liniju bez početnog hash znaka izvesti u cmd
# C:\xampp\mysql\bin\ C:\Users\dell\Documents\EdunovaJP26\SQL\edunovajp26.sql
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\X\Desktop\SQL\edunovajp26.sql

drop database if exists edunovajp26;
create database edunovajp26;
use edunovajp26;

create table smjer(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    trajanje int null, # null je zadana vrijednost, kada ne piše podrazumjeva se
    cijena decimal(18,2) not null,
    upisnina decimal(18,2) not null,
    certificiran boolean
);

create table grupa(
    sifra int not null primary key auto_increment,
    naziv varchar(20) not null,
    smjer int not null,
    datumpocetka datetime,
    maksimalnopolaznika int,
    predavac int
);

create table clan(
    sifra int not null primary key auto_increment,
    grupa int not null,
    polaznik int not null
);

create table polaznik(
    sifra int not null primary key auto_increment,
    osoba int not null,
    brojugovora varchar(20)
);

create table predavac(
    sifra int not null primary key auto_increment,
    osoba int not null,
    iban varchar(50)
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    oib char(11),
    email varchar(100)
);


# definiranje vanjskih ključeva
alter table grupa add foreign key (smjer) references smjer(sifra);
alter table grupa add foreign key (predavac) references predavac(sifra);

alter table clan add foreign key (grupa) references grupa(sifra);
alter table clan add foreign key (polaznik) references polaznik(sifra);

alter table polaznik add foreign key (osoba) references osoba(sifra);

alter table predavac add foreign key (osoba) references osoba(sifra);




# unos podataka
# loš način
# 1 - vrijednost dobivenog primarnog ključa
insert into smjer values
(null,'Java programiranje',130,
5999.99,500,true);

# bolji način
# 2
insert into smjer (upisnina,naziv,trajanje,
certificiran,cijena)
values
(500,'PHP programiranje',130,false,6000);

# primjer dobre prakse
# 3
insert into smjer (sifra,naziv,trajanje,cijena,upisnina,certificiran)
values (null,'Računovodstvo',100,3000,500,null);


# 1
insert into grupa
(sifra,naziv,smjer,datumpocetka,
maksimalnopolaznika,predavac)
values
(null,'JP26',1,'2022-04-27',20,null);


# 2
insert into grupa 
(sifra,naziv,smjer,datumpocetka,
maksimalnopolaznika,predavac)
values
(null,'PP25',2,'2022-04-27',20,null);



# 1
insert into osoba (sifra,ime,prezime,oib,email)
values (null,'Tomislav','Jakopec',
null,'tjakopec@gmail.com');


# 2 unijeti osobu Shaquille O'Neal
insert into osoba (sifra,ime,prezime,oib,email)
values (null,'Shaquille','O''Neal',
null,'shaki@gmail.com');

# mogućnosti 'O\'Neal', "O'Neal"

# 3 - 14
insert into osoba (sifra,prezime,ime,oib,email) values
(null,'Županić','Marko',null,'marko.zupanic8@gmail.com'),
(null,'Borić','Alen',null,'boricalen@live.com'),
(null,'Ramač','Dino',null,'dinoramac@gmail.com'),
(null,'Fratrić','Ivana',null,'ivana.fratric1@gmail.com'),
(null,'Prgić','Mihael',null,'mihaelp243@gmail.com'),
(null,'Skorup','Marko',null,'mskorup@gmail.com'),
(null,'Nađ','Filip',null,'filip.nad100@gmail.com'),
(null,'Kasapović','Vedran',null,'vedran.kasapovic@gmail.com'),
(null,'Stanić','Ivan',null,'stambaivan@yahoo.com'),
(null,'Ivan','Olujić',null,'ivan.olujic.os@gmail.com'),
(null,'Vukašin','Vaščanin',null,'vukasinvascanin0@gmail.com'),
(null,'Zdelar','Mihael',null,'mzdelar741@gmail.com');



# 1,2
insert into predavac (sifra,osoba,iban)
values (null,1,null),(null,2,null);


# 1 - 12
insert into polaznik (sifra,osoba, brojugovora) values
(null,3,null),(null,4,null),(null,5,null),
(null,6,null),(null,7,null),(null,8,null),
(null,9,null),(null,10,null),(null,11,null),
(null,12,null),(null,13,null),(null,14,null);


insert into clan(grupa,polaznik) values
(1,1),(1,2),(1,3),
(1,4),(1,5),(1,6),
(1,7),(1,8),(1,9),
(1,10),(1,11),(1,12);


update smjer set upisnina=600 where sifra=1;

update smjer set 
cijena=5000,
trajanje=100
where sifra=2;

update grupa set predavac=1 where sifra=1;

delete from smjer where sifra=3;

# DZ
# Unesite sebe kao predavača
insert into predavac (sifra,osoba,iban)
values (null,3,null);


# Unijeti smjer Tehničar za mrežu
insert into smjer (sifra,naziv,trajanje,cijena,upisnina,certificiran)
values (null,'Tehničar za mrežu',150,5000,1000,null);


# Sebi kao predavaču promjeniti iban
update predavac set iban=156146
where sifra=3;

# Unijeti svoju užu rodbinu za polaznike
insert into osoba (sifra,prezime,ime,oib,email) values
(null,'Županić','Goran',null,'goran.zupanic8@gmail.com'),
(null,'Županić','Ankica',null,'azupanic@live.com'),
(null,'Županić','Leonarda',null,'lea.zupanic@gmail.com');



# pola rodbine upisati na JP26 a drugu
# polovicu na PP25

insert into polaznik (sifra,osoba, brojugovora) values
(null,15,null),(null,16,null),(null,17,null);

insert into clan(grupa,polaznik) values
(1,13),(2,14),(2,15);


#
#select * from smjer;#

# filtriranje kolona - select liste
# 1. * - sve kolone
# 2. nazivi kolina odvojeni zarezom
# 3. konstanta
# 4. izraz
select naziv,cijena from smjer;
select naziv,cijena,naziv from smjer;
select naziv, 'Osijek', 10 from smjer;
# zamjenska imena kolona
select naziv as smjer, 'Edunova' as skola from smjer;
select naziv, now() as vrijeme from smjer;

select *, naziv, 'Osijek' from smjer;


# filtriranje redova
select * from osoba where sifra=1;

# operatori where klauzule
# operatori uspoređivanja: = != (<>) > >= < <=
select * from osoba where sifra<=4;
# logički operatori: and or not (https://i.ytimg.com/vi/7dvqfpXEjdg/maxresdefault.jpg)
select * from osoba where sifra>3 and sifra<5;
select * from osoba where sifra=3 or sifra=5;
select * from osoba where not sifra=3;
# ostali operatori: like in between
select * from osoba where ime='Marko';
select * from osoba where ime like 'M%';
select * from osoba where ime like '%a';
select * from osoba where prezime like '%r%';

select * from osoba where sifra=2 or sifra=6 or sifra=9;
select * from osoba where sifra in (2,6,9);

select * from osoba where sifra>=5 and sifra<=7;
select * from osoba where sifra between 5 and 7;

# izlistajte datum početka i nazive grupa

# izlistajte sva mjesta koja su u OBŽ
# Unesite mjesto Boril u OBŽ
#



select * from products
order by productLine desc, productName  ;

select * from products
order by 3 desc, 2;

# https://mariadb.com/kb/en/aggregate-functions/
select sum(buyPrice),
min(buyPrice),
max(buyPrice),
avg(buyPrice),
count(buyPrice) 
from products
where productLine ='Vintage cars';

select productLine, sum(buyPrice),
min(buyPrice),max(buyPrice),
avg(buyPrice),count(buyPrice) 
from products
where productLine like '%i%'
group by productLine 
having avg(buyPrice)>47 
order by 5 desc
limit 1;


select distinct orderNumber from orderdetails
limit 1,7;

# Otvorite ured u Osijeku

# Postavite cijenu na 10 svim
# proizvodima koji u svom nazivu
# nemaju slovo i
update products 
set buyprice=10 
where productName not like '%i%';

# Izvucite ukupan broj proizvoda 
# koji imaju cijenu 10 
select sum(0.5) from products
where buyPrice =10;

# Unesite sebe kao glavnog šefa

# obrisati sve proizvode u kategoriji planes
delete from orderdetails where 
productCode in (
select productCode from products where 
productLine='planes'
);
delete from products where productLine ='planes';

# izlistajte sve jedinstvene nazive proizvoda 
# i njihove cijene koje su kupili
# kupci iz Las Vegasa

select distinct a.productName, a.buyPrice 
from products a inner join orderdetails b
on a.productCode =b.productCode 
inner join orders c on b.orderNumber =c.orderNumber 
inner join customers d on c.customerNumber =d.customerNumber 
where d.city ='Las Vegas' order by 1;

# Uvećaj sve cijene proizvoda prodane u 
# Las Vegasu za 10%

update products a inner join orderdetails b
on a.productCode =b.productCode 
inner join orders c on b.orderNumber =c.orderNumber 
inner join customers d on c.customerNumber =d.customerNumber 
set a.buyPrice =a.buyPrice * 1.1
where d.city ='Las Vegas';


# obrisati sve proizvode koje su kupili
# kupci koji dolaze iz Las Vegasa
create table zaobrisati
select distinct a.productCode  
from products a inner join orderdetails b
on a.productCode =b.productCode 
inner join orders c on b.orderNumber =c.orderNumber 
inner join customers d on c.customerNumber =d.customerNumber 
where d.city ='Las Vegas' order by 1;

select * from zaobrisati;
delete from orderdetails 
where productCode in (
select productCode from zaobrisati
);

delete from products  
where productCode in (
select productCode from zaobrisati
);

drop table zaobrisati;

# izlistajte sve zaposlenike kojima je šefica
# Diane Murphy
select * from employees where reportsTo =1002;

select b.firstName, b.lastName 
from employees a inner join employees b 
on a.employeeNumber =b.reportsTo 
where a.firstName ='Diane' and 
a.lastName ='Murphy';

# Ispišite imena i prezimena djelatnika 
# ureda u Tokyo

select b.firstName, b.lastName 
from offices a inner join employees b 
on a.officeCode  = b.officeCode 
where a.city ='Tokyo';

select employees.firstName, employees.lastName 
from offices inner join employees 
on offices.officeCode  = employees.officeCode 
where offices.city ='Tokyo';

select b.firstName, b.lastName 
from offices a, employees b
where a.officeCode = b.officeCode and 
a.city ='Tokyo';


# Tablici products dodati kolonu 
# aktivan logički tip podatka
alter table products add aktivan boolean;

select productname, 'Ana'  from products
union
select firstName, lastName  from employees;


