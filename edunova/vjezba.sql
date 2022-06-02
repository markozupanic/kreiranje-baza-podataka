select naziv, smjer,predavac from grupa;

select a.naziv as grupa, 
b.naziv as smjer, d.ime, d.prezime
from grupa a inner join smjer b
on a.smjer=b.sifra
left join predavac c
on a.predavac = c.sifra
left join osoba d
on c.osoba = d.sifra

# Izlistajte sva imena i prezimena 
# polaznika na grupi JP26

# Zadatak: Sebe upišite u grupu PP25
select * from polaznik where osoba=6;
select * from osoba where ime='Ivana';
select * from grupa;
insert into clan(grupa,polaznik)
values (2,4);

# Izlistajte sva imena i prezimena 
# polaznika na grupi PP25

# Obrišite sebe iz grupe PP25

# Postavite sebi broj ugovora 12/2022


# baza knjižnica
# Izlistajte sve knjige s ljubavnom tematikom

select * from katalog where naslov like '%ljub%';

# na postojeće rezultate dovucite 
# naziv mjesta umjesto šifre

select a.naslov, b.naziv
from katalog a inner join mjesto b
on a.mjesto =b.sifra
where a.naslov like '%ljub%';

# Čitati: https://dev.to/azibom/sql-joins-29j4

# Izlistajte sve izdavače koji su 
# Društvo s ograničenom odgovornošću
select * from izdavac where naziv like '%d%o%o%';

# Unesite sebe kao autora

# Objavite knjigu (vašu omiljenu), 
# izdavač i mjesto po izboru

# Postavite sebi kao autoru datum rođenja na danas

# OVO VAM NISAM POKAZAO
# Tablici katalog dodajte kolonu cijena
# Svakoj knjizi postavite slučajnu vrijednost između
# 100 i 200


# izvucite sve nazive knjiga koje su izdali
# ne aktivni izdavači


# Izvucite sve autore koji nemaju 
# definiran datum rođenja
select * from autor where datumrodenja is null;

# Izvucite sve autore 
# koji nisu izdali niti jednu knjigu
select a.ime, a.prezime 
from autor a left join katalog b
on b.autor =a.sifra 
where b.naslov is null


select * from smjer;

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