CREATE DATABASE meubanco;

USE meubanco;

CREATE TABLE mensagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(55),
    email VARCHAR(50),
    comentario VARCHAR(144)
);
