/*
USUARIO(IdUsuario PK, NomeUsuario, Email, Senha, TipoUsuario)
FRANQUIA(IdFranquia PK, Nome)
OBRA(IdObra PK, Titulo, Sinopse, Lancamento, TipoObra)

FILME(IdObra FK, Edição PK, IdFranquia FKPK)
SERIE(IdObra FK, IdSerie PK, DataTermino)
EPISODIO(IdObra FK, Id_Serie FKPK, Temporada PK, NumeroEpisodio PK)

AVALIACAO(IdObra FKPK, IdUsuario FKPK, Nota, Comentario, DataHoraAvaliacao)
LIKE_AVALIACAO(IdObra_Avaliada FKPK, IdUsuario_Avaliador FKPK, IdUsuario_Curtidor FKPK)
*/

CREATE DATABASE  RatingHub;

CREATE TYPE papel_usuario_enum AS ENUM (
    'GESTOR',
	'CRITICO',
	'NORMAL'
);

CREATE TYPE tipos_obra_enum AS ENUM (
	'SERIE',
	'EPISODIO',
	'FILME'
);

CREATE TABLE usuario(
	id_usuario SERIAL PRIMARY KEY,
	nome_usuario VARCHAR(100) NOT NULL,
	email VARCHAR(150) NOT NULL,
	senha VARCHAR(512) NOT NULL,
	tipo_usuario papel_usuario_enum DEFAULT 'NORMAL'
);

CREATE TABLE franquia(
	id_franquia SERIAL NOT NULL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

CREATE TABLE obra(
	id_obra SERIAL PRIMARY KEY,
	titulo VARCHAR(255) NOT NULL,
	sinopse TEXT NOT NULL,
	lancamento DATE NOT NULL,
	tipo_obra tipos_obra_enum NOT NULL
);

CREATE TABLE filme(
	id_franquia INT,
	edicao INT,
	id_obra INT UNIQUE NOT NULL,

	PRIMARY KEY(id_franquia, edicao),
	FOREIGN KEY(id_franquia) REFERENCES franquia(id_franquia),
	FOREIGN KEY(id_obra) REFERENCES obra(id_obra)
);

CREATE TABLE serie(
	id_serie SERIAL PRIMARY KEY,
	id_obra INT NOT NULL,

	FOREIGN KEY(id_obra) REFERENCES obra(id_obra)
);

CREATE TABLE episodio(
	id_serie INT,
	temporada INT,
	numero_episodio INT,
	id_obra int NOT NULL,

	PRIMARY KEY(id_serie, temporada, numero_episodio),
	FOREIGN KEY(id_obra) REFERENCES obra(id_obra)
);

CREATE TABLE avaliacao(
	id_obra INT,
	id_usuario INT,
	nota INT CHECK(nota >= 0 AND nota <= 100) NOT NULL,
	comentario VARCHAR(512) NOT NULL,
	data_hora_avaliacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

	PRIMARY KEY(id_obra, id_usuario),
	FOREIGN KEY(id_obra) REFERENCES obra(id_obra),
	FOREIGN KEY(id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE curtida_avaliacao(
	id_obra_avaliada INT,
	id_usuario_avaliador INT,
	id_usuario_curtidor INT,

	PRIMARY KEY(id_obra_avaliada, id_usuario_avaliador, id_usuario_curtidor),
	FOREIGN KEY(id_obra_avaliada, id_usuario_avaliador) REFERENCES avaliacao(id_obra, id_usuario),
	FOREIGN KEY(id_usuario_curtidor) REFERENCES usuario(id_usuario)
);
