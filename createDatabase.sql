CREATE TABLE [dbo].[Usuario]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Nome] VARCHAR(200) NOT NULL, 
    [Endereço] VARCHAR(250) NOT NULL, 
    [CEP] VARCHAR(9) NULL, 
    [Bairro] VARCHAR(150) NOT NULL, 
    [Cidade] VARCHAR(150) NOT NULL, 
    [UF] VARCHAR(100) NOT NULL
)

CREATE TABLE [dbo].[Agenda]
(
	[Id] INT NOT NULL PRIMARY KEY, 
	[IdUsuario] INT NOT NULL,
    [Nome] VARCHAR(100) NOT NULL, 
    constraint fk_usuario foreign key (IdUsuario) references [dbo].[usuario](Id)
)

CREATE TABLE [dbo].[Compromisso]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [IdAgenda] INT NOT NULL, 
	[Nome] VARCHAR(250) NOT NULL,
    [DataInicio] DATETIME NOT NULL, 
    [DataFim] DATETIME NULL
	constraint fk_agenda foreign key (IdAgenda) references [dbo].[Agenda](Id)
)