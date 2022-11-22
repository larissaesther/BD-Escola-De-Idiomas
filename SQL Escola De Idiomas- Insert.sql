USE bdEscolaIdiomas

INSERT INTO tbAluno (nomeAluno,rgAluno,enderecoAluno,numEndAluno,compAluno,bairroAluno,cepAluno,cidadeAluno)
VALUES ('Armando Jos� Santana','1342587','Rua S�o Jos�','638','Santo Amaro','04739-001','S�o Paulo')
       ,('Henrique Santos','2384149','Avenida 9 de Julho','619',' Vila Sao Joao','08551-000','S�o Paulo')
	   ,('Carlos Silva','7895641',' R. Manuel de Castilho','166','Itaim Paulista','08120-030','S�o Paulo')
	   ,('Maria Aparecida Souza','4569123','Rua Peixoto Gomide','1914', ' Cerqueira C�sar','01409-000', 'S�o Paulo')
	   ,('Adriana Nogueira Silva', '7845123', 'Rua Galv�o Bueno', '733', 'Bela Vista', '01317-001', 'S�o Paulo')
	   ,('Paulo Henrique Silva', '2586914', ' R. Aspicuelta', '237', 'Alto de Pinheiros', '05433-010', 'S�o Paulo')
	   SELECT * FROM tbAluno
INSERT INTO tbFoneAluno (foneAluno, idAluno)
VALUES ('11 95463-3567', 1)
       ,('11 97658-0978', 1)
	   ,('11 93258-7894', 2)
	   ,('11 95476-9865', 2)
	   ,('11 97867-5478', 3)
	   ,('11 92344-4567', 3)
	   ,('11 96547-4484', 4)
	   ,('11 98765-4209', 4)
	   ,('11 96798-2345', 5)
	   ,('11 94567-0918', 5)
	   ,('11 98959-6523', 6)
	   ,('11 912345-7645', 6)
	   SELECT * FROM tbFoneAluno
INSERT INTO tbNivel (descNivel)
VALUES ('Iniciante') 
      ,('Intermediario')
      ,('Fluente')
   SELECT * FROM tbNivel

INSERT INTO tbCurso (nomeCurso)
VALUES ('Ingl�s') 
      ,('Espanhol')
      ,('Mandarim')
SELECT * FROM tbCurso

INSERT INTO tbPeriodo (descPeriodo)
VALUES ('Manh�') 
       ,('Tarde')
       ,('Noite')
SELECT * FROM tbPeriodo

INSERT INTO tbDiaSemana (diaSemana)
VALUES ('Segunda-Feira')
       ,('Ter�a-Feira')
	   ,('Quarta-Feira')
       ,('Quinta-Feira')
	   ,('Sexta-Feira')
SELECT * FROM tbDiaSemana
INSERT INTO tbTurma (horario, idCurso, idPeriodo, tbNivel, tbDiaSemana)
VALUES ('13:30', 1, 2, 1, 2)
      ,('07:00', 3, 1, 3, 5)
	  ,('18:30', 2, 3, 2, 1)
	  ,('13:30', 1, 2, 2, 3)
	  ,('18:30', 1, 3, 3, 4)
SELECT * FROM tbTurma
INSERT INTO tbMatricula (dataMatricula, idAluno, idTurma)
VALUES ('11/02/2022', 1, 1)
      ,('11/02/2020', 1, 2)
	  ,('15/04/2021', 2, 3)
	  ,('16/04/2019', 2, 1)
	  ,('01/08/2022', 3, 1)
	  ,('13/08/2015', 3, 1)
	  ,('21/05/2020', 4, 1)
	  ,('08/05/2021', 4, 1)
	  ,('29/09/2021', 5, 1)
	  ,('17/09/2019', 5, 1)
	  ,('02/10/2020', 6, 1)
	  ,('06/10/2017', 6, 1)
SELECT * FROM tbMatricula
--H� alguns erros que eu n�o entendi, e n�o consegui resolver, desculpa por entregar assim e entregar atrasado--