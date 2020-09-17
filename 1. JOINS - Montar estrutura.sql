use master;
GO
create database dbTeste_Joins;
GO
use dbTeste_Joins;
GO
create table Cargo(
    CodCargo char(2) not null,
    NomeCargo varchar(50) null,
    ValorCargo money null,
    Primary Key(CodCargo)
);
GO
create table Funcionario(
    Matricula int,
    NomeFuncinario varchar(50) not null,
    CodCargo char(2) null,
    Primary Key(Matricula),
    Foreign Key(CodCargo) References Cargo(CodCargo)
);
GO
insert Cargo values ('C1','Caixa', 800.00),
                    ('C2','Vendedor', 1200.00),
                    ('C3','Gerente', 2400.00);
insert Funcionario values (100, 'Marcio', 'C2'),
                          (200, 'Rogerio', 'C1'),
                          (300, 'Cezar', 'C1'),
                          (400, 'Paulo', null);
