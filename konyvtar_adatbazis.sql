-- 2. feladat 
CREATE DATABASE konyvtaradatbazis
    CHARACTER SET utf8mb4 
    COLLATE utf8mb4_hungarian_ci;

    -- 3. feladat 
USE konyvtaradatbazis;
    -- 4. feladat 
CREATE TABLE konyvek (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    cim VARCHAR(200) NOT NULL UNIQUE,
    szerzo VARCHAR(120),
    kiadasi_ev YEAR, 
    oldalszam INTEGER CHECK (BETWEEN 20 AND 2000),
    kategoria ENUM("fantasy", "sci-fi", "disztópia", "történelem")
    ertekeles FLOAT DEFAULT 5.0 
);
    -- 5. feladat
CREATE TABLE olvasok (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nev VARCHAR(100) NOT NULL UNIQUE,
    szuletesi_datum DATE,
    varos VARCHAR(50) DEFAULT(Budapest),
    aktiv DEFAULT(igen),
    regisztracios_idopontja 
);