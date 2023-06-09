/*
 * Query complesse:
 *   -- 1 con operatore di aggregazione e una join a 3 tabelle;
 *   -- 1 nidificata;
 *   -- 1 con operatori insiemistici.
 */

/*
 * Query con operatore di aggregazione e una join a 3 tabelle
 * Richiesta: Quanti utenti registrati accedono ad un sito con uno specifico indirizzo IP
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
 * Richiesta: Estrarre quanti utenti di sesso femminile hanno visitato un determinato sito con un'età superiore ai 16 anni
 */

SELECT UR."Username"
	FROM "Utente Registrato" UR
	GROUP BY UR."Username"
	HAVING UR."Età" > 16 AND UR."Sesso" = 'F'
	INTERSECT
SELECT AR."Utente Registrato"
	FROM "Accesso Registrato" AR
	WHERE AR."Sito" = 'https://www.gazzetta.it'

/*
 * Query opzionale nidificata
 * Richiesta: Estrarre i cookie di sessione che denotano l'utilizzo dello stesso Sistema Operativo
 */

SELECT *
	FROM "Cookie Sessione" CS1
	WHERE EXISTS (
		SELECT *
            FROM "Cookie Sessione" CS2
            WHERE CS2."Sistema Operativo" = CS1."Sistema Operativo" AND CS2."ID" <> CS1."ID"
	);