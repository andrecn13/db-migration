CREATE TABLE TBL_ROLE(
	ID			serial PRIMARY KEY,
    STR_ROLE	varchar(40) NOT NULL
);

CREATE TABLE TBL_USUARIO(
	ID				serial PRIMARY KEY,
    STR_NOME       	varchar(40) NOT NULL,
    STR_TENANT 		varchar(40) NOT NULL,
    NUM_TELEFONE  	varchar(12) NULL,
    STR_EMAIL       varchar(40) NOT NULL,
    STR_SENHA  		varchar(40) NOT NULL,
    BOO_ADMIN  		char(1) NOT NULL DEFAULT 'N'
);

CREATE TABLE TBL_USUARIO_ROLE(
    FK_USUARIO integer references TBL_USUARIO (ID),
    FK_ROLE integer references TBL_ROLE (ID)
);