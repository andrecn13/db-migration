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