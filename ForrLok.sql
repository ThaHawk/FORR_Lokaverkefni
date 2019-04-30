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
('Sigurður R. Ragnarsson', 'Tölvubraut', 'srr@tskoli.is');

insert into Afangar(nafn, lysing, stofa)
values
('FORR3GG05DU', 'C++ og gagnagrindur', 'H209'), #Geir
('KEST3CR05EU', 'CCNA - Routing and Switching',  'H304'), #Geir
('KEST2UN05CU', 'Tölvutækni - undirstöðuatriði netkerfa', 'H304'), #Abdel
('KEST2WG05DU', 'Windows Server - kerfisstjórnun', 'H304'), #Abdel
('GAGN2VG05CU', 'Venslaðir gagnagrunnar', 'H209'), #Siggi, Abdel?
('FORR1FG05AU', 'Forritun I'),
('FORK2FE02AU', 'Forritunarkeppni I'),
('FORK2FT02BU', 'Forritunarkeppni II'),
('FORK2FÞ02CU', 'Forritunarkeppni III'),
('FORR2FA05BU', 'Forritun II'),
('VEFÞ1VG05AU', 'Vefhönnun I'),
('VEFÞ2VH05BU', 'Vefhönnun II'),
('FORR2HF05CU', 'Hlutbundin forritun'),
('GAGN1NG05AU', 'Notkun gagnasafna'), 
('KEST1TR05AU', 'Tölvutækni - talnakerfi og rökrásir'),
('KEST2VJ05BU', 'Tölvutækni - vélbúnaður og jaðartæki (IoT)'),
('FORR4CF05EU', 'Gagnaskipan (C++)'),
('FORR3RR05DU', 'Reiknirit'),
('FORR2GL05DU', 'Leikjaforritun I'),
('FORR3FL05EU', ''),
('FORR3JS05DU', ''),
('FORR3FV05EU', ''),
('VEFÞ2VÞ05DU', ''),
('VEFÞ3VL05EU', ''),
('ROBO2RG05AU', ''),
('ROBO3RF05BU', ''),
('VEFÞ2VF05CU', ''),
('GAGN2HS05BU', ''), #Siggi, Abdel?
('KEST2LG05DU', ''),
('GAGN3GS05DU', ''), #Siggi
('KEST3LN05EU', ''),
('KEST3LS05FU', ''),
('KEST2WN05EU', ''),
('KEST3WS05FU', ''),
('KEST3CS05FU', ''),
('KEST3CN05GU', ''),
('FORR3NÞ05DU', ''),
('FORR3CG05DU', '');