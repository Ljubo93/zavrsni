use master
go
create database Webshop;

use Webshop;

create table Korisnik(
sifra int not null primary key identity (1,1),
ime varchar (100) not null,
prezime varchar (100)not null,
email varchar (100) not null,
adresa varchar (100) not null
);

create table proizvod (
sifra int not null primary key identity (1,1),
naziv varchar (100) not null,
cijena decimal (18,2) not null,
kolicina varchar (100) not null
);

create table proizvodinaracunu(
proizvod int not null,
racun int not null
);

create table Racun(
sifra int not null primary key identity (1,1),
proizvod varchar (100) not null,
korisnik varchar (100) not null,
kontakt varchar (100) not null,
nacinplacanja varchar (100) not null,
nacindostave varchar (100) not null
);


alter table proizvod add foreign key (sifra) references korisnik (sifra);
alter table proizvodinaracunu add foreign key (proizvod) references proizvod (sifra);
alter table proizvodinaracunu add foreign key (racun) references racun (sifra);
alter table racun add foreign key (sifra) references korisnik (sifra);

insert into Korisnik(ime,prezime,email,adresa) values
('Marko', 'Matic', 'markomatic@gmail.com', 'Primorska 9 Zadar'),
('Ivan', 'Anic', 'anicivan@hotmail.com', 'Vinogrdska 12 Zagreb'),
('Veronika', 'Zrinski', 'veki1234@gmail.com', 'Trg zrtava fasizma 8 Okucani');

select * from Korisnik;

insert into proizvod (naziv,cijena,kolicina) values
('Dior 50ml men', '48.88', '28'),
('Hugo Boss 50 ml men', '45.55', '98'),
('Carolina Herrera 50 ml woman', '68.89', '78');

select * from proizvod;

insert into Racun (proizvod, korisnik, kontakt, nacinplacanja,nacindostave) values
('Dior 50ml men', 'Marko Matic', 'markomatic@gmail.com','faktura', 'preporuceno na kucnu adresu'),
('Hugo Boss 50ml men', 'Ivan Anic', 'anicivan@hotmail.com', 'Placanje pouzecem', 'preporuceno na kucnu adresu'),
('Carolina Hererra 50ml woman', 'Veronika Zrinski', 'veki1234@gmail.com', 'Karticno jednokratno','preporuceno na kucnu adresu');

select * from Racun;
 
 
