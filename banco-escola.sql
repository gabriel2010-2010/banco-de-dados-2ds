-- 1. Criar o Banco de Dados
CREATE DATABASE IF NOT EXISTS Escola;
USE Escola;

-- 2. Criar tabela de Professores (sem dependência externa)
CREATE TABLE Professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(50),
    data_contratacao DATE
);

-- 3. Criar tabela de Alunos
CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    matricula VARCHAR(20) UNIQUE NOT NULL
);

-- 4. Criar tabela de Turmas (depende de Professor)
CREATE TABLE Turmas (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome_turma VARCHAR(50) NOT NULL,
    ano_letivo INT NOT NULL,
    id_professor INT,
    FOREIGN KEY (id_professor) REFERENCES Professores(id_professor)
);

-- 5. Criar tabela de Matrículas (tabela intermediária Aluno <-> Turma)
CREATE TABLE Matriculas (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_turma INT,
    data_matricula DATE,
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES Turmas(id_turma)
);
