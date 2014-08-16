--criando o usuario do banco de dados
CREATE ROLE banco LOGIN
  ENCRYPTED PASSWORD 'md5cd2f6e7a719acd24be2000076f9da2c2'
  SUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
--senha:123456


--criando o banco de dados
CREATE DATABASE chat
  WITH OWNER = banco
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'pt_BR.UTF-8'
       LC_CTYPE = 'pt_BR.UTF-8'
       CONNECTION LIMIT = -1;

--criando a tabela do sistema de chat
CREATE TABLE chat (
	id SERIAL PRIMARY KEY,
	nome VARCHAR (80),
	mensagem TEXT,
	data TIMESTAMP
);

