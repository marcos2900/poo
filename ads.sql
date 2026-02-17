-- Tabela: cor
CREATE TABLE cor (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO cor (id, nome) VALUES
(1, 'Azul'),
(2, 'Amarelo'),
(3, 'Verde'),
(4, 'Branco'),
(5, 'Preto');

-- Tabela: marca
CREATE TABLE marca (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO marca (id, nome) VALUES
(1, 'Lacoste'),
(2, 'Nike'),
(3, 'Adidas'),
(4, 'Calvin Klein');

-- Tabela: roupa
CREATE TABLE roupa (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  tamanho VARCHAR(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  preco VARCHAR(40) NULL,
  id_marca INT,
  id_cor INT,
  tipo VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (id),
  INDEX idx_marca (id_marca),
  INDEX idx_cor (id_cor),
  CONSTRAINT fk_roupa_cor FOREIGN KEY (id_cor) REFERENCES cor (id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT fk_roupa_marca FOREIGN KEY (id_marca) REFERENCES marca (id) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO roupa (id, nome, tamanho, preco, id_marca, id_cor, tipo) VALUES
(1, 'Calça', 'M', 150.00, 4, 1, 'Jeans'),
(2, 'Camiseta', 'M', 100.00, 4, 4, 'Polo'),
(3, 'Shorts', 'M', 80.00, 2, 5, 'Jeans');


