CREATE DATABASE meubanco;

USE meubanco;

CREATE TABLE mensagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255),
    comentario VARCHAR(1000)
);
