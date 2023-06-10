/*
 * Creazione Trigger di creazione/popolamento
 */

DROP TRIGGER IF EXISTS commento_utente_trigger ON "Commento";

CREATE OR REPLACE FUNCTION check_commento_utente()
RETURNS TRIGGER AS $$
BEGIN
    IF (
		SELECT *
			FROM "Commento"
			WHERE "Username Utente" = NEW."Username Utente" AND "Titolo Articolo" = NEW."Titolo Articolo"
	) <> 1 THEN
        RAISE EXCEPTION 'Un utente non può commentare più di una volta lo stesso articolo';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER commento_utente_trigger
BEFORE INSERT OR UPDATE ON "Commento"
FOR EACH ROW
EXECUTE FUNCTION check_commento_utente();

/*
 * Creazione Trigger aziendali
 */

-- Trigger per Commento

DROP TRIGGER IF EXISTS check_comment_limit ON "Commento";

-- Creazione della funzione trigger
CREATE OR REPLACE FUNCTION limit_comment_per_article()
RETURNS TRIGGER AS $$
BEGIN
    -- Verifica se l'utente ha già un commento per l'articolo corrente
    IF EXISTS (
        SELECT 1
        FROM "Commento"
        WHERE "Username Utente" = NEW."Username Utente" AND "Titolo Articolo" = NEW."Titolo Articolo"
    ) THEN
   		RAISE EXCEPTION 'L-utente ha già fatto un commento per questo articolo.';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Creazione del trigger
CREATE TRIGGER check_comment_limit
BEFORE INSERT ON "Commento"
FOR EACH ROW
EXECUTE FUNCTION limit_comment_per_article();