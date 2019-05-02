drop database if exists 1702953159_Kennaralisti;

create database 1702953159_Kennaralisti;

use 1702953159_Kennaralisti;

drop table if exists Kennarar;
create table Kennarar(
ID int auto_increment,
nafn varchar(50),
braut varchar(30),
tolvupostur varchar(60),
constraint kennari_Pk primary key(ID)
);

drop table if exists Afangar;
create table Afangar(
ID int auto_increment,
nafn varchar(50),
lysing text,
stofa char(4),
constraint ID_PK primary key(ID)
);

drop table if exists KennariAfangi;
create table KennariAfangi(
idKennari int,
idAfangi int,
constraint kennara_afangi_PK primary key (idKennari, idAfangi),
constraint FK_idKennari foreign key (idKennari) references Kennarar(ID),
constraint FK_idAfangi foreign key (idAfangi) references Afangar(ID)
);

insert into Kennarar(nafn, braut, tolvupostur)
values
('Geir Sigurðsson', 'Tölvubraut', 'ges@tskoli.is'),
('Abdelaziz Ghazal', 'Tölvubraut', 'agh@tskoli.is'),
('Sigurður R. Ragnarsson', 'Tölvubraut', 'srr@tskoli.is'),
('Eiríkur Benediktsson', 'Tölvubraut', 'ebe@skoli.is'),
('Karl Ágústsson', NULL, 'kag@tskoli.is');

insert into Afangar(nafn, lysing)
values
('FORR3CG05DU', 'C++ og gagnagrindur'), #Geir
('KEST3CR05EU', 'CCNA - Routing and Switching'), #Geir
('KEST2UN05CU', 'Tölvutækni - undirstöðuatriði netkerfa'), #Abdel
('KEST2WG05DU', 'Windows Server - kerfisstjórnun'), #Abdel
('GAGN2VG05CU', 'Venslaðir gagnagrunnar'), #Siggi, Abdel
('FORR1FG05AU', 'Forritun I'), #Geir
('FORK2FE02AU', 'Forritunarkeppni I'),
('FORK2FT02BU', 'Forritunarkeppni II'),
('FORK2FÞ02CU', 'Forritunarkeppni III'),
('FORR2FA05BU', 'Forritun II'),
('VEFÞ1VG05AU', 'Vefhönnun I'), #Karl
('VEFÞ2VH05BU', 'Vefhönnun II'), #Karl
('FORR2HF05CU', 'Hlutbundin forritun'),
('GAGN1NG05AU', 'Notkun gagnasafna'), #Siggi
('KEST1TR05AU', 'Tölvutækni - talnakerfi og rökrásir'),
('KEST2VJ05BU', 'Tölvutækni - vélbúnaður og jaðartæki (IoT)'),
('FORR4CF05EU', 'Gagnaskipan (C++)'),
('FORR3RR05DU', 'Reiknirit'),
('FORR2GL05DU', 'Leikjaforritun I'), 
('FORR3FL05EU', 'Leikjaforritun II'),
('FORR3JS05DU', 'JavaScript'), #Karl
('FORR3FV05EU', 'Viðmótsforritun'),
('VEFÞ2VÞ05DU', 'Vefforritun II'),
('VEFÞ3VL05EU', 'Vefforritun III'),
('ROBO2RG05AU', 'Vélmenni I'), #Eiríkur
('ROBO3RF05BU', 'Vélmenni II'), #Eiríkur
('VEFÞ2VF05CU', 'Vefforritun I'),
('GAGN2HS05BU', 'Gagnasafnsfræði - Hönnun og smíði'), #Siggi, Abdel
('KEST2LG05DU', 'Linux - Kerfisstjórnun'),
('GAGN3GS05DU', 'Gagnasafnsfræði - Gagnasöfn og gagnavinnsla'), #Siggi
('KEST3LN05EU', 'Linux - netstjórnun'), #Abdel
('KEST3LS05FU', 'Linux - skriftur'), #Abdel
('KEST2WN05EU', 'Windows Server - netstjórnun og skriftur I'),
('KEST3WS05FU', 'Windows Server - netstjórnun og skriftur II'),
('KEST3CS05FU', 'CCNA - scaling networks'),
('KEST3CN05GU', 'CCNA - connection networks'),
('FORR3NÞ05DU', 'Netforritun og þráðavinnsla');

insert into KennariAfangi(idKennari, idAfangi)
values
(1, 1),
(1, 2),
(1, 6),
(2, 3),
(2, 4),
(2, 5),
(2, 28),
(2, 31),
(2, 32),
(3, 5),
(3, 14),
(3, 28),
(3, 30),
(4, 25),
(4, 26),
(5, 11),
(5, 12),
(5, 21);

select k.ID, k.nafn, a.ID, a.nafn
from KennariAfangi d
inner join Kennarar k on k.ID = d.idKennari
inner join Afangar a on a.ID = d.idAfangi;
