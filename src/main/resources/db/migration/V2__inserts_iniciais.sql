--ROLES
INSERT INTO TBL_ROLE VALUES(1, 'ADMIN');
INSERT INTO TBL_ROLE VALUES(2, 'COMUN');
INSERT INTO TBL_ROLE VALUES(3, 'SECRETARIA');
INSERT INTO TBL_ROLE VALUES(4, 'PROFISSIONAL');

--USUARIOS
INSERT INTO TBL_USUARIO VALUES(1, 'Administrador', 'andre', '518509974', 'admin@gmail.com', md5('admin'), 'S');
INSERT INTO TBL_USUARIO VALUES(2, 'Andre Nunes', 'andre', '518509974', 'andre@gmail.com', md5('123456'), 'N');
INSERT INTO TBL_USUARIO VALUES(3, 'Fernando', 'fernando', '518509974', 'fernando@gmail.com', md5('123456'), 'N');

--USUARIO ROLES
INSERT INTO TBL_USUARIO_ROLE VALUES(1, 1);
INSERT INTO TBL_USUARIO_ROLE VALUES(2, 2);
INSERT INTO TBL_USUARIO_ROLE VALUES(2, 3);
INSERT INTO TBL_USUARIO_ROLE VALUES(3, 4);

--CONTATOS
INSERT INTO TBL_CONTATO(ID, STR_EMAIL) VALUES('1','TESTE@GMAIL.COM.BR');
INSERT INTO TBL_CONTATO(ID, STR_EMAIL) VALUES('2','GENEROSO.FERNANDO@GMAIL.COM.BR');

--CEP
INSERT INTO TBL_CEP(ID, NUM_CEP) VALUES('1',90650040);
INSERT INTO TBL_CEP(ID, NUM_CEP) VALUES('2',88960000);
INSERT INTO TBL_CEP(ID, NUM_CEP) VALUES('3',80880010);

--SIGLA
INSERT INTO TBL_SIGLA(ID, STR_SIGLA) VALUES(1, 'SC');
INSERT INTO TBL_SIGLA(ID, STR_SIGLA) VALUES(2, 'RS');

--BAIRRO
INSERT INTO TBL_BAIRRO(ID, STR_NOME) VALUES(1, 'CENTRO');
INSERT INTO TBL_BAIRRO(ID, STR_NOME) VALUES(2, 'VILA S�O LUIZ');
INSERT INTO TBL_BAIRRO(ID, STR_NOME) VALUES(3, 'AZENHA');

--ESTADO
INSERT INTO TBL_ESTADO(ID, STR_NOME, FK_SIGLA) VALUES(1, 'SANTA CATARINA', 1);
INSERT INTO TBL_ESTADO(ID, STR_NOME, FK_SIGLA) VALUES(2, 'RIO GRANDE DO SUL', 2);

--CIDADE
INSERT INTO TBL_CIDADE(ID, STR_NOME, FK_ESTADO) VALUES(1, 'SOMBRIO', 1);
INSERT INTO TBL_CIDADE(ID, STR_NOME, FK_ESTADO) VALUES(2, 'CRICI�MA', 1);
INSERT INTO TBL_CIDADE(ID, STR_NOME, FK_ESTADO) VALUES(3, 'PORTO ALEGRE', 2);

--ENDERECO
INSERT INTO TBL_ENDERECO(ID, STR_ENDERECO, STR_PONTO_REFERENCIA, STR_COMPLEMENTO, NUM_NUMERO, FK_CEP, FK_CIDADE, FK_BAIRRO) VALUES(1, 'AV. NEREU RAMOS', 'NENHUM', 'NENHUM', 1300, 2, 1, 1);
INSERT INTO TBL_ENDERECO(ID, STR_ENDERECO, STR_PONTO_REFERENCIA, STR_COMPLEMENTO, NUM_NUMERO, FK_CEP, FK_CIDADE, FK_BAIRRO) VALUES(2, 'AV CENTEN�RIO', 'PR�XIMO RODOVI�RIA', 'NENHUM', 225, 3, 2, 1);
INSERT INTO TBL_ENDERECO(ID, STR_ENDERECO, STR_PONTO_REFERENCIA, STR_COMPLEMENTO, NUM_NUMERO, FK_CEP, FK_CIDADE, FK_BAIRRO) VALUES(3, 'RUA ONOFRE PIRES', 'NENHUM', 'AP 301', 20, 1, 3, 3);

--CONVENIO
INSERT INTO TBL_CONVENIO(ID, STR_NOME, STR_CNPJ, STR_RAZAO_SOCIAL, FK_ENDERECO, FK_CONTATO) VALUES(1, 'UNIMED', '82.759.515/0001-34', 'UNIMED S.A.', 2, 1);

--TIPO CONSULTA
INSERT INTO TBL_TIPO_CONSULTA(ID, STR_NOME) VALUES(1, 'OR�AMENTO');

--PACIENTE
INSERT INTO TBL_PACIENTE(ID, STR_CPF, STR_RG, STR_NOME, STR_GENERO, DTA_DATA_NASCIMENTO, STR_ESTADO_CIVIL, FK_CONTATO, FK_ENDERECO, FK_CONVENIO) VALUES(1, '005.136.809-93', '3.912.177', 'FERNANDO GENEROSO DA ROSA', 'MASCULINO', '1982-05-15', 'CASADO', 1, 3, 1);

--PROFISSIONAL
INSERT INTO TBL_PROFISSIONAL(ID, STR_NOME, STR_GENERO, STR_CONSELHO, STR_REGISTRO, STR_CODIGO_BRASILEIRO_OCUPACAO) VALUES(1, 'DENTISTA1', 'MASCULINO', 'CRO/SC', '1324', '132');

--TELEFONE
INSERT INTO TBL_TELEFONE(ID, NUM_NUMERO, NUM_DDD, STR_TIPO_TELEFONE, FK_CONTATO, FK_PROFISSIONAL) VALUES(1, 35330318, 48, 'RESIDENCIAL', 1,NULL);
INSERT INTO TBL_TELEFONE(ID, NUM_NUMERO, NUM_DDD, STR_TIPO_TELEFONE, FK_CONTATO, FK_PROFISSIONAL) VALUES(2, 99988778, 48, 'CELULAR', NULL, 1);

--AGENDA
INSERT INTO TBL_AGENDA(ID, BOO_CONFIRMADO, BOO_ENCAIXE, STR_STATUS_AGENDA, STR_OBSERVACAO, NUM_ANO, NUM_MES, NUM_DIA, NUM_HORA, NUM_MINUTO, FK_TIPO_CONSULTA, FK_PROFISSIONAL, FK_PACIENTE) VALUES(1, TRUE, FALSE, 'ABERTO', 'NENHUM', 2016, 5, 10, 14, 0, 1, 1, 1);