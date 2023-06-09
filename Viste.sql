/*
 * Vista per il Cookie di Sessione
 */

-- Creazione Vista

DROP VIEW IF EXISTS "Vista Cookie Sessione";
CREATE VIEW "Vista Cookie Sessione" ("Nome Cookie", "Descrizione") AS
    SELECT "Nome Cookie", "Descrizione"
        FROM "Cookie Sessione" cs
        ORDER BY cs."Nome Cookie";

-- Query da effettuare sulla vista "Vista Cookie Sessione"
-- Richiesta: Estrarre il nome e la descrizione dei cookie dopo una determinata data

SELECT vcs."Nome Cookie", vcs."Descrizione"
	FROM "Vista Cookie Sessione" vcs
	WHERE VCS."Nome Cookie" = ANY (
		SELECT cs."Nome Cookie"
			FROM "Cookie Sessione" cs
			WHERE cs."Data Creazione" >= '2020-05-31'
	);

/*
 * Vista per la Lettura Registrata
 */

-- Creazione Vista

DROP VIEW IF EXISTS "Vista Lettura Registrata";
CREATE VIEW "Vista Lettura Registrata" ("Titolo Articolo", "NumUtenti") AS
    SELECT "Titolo Articolo", COUNT(*)
        FROM "Lettura Registrata"
        GROUP BY "Titolo Articolo";

-- Query da effettuare sulla vista "Vista Lettura Registrata"
-- Richiesta: Estrarre il titolo dell'articolo più letto

SELECT "Titolo"
    FROM "Articolo"
    WHERE "Titolo" IN (
        SELECT "Titolo Articolo"
            FROM "Vista Lettura Registrata"
            WHERE "NumUtenti" = (
                SELECT MAX ("NumUtenti")
                    FROM "Vista Lettura Registrata"
            )
    );