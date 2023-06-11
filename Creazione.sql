/*
 * Script di creazione
 */

--Creazione del database
CREATE DATABASE "Cookies Profilation"
    WITH
        OWNER = postgres
        ENCODING = 'UTF8'
        LC_COLLATE = 'en_GB.UTF-8'
        LC_CTYPE = 'en_GB.UTF-8'
        TABLESPACE = pg_default
        CONNECTION LIMIT = -1
        IS_TEMPLATE = False;

-- Creazione delle relazioni per le entità

DROP TABLE IF EXISTS "Sito";
CREATE TABLE "Sito" (
    "URL" VARCHAR NOT NULL,
    "Nome Sito" VARCHAR NOT NULL,
    PRIMARY KEY ("URL")
);

DROP TABLE IF EXISTS "Articolo";
CREATE TABLE "Articolo" (
    "Link" VARCHAR NOT NULL,
    "Titolo" VARCHAR NOT NULL,
    "Corpo" VARCHAR NOT NULL,
    "Autore" VARCHAR NOT NULL,
    "Data Creazione" DATE NOT NULL,
    "Ora Creazione" TIME NOT NULL,
    "Tempo Lettura Stimato" INTEGER NOT NULL,
    "URL Sito" VARCHAR NOT NULL,
    PRIMARY KEY ("Link", "Titolo"),
    FOREIGN KEY ("URL Sito") REFERENCES "Sito"("URL") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE SET NULL
);

DROP TABLE IF EXISTS "Cookie Persistenti";
CREATE TABLE "Cookie Persistenti" (
    "ID" INTEGER PRIMARY KEY,
    "Nome Cookie" VARCHAR NOT NULL,
    "Descrizione" VARCHAR NOT NULL,
    "Geolocalizzazione" VARCHAR NOT NULL,
    "Tema" VARCHAR NOT NULL,
    "Data Creazione" DATE NOT NULL,
    "Data Scadenza" DATE NOT NULL
);

DROP TABLE IF EXISTS "Cookie Sessione";
CREATE TABLE "Cookie Sessione" (
    "ID" INTEGER PRIMARY KEY,
    "Nome Cookie" VARCHAR(20) NOT NULL,
    "Descrizione" VARCHAR NOT NULL,
    "Sistema Operativo" VARCHAR NOT NULL,
    "Lingua" VARCHAR NOT NULL,
    "Schermo" VARCHAR NOT NULL,
    "Browser" VARCHAR NOT NULL,
    "Data Creazione" DATE NOT NULL
);

DROP TABLE IF EXISTS "Utente Registrato";
CREATE TABLE "Utente Registrato" (
    "Username" VARCHAR(30) PRIMARY KEY,
    "Nome" VARCHAR(30) NOT NULL,
    "Cognome" VARCHAR(30) NOT NULL,
    "Età" INTEGER NOT NULL,
    "Sesso" CHAR NOT NULL,
    "Email" VARCHAR(40) NOT NULL,
    "IP" VARCHAR NOT NULL,
    "Numero Commenti" INTEGER NOT NULL
);

DROP TABLE IF EXISTS "Utente Cookieless";
CREATE TABLE "Utente Cookieless" (
    "IP" VARCHAR PRIMARY KEY,
    "ID Cookie" INTEGER NOT NULL,
    FOREIGN KEY ("ID Cookie") REFERENCES "Cookie Sessione"("ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE SET NULL
);

DROP TABLE IF EXISTS "Tag";
CREATE TABLE "Tag" (
    "Keywords" VARCHAR(15) NOT NULL,
    PRIMARY KEY ("Keywords")
);

DROP TABLE IF EXISTS "Commento";
CREATE TABLE "Commento" (
    "Data Scrittura" DATE,
    "Username Utente" VARCHAR NOT NULL,
    "Ranking" INTEGER NOT NULL,
    "Testo" VARCHAR(250) NOT NULL,
    "Link Articolo" VARCHAR NOT NULL,
    "Titolo Articolo" VARCHAR NOT NULL,
    PRIMARY KEY("Data Scrittura", "Username Utente"),
    FOREIGN KEY ("Username Utente") REFERENCES "Utente Registrato"("Username") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE SET NULL,
    FOREIGN KEY ("Link Articolo", "Titolo Articolo") REFERENCES "Articolo"("Link", "Titolo") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE SET NULL
);

-- Creazione delle relazioni per le associazioni

DROP TABLE IF EXISTS "Profilazione";
CREATE TABLE "Profilazione" (
    "Utente Registrato" VARCHAR NOT NULL,
    "Cookie Persistenti" INTEGER NOT NULL,
    PRIMARY KEY("Utente Registrato", "Cookie Persistenti"),
    FOREIGN KEY ("Utente Registrato") REFERENCES "Utente Registrato"("Username") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE SET NULL,
    FOREIGN KEY ("Cookie Persistenti") REFERENCES "Cookie Persistenti"("ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE SET NULL
);

DROP TABLE IF EXISTS "Accesso Registrato";
CREATE TABLE "Accesso Registrato" (
    "Sito" VARCHAR NOT NULL,
    "Utente Registrato" VARCHAR NOT NULL,
    PRIMARY KEY("Sito", "Utente Registrato"),
    FOREIGN KEY ("Utente Registrato") REFERENCES "Utente Registrato"("Username") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE SET NULL,
    FOREIGN KEY ("Sito") REFERENCES "Sito"("URL") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE SET NULL
);

DROP TABLE IF EXISTS "Lettura Registrata";
CREATE TABLE "Lettura Registrata" (
    "Link Articolo" VARCHAR NOT NULL,
    "Titolo Articolo" VARCHAR NOT NULL,
    "Utente Registrato" VARCHAR NOT NULL,
    "Tempo Lettura Effettivo" INTEGER NOT NULL,
    PRIMARY KEY("Link Articolo", "Titolo Articolo", "Utente Registrato"),
    FOREIGN KEY ("Utente Registrato") REFERENCES "Utente Registrato"("Username") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE SET NULL,
    FOREIGN KEY ("Link Articolo", "Titolo Articolo") REFERENCES "Articolo"("Link", "Titolo") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE SET NULL
);

DROP TABLE IF EXISTS "Lettura Anonima";
CREATE TABLE "Lettura Anonima" (
    "Link Articolo" VARCHAR NOT NULL,
    "Titolo Articolo" VARCHAR NOT NULL,
    "Utente Cookieless" VARCHAR NOT NULL,
    "Tempo Lettura Effettivo" INTEGER NOT NULL,
    PRIMARY KEY("Link Articolo", "Titolo Articolo", "Utente Cookieless"),
    FOREIGN KEY ("Utente Cookieless") REFERENCES "Utente Cookieless"("IP") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE SET NULL,
    FOREIGN KEY ("Link Articolo", "Titolo Articolo") REFERENCES "Articolo"("Link", "Titolo") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE SET NULL
);

DROP TABLE IF EXISTS "Accesso Anonimo";
CREATE TABLE "Accesso Anonimo" (
    "Sito" VARCHAR NOT NULL,
    "Utente Cookieless" VARCHAR NOT NULL,
    PRIMARY KEY("Sito", "Utente Cookieless"),
    FOREIGN KEY ("Utente Cookieless") REFERENCES "Utente Cookieless"("IP") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE SET NULL,
    FOREIGN KEY ("Sito") REFERENCES "Sito"("URL") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE SET NULL
);

DROP TABLE IF EXISTS "Possiede Registrato";
CREATE TABLE "Possiede Registrato" (
    "Sito" VARCHAR NOT NULL,
    "Cookie Persistenti" INTEGER NOT NULL,
    PRIMARY KEY("Sito", "Cookie Persistenti"),
    FOREIGN KEY ("Sito") REFERENCES "Sito"("URL") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE SET NULL,
    FOREIGN KEY ("Cookie Persistenti") REFERENCES "Cookie Persistenti"("ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE SET NULL
);

DROP TABLE IF EXISTS "Possiede Anonimo";
CREATE TABLE "Possiede Anonimo" (
    "Cookie Sessione" INTEGER NOT NULL,
    "Sito" VARCHAR NOT NULL,
    PRIMARY KEY("Sito", "Cookie Sessione"),
    FOREIGN KEY ("Sito") REFERENCES "Sito"("URL") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE SET NULL,
    FOREIGN KEY ("Cookie Sessione") REFERENCES "Cookie Sessione"("ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE SET NULL
);

DROP TABLE IF EXISTS "Indice";
CREATE TABLE "Indice" (
    "Link Articolo" VARCHAR NOT NULL,
    "Titolo Articolo" VARCHAR NOT NULL,
    "Tag" VARCHAR NOT NULL,
    PRIMARY KEY("Link Articolo", "Titolo Articolo", "Tag"),
    FOREIGN KEY ("Tag") REFERENCES "Tag"("Keywords") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE SET NULL,
    FOREIGN KEY ("Link Articolo", "Titolo Articolo") REFERENCES "Articolo"("Link", "Titolo") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE SET NULL
);