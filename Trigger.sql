/*
 * Creazione Trigger di creazione/popolamento
 */

/*
 * Trigger per Articolo
 */

DROP TRIGGER IF EXISTS tr_controllo_articolo ON "Articolo";

-- Creazione funzione trigger
CREATE OR REPLACE FUNCTION controllo_articolo()
RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (
        SELECT *
            FROM "Articolo"
            WHERE "Titolo" = NEW."Titolo" AND "URL Sito" <> NEW."URL Sito"
    ) THEN
        RAISE EXCEPTION 'Ogni articolo può appartenere ad uno e un solo sito';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Creazione Trigger
CREATE TRIGGER tr_controllo_articolo
BEFORE INSERT ON "Articolo"
FOR EACH ROW
EXECUTE FUNCTION controllo_articolo();

/*
 * Trigger Utente Cookieless
 */

DROP TRIGGER IF EXISTS tr_utente_cookieless ON "Utente Cookieless";

-- Creazione funzione trigger
CREATE OR REPLACE FUNCTION controllo_cookie_sessione()
RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (
        SELECT *
            FROM "Utente Cookieless"
            WHERE "IP" = NEW."IP" AND "ID Cookie" = NEW."ID Cookie"
    ) THEN
        RAISE EXCEPTION 'Ogni cookie di sessione è affibbiato ad un solo utente cookieless';
    END IF;
	RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Creazione Trigger
CREATE TRIGGER tr_utente_cookieless
BEFORE INSERT ON "Utente Cookieless"
FOR EACH ROW
EXECUTE FUNCTION controllo_cookie_sessione();

-------------------------------------------------------------------------------------

/*
 * Creazione Trigger aziendali
 */

/*
 * Trigger per Commento
 */

DROP TRIGGER IF EXISTS check_limite_commenti ON "Commento";

-- Creazione della funzione trigger
CREATE OR REPLACE FUNCTION limite_commenti()
RETURNS TRIGGER AS $$
BEGIN
    -- Verifica se l'utente ha già un commento per l'articolo corrente
    IF EXISTS (
        SELECT *
        FROM "Commento"
        WHERE "Username Utente" = NEW."Username Utente" AND "Titolo Articolo" = NEW."Titolo Articolo"
    ) THEN
   		RAISE EXCEPTION 'L''utente ha già fatto un commento per questo articolo.';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Creazione Trigger
CREATE TRIGGER check_limite_commenti
BEFORE INSERT ON "Utente Cookieless"
FOR EACH ROW
EXECUTE FUNCTION controllo_cookie_sessione();

-------------------------------------------------------------------------------------

/*
/*
 * Trigger per Numero Commenti
 */

DROP TRIGGER IF EXISTS trigger_aggiorna_numero_commenti ON "Commento";

-- Creazione della funzione trigger
CREATE OR REPLACE FUNCTION aggiorna_numero_commenti()
RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        UPDATE "Utente Registrato" AS ur
        SET "Numero Commenti" = ur."Numero Commenti" + 1
        WHERE ur."Username" = NEW."Username Utente";
    ELSIF TG_OP = 'DELETE' THEN
        UPDATE "Utente Registrato" AS ur
        SET "Numero Commenti" = ur."Numero Commenti" - 1
        WHERE ur."Username" = OLD."Username Utente";
    END IF;
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

-- Creazione Trigger
CREATE TRIGGER trigger_aggiorna_numero_commenti
AFTER INSERT OR DELETE ON "Commento"
FOR EACH ROW
EXECUTE FUNCTION aggiorna_numero_commenti();

/*
 * Trigger per Ranking
 */

DROP TRIGGER IF EXISTS tr_controllo_ranking ON "Commento";

-- Creazione funzione trigger
CREATE OR REPLACE FUNCTION controllo_ranking()
RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (
        SELECT *
            FROM "Commento"
            WHERE "Ranking" = NEW."Ranking"
    ) THEN
        RAISE EXCEPTION 'Il ranking di un commento deve essere compreso tra 1 e 5.';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Creazione Trigger
CREATE TRIGGER tr_controllo_ranking
BEFORE INSERT ON "Commento"
FOR EACH ROW
EXECUTE FUNCTION controllo_ranking();