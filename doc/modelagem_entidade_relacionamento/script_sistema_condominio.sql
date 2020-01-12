-- Script do Banco de Dados do Projeto Bopepo

CREATE TABLE person (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  birthday DATE NOT NULL,
  sex CHAR(1) NOT NULL, -- M: Masculino, F: Feminino
  office VARCHAR(60) NOT NULL,
  school_formation VARCHAR(100) NOT NULL,
  blood_type VARCHAR(10),
  date_register DATE NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE type_documentation (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(60) NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE documentation (
  id INT NOT NULL AUTO_INCREMENT,
  type_documentation_id INT NOT NULL,
  number_doc VARCHAR(60) NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY (type_documentation_id) REFERENCES type_documentation(id)
);

CREATE TABLE person_doc (
  person_id INT NOT NULL,
  documentation_id INT NOT NULL,
  FOREIGN KEY (person_id) REFERENCES person (id),
  FOREIGN KEY (documentation_id) REFERENCES documentation(id)
);

-- Modelo Parte Autenticação e Controle de acesso
CREATE TABLE usuario (
  id INT NOT NULL AUTO_INCREMENT,
  person_id INT NOT NULL,
  username VARCHAR(60) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  quant_attempt_access INT NOT NULL,
  `status` INT NOT NULL, -- Obs: 1 Ativo, 0 Inativo
  PRIMARY KEY(id),
  FOREIGN KEY (person_id) REFERENCES person (id)
);

CREATE TABLE `profile` (
  id INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  description TEXT(500),
  PRIMARY KEY(id)
);

CREATE TABLE usuario_profile (
  usuario_id INT NOT NULL,
  profile_id INT NOT NULL,
  FOREIGN KEY (usuario_id) REFERENCES usuario (id),
  FOREIGN KEY (profile_id) REFERENCES `profile` (id)
);

CREATE TABLE funcao (
  id INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  description TEXT(500),
  PRIMARY KEY (id)
);

CREATE TABLE profile_funcao (
  profile_id INT NOT NULL,
  funcao_id INT NOT NULL,
  FOREIGN KEY (profile_id) REFERENCES `profile` (id),
  FOREIGN KEY (funcao_id) REFERENCES funcao(id)  
);
-- Fim do Modelo Parte Autenticação e Controle de acesso

-- Modelo Moradia
CREATE TABLE apartment (
 id INT NOT NULL AUTO_INCREMENT,
 properties_owner_id INT NOT NULL,
 `block` CHAR(1) NOT NULL,
 andar VARCHAR(10) NOT NULL,
 numero INT NOT NULL,
 PRIMARY KEY (id),
 FOREIGN KEY (properties_owner_id) REFERENCES person (id)
);

CREATE TABLE home (
  id INT NOT NULL AUTO_INCREMENT,
  resident_id INT NOT NULL,
  apartment_id INT NOT NULL,
  date_ini_home DATE NOT NULL,
  date_end_home DATE,
  PRIMARY KEY (id),
  FOREIGN KEY (resident_id) REFERENCES person (id),
  FOREIGN KEY (apartment_id) REFERENCES apartment (id)
);

CREATE TABLE notification (
 id INT NOT NULL AUTO_INCREMENT,
 from_id INT NOT NULL,
 apartment_id INT NOT NULL,
 nivel CHAR(1) NOT NULL, -- Obs: Representa o nível de acesso a notificação, P: Proprietário, M: Morador, T: Todos
 `subject` VARCHAR(255) NOT NULL,
 `text` TEXT(1000) NOT NULL,
 `status` INT(1) NOT NULL, -- Obs: Representa a situação da notificação, 0: Criada, 1; Lida 
 PRIMARY KEY (id),
 FOREIGN KEY (from_id) REFERENCES person (id),
 FOREIGN KEY (apartment_id) REFERENCES apartment (id)
);
-- Fim Modelo Moradia  
  
-- Modelo Financeiro
CREATE TABLE receita(
  id INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE launch (
  id INT NOT NULL AUTO_INCREMENT,
  description TEXT(500) NOT NULL,
  receita_id INT NOT NULL,
  apartment_id INT NOT NULL,
  reference_period VARCHAR(7) NOT NULL,
  due_date DATE NOT NULL,
  due_payment DATE NOT NULL,
  valor_main DECIMAL(9,2) NOT NULL,
  valor_interest DECIMAL(9,2) NOT NULL,
  valor_total DECIMAL(9,2) NOT NULL,
  note TEXT(500),
  `status` VARCHAR(60) NOT NULL, -- Representa a Situação do Lançamento: Em Aberto, Vencido, Pago, Cancelado 
  PRIMARY KEY(id),
  FOREIGN KEY (receita_id) REFERENCES receita (id),
  FOREIGN KEY (apartment_id) REFERENCES apartment (id)
);

CREATE TABLE issuance (
  id INT NOT NULL AUTO_INCREMENT,
  launch_id INT NOT NULL,
  person_id INT NOT NULL,
  valor_main DECIMAL(9,2) NOT NULL,
  valor_interest DECIMAL(9,2) NOT NULL,
  valor_total DECIMAL(9,2) NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY (launch_id) REFERENCES launch (id),
  FOREIGN KEY (person_id) REFERENCES person (id)
);

CREATE TABLE payment (
  id INT NOT NULL AUTO_INCREMENT,
  launch_id INT NOT NULL,
  bank_pay VARCHAR(10) NOT NULL,
  agency_pay VARCHAR(10) NOT NULL,
  method_pay VARCHAR(10) NOT NULL,
  issuance_id INT NOT NULL,
  valor_main_pay DECIMAL(9,2) NOT NULL,
  valor_interest_pay DECIMAL(9,2) NOT NULL,
  valor_total_pay DECIMAL(9,2) NOT NULL,
  due_payment DATE NOT NULL,
  due_processing DATE NOT NULL,
  `status` VARCHAR(60) NOT NULL, -- Presenta a Situação do Pagamento: Ativo, Cancelado
  PRIMARY KEY(id),
  FOREIGN KEY (launch_id) REFERENCES launch (id),
  FOREIGN KEY (issuance_id) REFERENCES issuance (id)
);
-- Fim do Modelo Financeiro

CREATE TABLE parametro (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(60) NOT NULL,
  valor VARCHAR(100) NOT NULL,
  PRIMARY KEY(id)
);