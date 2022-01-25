drop table if exists Linha;
create table Linha(
    idLinha int primary key,
    Número int not null unique,
    EmFuncionamento int not null,
    LimiteDaLnha1 int references Paragem not null,
    LimiteDaLnha2 int references Paragem not null,
    constraint bool check(EmFuncionamento=0 or EmFuncionamento=1)
);


drop table if exists Paragem;
create table Paragem(
    idParagem int primary key,
    Nome varchar(30) not null,
    EmFuncionamento int not null,
    idZona int references Zona not null,
    constraint bool check(EmFuncionamento=0 or EmFuncionamento=1)
);


drop table if exists Zona;
create table Zona(
    idZona int primary key,
    Nome char(4) not null unique
);


drop table if exists Horário;
create table Horário(
    idHorário int primary key,
    idLinha int references Linha not null,
    idTipoHorário int references TipoHorário not null
);


drop table if exists TipoHorário;
create table TipoHorário(
    idTipoHorário int primary key,
    Nome varchar(20) not null unique,
    constraint TipoHorárioVálido check(Nome='Dias Úteis' or Nome='Sábados' or Nome='Domingos/Feriados' or Nome='Verão' or Nome='Férias Escolares')
);


drop table if exists AlteraçãoServiço;
create table AlteraçãoServiço(
    idAlteraçãoServiço int primary key,
    Motivo varchar(100),
    DataInício date not null,
    DataFinal date not null,
    idTipoAlteração int references TipoAlteraçãoServiço not null,
    constraint PeríodoTempoVálido check(DataFinal >= DataInício)
);


drop table if exists TipoAlteraçãoServiço;
create table TipoAlteraçãoServiço(
    idTipoAlteraçãoServiço int primary key,
    Nome varchar(20) not null unique,
    constraint TipoAlteraçãoVálido check(Nome='Linha' or Nome='Paragem' or Nome='Horário')
);


drop table if exists Passagem;
create table Passagem(
    idPassagem int primary key,
    idHorário int references Horário not null,
    idLinha int references Linha not null,
    idParagem int references Paragem not null,
    Hora time not null  -- time doesn't really work as desired but I suppose we can use constraints
);


drop table if exists Autocarro;
create table Autocarro(
    idAutocarro int primary key,
    Matricula char(8) not null unique,
    EmFuncionamento int not null,
    idTipoAutocarro int references TipoAutocarro not null,
    constraint bool check(EmFuncionamento=0 or EmFuncionamento=1)
);


drop table if exists TipoAutocarro;
create table TipoAutocarro(
    idTipoAutocarro int primary key,
    Nome varchar(20) not null unique,
    MaxLugaresSentados int not null,
    MaxLugaresPé int not null,
    constraint LugaresPositivos check(MaxLugaresPé>0 and MaxLugaresSentados>0),
    constraint TipoAutocarroVálido check(Nome='Standard' or Nome='Articulado' or Nome = 'Dois Pisos' or Nome='Mini')
);


drop table if exists Condutor;
create table Condutor(
    idCondutor int primary key,
    Nome varchar(80) not null,
    Contacto char(9) unique not null,
    DataNascimento date not null,
    Morada varchar(200) not null,
    Nacionalidade varchar(20) not null,
    NumDocIdentificacao varchar(12) not null unique
);



--associações

drop table if exists LinhaDoAutocarro;
create table LinhaDoAutocarro(
    idAutocarro int references Autocarro not null,
    idLinha int references Linha not null,
    primary key (idAutocarro, idLinha)
);


drop table if exists CondutorDoAutocarro;
create table CondutorDoAutocarro(
    idAutocarro int references Autocarro not null,
    idCondutor int references Condutor not null,
    primary key (idAutocarro, idCondutor)
);


drop table if exists AlteraçãoHorário;
create table AlteraçãoHorário(
    idALteraçãoServiço int references AlteraçãoServiço primary key not null,
    idPassagem int references Passagem not null
);


drop table if exists DesativaçãoLinha;
create table DesativaçãoLinha(
    idALteraçãoServiço int references AlteraçãoServiço primary key not null,
    idLinha int references Linha not null
);


drop table if exists DesativaçãoParagem;
create table DesativaçãoParagem(
    idALteraçãoServiço int references AlteraçãoServiço primary key not null,
    idParagem int references Paragem not null
);









