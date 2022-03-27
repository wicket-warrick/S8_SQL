CREATE DATABASE HAB;
USE HAB;
CREATE TABLE users(
id_user INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
dni VARCHAR(25) NOT NULL UNIQUE,
tlf INT UNSIGNED,
email VARCHAR(50) UNIQUE NOT NULL,
nome VARCHAR(50) NOT NULL,
apelidos VARCHAR(50) NOT NULL,
direccion VARCHAR(100) NOT NULL,
cp VARCHAR(25) NOT NULL,
localidade VARCHAR(25) NOT NULL,
pais VARCHAR(25) NOT NULL
);



ALTER TABLE users
DROP COLUMN direccion,
DROP COLUMN cp,
DROP COLUMN localidade,
drop COLUMN pais;



CREATE TABLE address(
id_address INT UNSIGNED AUTO_INCREMENT,
id_user INT UNSIGNED NOT NULL,
direccion VARCHAR(100) NOT NULL,
cp VARCHAR(25) NOT NULL,
localidade VARCHAR(25) NOT NULL,
pais VARCHAR(25) NOT NULL,
otros VARCHAR(250),
PRIMARY KEY(id_address,id_user),
FOREIGN KEY (id_user) REFERENCES users (id_user)
);

INSERT INTO users(nome,apelidos,email,tlf,dni)
VALUES('Irvin','Lethem','ilethem0@google.com.au','993870144','279948941-9');

INSERT INTO users(nome,apelidos,email,tlf,dni)
VALUES('Kylie','Mungan','kmungan1@howstuffworks.com','497494899','748551874-7'),
('Yul','Dibbert','ydibbert2@businesswire.com','776631050','215649413-4'),
('Tamra','Mc Gorley','tmcgorley3@studiopress.com','921948685','617064473-7'),
('Elmira','Imbrey','eimbrey4@cpanel.net','304168000','178988896-4');

INSERT INTO address(id_user,pais,cp,direccion,localidade)
VALUES('1','Indonesia','83297','98339 Loftsgordon Road','Babakanbandung'),
('2','Philippines','44455','74641 Dwight Avenue','Bilar'),
('3','Indonesia','62965','9510 Milwaukee Street','Sumberejo'),
('4','Norway','54756','8902 Doe Crossing Alley','Steinkjer'),
('5','United States','51471','8616 Stephen Hill','Charleston');


SELECT nome,apelidos,tlf FROM users ORDER BY apelidos ASC;

SELECT  pais ,COUNT(*)  FROM address
GROUP BY pais;



