    -- 2. feladat
DROP DATABASE IF EXISTS videoteka_adatbazis;
CREATE DATABASE videoteka_adatbazis
    CHARACTER SET utf8mb4 
    COLLATE utf8mb4_hungarian_ci;

    -- 3. feladat
USE videoteka_adatbazis;    

    -- 4.feladat
    DROP TABLE IF EXISTS filmek;
CREATE TABLE IF NOT EXISTS filmek (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    cim VARCHAR(150) NOT NULL UNIQUE,
    rendezo VARCHAR(120),
    megjelenesi_ev YEAR, 
    hossz_perc INTEGER CHECK (hossz_perc BETWEEN 30 AND 400),
    mufaj ENUM("akcio", "vigjatek", "drama",
    "thriller"),
    imdb_ertekeles FLOAT DEFAULT 6.5 );

    -- 5.feladat
    DROP TABLE IF EXISTS kolcsonzok;
CREATE TABLE IF NOT EXISTS kolcsonzok (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nev VARCHAR(100),
    email VARCHAR(120) NOT NULL UNIQUE,
    varos VARCHAR(50) DEFAULT "Budapest",
    aktiv ENUM ('igen', 'nem') DEFAULT("igen"),
    regisztracios_idopontja DATETIME DEFAULT CURRENT_TIMESTAMP
);