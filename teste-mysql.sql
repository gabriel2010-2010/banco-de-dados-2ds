-- Criação da tabela com a estrutura exigida no passo 2 ao 5
CREATE TABLE Clientes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Data_Cadastro DATE NOT NULL
);

-- Passo 6: Inserção da Ana Silva (1ª linha)
INSERT INTO Clientes (Nome, Email, Data_Cadastro) 
VALUES ('Ana Silva', 'ana.silva@example.com', '2026-06-24');

-- Passo 11: Inserção do Carlos e da Beatriz (linhas 2 e 3 da tabela complementar)
-- Note que adaptamos para as colunas corretas da tabela Clientes
INSERT INTO Clientes (Nome, Email, Data_Cadastro) 
VALUES 
('Carlos Silva', 'carlos.silva@example.com', '2023-02-20'),
('Beatriz Souza', 'beatriz.s@example.com', '2023-03-10');
-- querry SQL 
SELECT * FROM Clientes;
