
CREATE DATABASE hospital;
USE hospital;

CREATE TABLE pacientes(
id_pac VARCHAR(8) NOT NULL PRIMARY KEY,
nome_pac VARCHAR(100) NOT NULL,
cpf_pac VARCHAR(11) NOT NULL,
endereco_pac VARCHAR(100) NOT NULL,
idade_pac INT NOT NULL,
dataNasc_pac DATE NOT NULL,
contato_pac VARCHAR(100) NOT NULL
);

CREATE TABLE medicos(
id_med VARCHAR(8) NOT NULL PRIMARY KEY,
nome_med VARCHAR(100) NOT NULL,
cpf_med VARCHAR(11) NOT NULL,
especializacao_med  VARCHAR(50),
id_pac_fk VARCHAR(8),
CONSTRAINT medico_paciente_fk FOREIGN KEY (id_pac_fk)
REFERENCES pacientes (id_pac)
);

CREATE TABLE enfermeiros(
id_enfem VARCHAR(8) NOT NULL PRIMARY KEY,
nome_enfem VARCHAR(100) NOT NULL,
cpf_enfem VARCHAR(11) NOT NULL,
cpf_pac_fk VARCHAR(11),
CONSTRAINT enferm_pac_fk FOREIGN KEY (cpf_pac_fk)
REFERENCES pacientes(id_pac)
);

CREATE TABLE farmaceuticos(
id_farm VARCHAR(8) NOT NULL PRIMARY KEY,
nome_farm VARCHAR(100) NOT NULL,
cpf_farm VARCHAR(11) NOT NULL
);

CREATE TABLE remedio(
id_remedio VARCHAR(8) NOT NULL PRIMARY KEY,
nome_remedio VARCHAR(100) NOT NULL,
qntd_remedio DECIMAL(4,2) NOT NULL,
div_remedio DATE NOT NULL,
horario_remedio TIME NOT NULL,
cpf_pac_fk VARCHAR (11) NOT NULL,
CONSTRAINT remedio_paciente_fk FOREIGN KEY (cpf_pac_fk)
REFERENCES pacientes(id_pac)
);