CREATE DATABASE bdEscolaIdiomas
GO
USE bdEscolaIdiomas

CREATE TABLE tbAluno(
idAluno INT PRIMARY KEY IDENTITY (1,1)
,nomeAluno  VARCHAR (40) NOT NULL
,rgAluno  VARCHAR (14) NOT NULL
,enderecoAluno  VARCHAR (40) NOT NULL
,numEndAluno   VARCHAR (5) NOT NULL
,compAluno  VARCHAR (40) 
,bairroAluno  VARCHAR (40) NOT NULL
,cepAluno  VARCHAR (10) NOT NULL
,cidadeAluno  VARCHAR (40) NOT NULL
)
CREATE TABLE tbFoneAluno(
idFoneAluno  INT PRIMARY KEY IDENTITY (1,1)
,foneAluno  VARCHAR(9)
,idAluno INT FOREIGN KEY REFERENCES tbAluno(idAluno)
)
CREATE TABLE tbNivel(
idNivel INT PRIMARY KEY IDENTITY (1,1)
,descNivel  VARCHAR(20) NOT NULL
)
CREATE TABLE tbCurso(
idCurso INT PRIMARY KEY IDENTITY (1,1)
,nomeCurso VARCHAR(20) NOT NULL
)
CREATE TABLE tbPeriodo(
idPeriodo INT PRIMARY KEY IDENTITY (1,1)
,descPeriodo VARCHAR(80) NOT NULL
)
CREATE TABLE tbDiaSemana(
idDiaSemana INT PRIMARY KEY IDENTITY (1,1)
,diaSemana VARCHAR(80) NOT NULL
)
CREATE TABLE tbTurma(
idTurma INT PRIMARY KEY IDENTITY (1,1)
,horario  SMALLDATETIME NOT NULL
,idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso)
,idPeriodo INT FOREIGN KEY REFERENCES tbPeriodo(idPeriodo)
,idNivel INT FOREIGN KEY REFERENCES tbNivel(idNivel)
,idDiaSemana INT FOREIGN KEY REFERENCES tbDiaSemana(idDiaSemana)
)
CREATE TABLE tbMatricula(
idMatricula INT PRIMARY KEY IDENTITY (1,1)
,dataMatricula  SMALLDATETIME NOT NULL
,idAluno INT FOREIGN KEY REFERENCES tbAluno(idAluno)
,idTurma INT FOREIGN KEY REFERENCES tbTurma(idTurma)
)
