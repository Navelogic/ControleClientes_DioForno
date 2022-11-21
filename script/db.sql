CREATE DATABASE difornoADM;
USE difornoADM;

CREATE TABLE usuario(
        id_user INT PRIMARY KEY AUTO_INCREMENT,
        nome VARCHAR(500) NOT NULL,
        nomeTela VARCHAR(500) UNIQUE NOT NULL,
        senha VARCHAR(500) NOT NULL
);

INSERT INTO usuario VALUES (1,'Arian Weslley','Navelogic', '40028922');

CREATE TABLE clientes(
        id_cliente INT PRIMARY KEY AUTO_INCREMENT,
        nome VARCHAR(500) NOT NULL,
        saldo INT NOT NULL DEFAULT 0,
        cpf VARCHAR(500) UNIQUE NOT NULL,
        id_user INT NOT NULL
);

ALTER TABLE clientes
ADD CONSTRAINT id_user
FOREIGN KEY (id_user) REFERENCES usuario(id_user)

CREATE TABLE historico(
        id_historico INT PRIMARY KEY AUTO_INCREMENT,
        id_cliente INT NOT NULL,
        transacao VARCHAR(500) NOT NULL,
        dataTransaco VARCHAR(500) NOT NULL
);

ALTER TABLE historico
ADD CONSTRAINT id_cliente
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)