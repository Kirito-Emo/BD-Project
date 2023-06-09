/*
 * Query complesse:
 *   -- 1 con operatore di aggregazione e una join a 3 tabelle;
 *   -- 1 nidificata;
 *   -- 1 con operatori insiemistici.
 */

/*
 * Query con operatore di aggregazione e una join a 3 tabelle
 * Richiesta: Quanti utenti registrati accedono ad un sito
 */

SELECT COUNT (ALL ar."Utente Registrato") AS "Tot Utenti/Sito"
	FROM "Accesso Registrato" ar
	JOIN "Utente Registrato" ur ON ar."Utente Registrato" = ur."Username"
	JOIN "Sito" s ON ar."Sito" = s."URL"
	WHERE s."Nome Sito" = 'La Repubblica' AND ur."IP" = '192.168.0.11';

/*
 * Query nidificata	
 * Richiesta: Stampare i commenti con un ranking superiore alla media
 */

SELECT C.*
	FROM "Commento" C
	WHERE C."Ranking" > (
		SELECT AVG(C1."Ranking")
			FROM "Commento" C1
			WHERE C1."Link Articolo" = C."Link Articolo" AND C1."Titolo Articolo" = C."Titolo Articolo"
	)
	ORDER BY C."Link Articolo";

/*
 * Query insiemistica
 * Richiesta: 
 */

/*
 * Query opzionale nidificata
 * Richiesta: Quanti utenti hanno accettato i cookie di un determinato sito
 */

SELECT *
	FROM "Cookie Sessione" CS1
	WHERE EXISTS (
		SELECT *
            FROM "Cookie Sessione" CS2
            WHERE CS2."Sistema Operativo" = CS1."Sistema Operativo" AND CS2."ID" <> CS1."ID"
	);