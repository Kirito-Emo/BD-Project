/*
 * Script di popolamento del database
*/

-- Popolamento Sito

INSERT INTO "Sito" ("URL", "Nome Sito")
    VALUES
        ('https://repubblica.it', 'La Repubblica'),
        ('https://www.gazzetta.it', 'La Gazzetta dello Sport'),
        ('https://libero.it', 'Libero'),
        ('https://tg24.sky.it', 'Sky TG'),
        ('https://corrieredelvino.it', 'Corriere del Vino');

-- Popolamento Articolo

INSERT INTO "Articolo" ("Link", "Titolo", "Corpo", "Autore", "Data Creazione", "Ora Creazione", "Tempo Lettura Stimato", "URL Sito")
    VALUES
        -- Libero
        ('https://libero.it/bimba-di-un-anno-trovata-morta', 'Bimba di un anno trovata morta', 'Una bambina di un anno è stata trovata morta in un''auto parcheggiata in via dei Fucilieri, a Roma in zona Cecchignola. Stella, così si chiamava la bimba, è stata lasciata in macchina dal padre, carabiniere in servizio nella struttura dello Stato Maggiore della Difesa che si trova nella zona. Doveva lasciarla all''asilo nido dei figli dei dipendenti. Quando la madre è andata a riprenderla, ha scoperto che la piccola non era mai entrata. Le maestre le hanno detto che non era mai stata portata. È corsa verso la macchina, ha cominciato a urlare. Un passante ha rotto il finestrino per cercare di farla respirare. Il personale del 118, arrivato sul posto, ha cercato di rianimare la bambina ma era troppo tardi.', 'Ubaldo Argenio', '2023-06-01', '12:30:00', 10, 'https://libero.it'),
        ('https://libero.it/nuova-supercar-tesla', 'Nuova Supercar Tesla', 'È in arrivo la nuova supercar elettrica di Tesla, quella tanto annunciata dalla Casa di Elon Musk. E da oggi anche gli acquirenti italiani interessati possono finalmente prenotarla: basterà versare una caparra, il cui importo però supera la somma che l''italiano medio è disposto a spendere per comprare interamente un''auto.', 'Laura Raso', '2023-06-02', '15:45:00', 8, 'https://libero.it'),
        ('https://libero.it/progetti-einstein-telescope-meloni-italia', 'Einstein Telescope in Italia', 'L''Einstein telescope è una grande infrastruttura sotterranea per la lettura delle onde gravitazionali, tecnicamente. Ma è soprattutto un enorme balzo in avanti nella nostra capacità di comprendere il cosmo. Questo è, per la scienza. Dopodiché, politicamente, è un modo per far tornare la ricerca italiana ed europea maggiormente centrale di quanto non sia stato in passato, con un''infrastruttura che ci consente di andare di pari passo con gli altri grandi attori mondiali e, da un punto di vista economico, è una grande opportunità di indotto straordinario per l''Italia e per una regione come la Sardegna.', 'Giorgio Pirani', '2023-06-03', '10:15:00', 12, 'https://libero.it'),

        -- Sky TG 24
        ('https://tg24.sky.it/angelina-jolie-atelier-moda', 'Angelina Jolie, il suo Atelier di moda sostenibile', 'La diva di Hollywood è la musa ispiratrice di una capsule collection stilisticamente orientata ai pezzi chiave del suo guardaroba personale. L''attrice premio Oscar ha scelto Gabriela Hearst, designer con cui c''è una grande comunione di intenti, per muovere i primi veri passi nel mondo della moda.', 'Vittoria Romagnuolo', '2023-04-25', '12:30:00', 5, 'https://tg24.sky.it'),
        ('https://tg24.sky.it/harry-potter-sicilia-ai', 'L''AI immagina Harry Potter in Sicilia', 'La colonna sonora in stile Ennio Morricone e le ambientazioni in Paesi assolati che non sarebbe inusuale ritrovare ne Il Padrino sostituiscono i castelli e le brughiere di Harry Potter. Con l''aiuto dell''intelligenza artificiale l''utente DemonFlyingFox ha creato una versione siciliana delle avventure del maghetto ideato dalla scrittrice J.K. Rowling, che inizia con una rivelazione pronunciata dal guardiacaccia Hagrid in perfetto italiano: “Sei un mafioso, Harry”.', 'Mario Rossi', '2022-11-25', '15:45:00', 4, 'https://tg24.sky.it'),
        ('https://tg24.sky.it/russia-ucraina-guerra-ultime-notizie', 'Guerra Ucraina Russia, diga distrutta', 'Il presidente ucraino ha detto che la Russia ha deliberatamente fatto saltare la diga di Nova Kakhovka e che una chiazza di petrolio si dirige verso il Mar Nero. Mosca nega e ribalta l''accusa: Atto terroristico di Kiev per fermare le nostre truppe. Evacuazione delle persone dall''area allagata in corso. Zelensky accusa i russi di non aiutare la gente colpita dall''inondazione nella zona occupata da Mosca. La Cina preoccupata per i danni alla diga.', 'Max Payne', '2023-01-31', '10:15:00', 7, 'https://tg24.sky.it'),

        -- Gazzetta
        ('https://www.gazzetta.it/emily-ratajkowski-fisico-top-a-32-anni', 'Emily Ratajkowski e i suoi 32 anni', 'La top model e attrice Emily Ratajkowski spegne oggi 32 candeline. Dopo la gravidanza è tornata subito in forma, scopriamo come tra dieta e sport Alta, gambe chilometriche, bellissima. Emily Ratajkowski è una di quelle bellezze che mette d''accordo tutti. Subito dopo il parto, due anni fa, ha mostrato sul suo Instagram, dove è seguitissima con 30 milioni di follower, degli scatti che la ritraevano con un fisico super asciutto e identico alla pre-gravidanza.', 'Mario Negri', '2023-02-12', '15:45:00', 6, 'https://www.gazzetta.it'),
        ('https://www.gazzetta.it/juventus-patteggiamento', 'Juve: come si svolgerà il patteggiamento', 'L''ultima parola spetta infatti al Tribunale, ma in un caso così lungo, difficile e pieno di colpi di scena è davvero molto difficile che possa non arrivare la fumata bianca. Ed è più che possibile che possa arrivare presto. In questo caso infatti l''accordo tra le parti non ha bisogno del lasciapassare politico previsto quando il patteggiamento arriva prima del deferimento: in quel caso occorre l''ok del presidente federale che a sua volta deve interessare il Consiglio per poi acquisire il sì della Procura generale dello Sport.', 'Alice Gamba', '2023-04-28', '10:15:00', 21, 'https://www.gazzetta.it'),
        ('https://www.gazzetta.it/un-laser-per-ridurre-gli-infortuni', 'Un laser per ridurre gli infortuni', 'Il bottoncino sul petto di Nole che ci ha ironizzato sopra è prodotto da una ditta italiana. Serve a a togliere tensione al bacino, favorendo il lavoro simmetrico degli arti inferiori. Lui ci ha scherzato su, “ho sempre sognato di essere Iron Man…” per buttare sul ridere l''ennesimo tentativo di polemica su una nuova “arma segreta”. Ok, ma di cosa si tratta? È un laser che distribuisce fotoni coerenti in tutto il corpo. Una nanotecnologia che arriva dall''Italia.', 'Panna Cotta', '2023-01-07', '09:00:00', 11, 'https://www.gazzetta.it'),

        -- Repubblica
        ('https://www.repubblica.it/alzheimer_test_sangue', 'Alzheimer: test del sangue per capire chi rischia di ammalarsi', 'Su Nature Medicine uno studio che annuncia l''identificazione di un nuovo biomarcatore nel sangue potenzialmente in grado di predire la malattia in una fase preclinica, cioè in assenza di sintomi. Una scoperta utile per la conoscenza della malattia, la ricerca e la messa a punto di futuri nuovi farmaci.', 'Tina Simoniello', '2023-03-15', '18:20:00', 7, 'https://repubblica.it'),
        ('https://www.repubblica.it/volvo_ex30_il_suv_elettrico_piu_piccolo_di_sempre', 'Volvo EX30, il SUV elettrico più piccolo del mondo', 'Il Suv Volvo più piccolo di sempre porta la casa svedese direttamente nel futuro. Con un prezzo che partirà da 36.000 euro posiziona il Suv  premium elettrico di Volvo nella fascia di spesa paragonabile ad un veicolo equivalente ma con motore termico. L''EX30 sarà disponibile anche con il pacchetto di abbonamento Care by Volvo, con tariffe fisse e un processo d''ordine trasparente e semplice.', 'Checco Quaglio', '2022-07-20', '12:30:00', 10, 'https://repubblica.it'),
        ('https://www.repubblica.it/elisir_di_lunga_vita_nei_pipistrelli', 'Elisir di lunga vita nei pipistrelli?', 'I ricercatori stanno studiando il sistema immunitario degli unici mammiferi volanti per scoprire il segreto che li rende longevi, resistenti al cancro e invulnerabili a molte infezioni.', 'Marco Posti', '2023-06-02', '15:45:00', 8, 'https://repubblica.it'),

        -- Corriere del Vino
        ('https://corrieredelvino.it/giapponesi-nel-prosecco', 'Giapponesi nel prosecco', 'Sono in arrivo i primi 100 turisti provenienti dal Giappone per visitare i luoghi di produzione del Prosecco DOC. Arriveranno a Treviso suddivisi in gruppi di 20 persone, e raggiungeranno le vigne di Prosecco DOC tra giugno e luglio. Dopo una irrinunciabile tappa a Venezia, visiteranno alcune cantine di Prosecco DOC e non mancheranno di esplorare la città di Treviso e assaggiare alcune delle eccellenze che caratterizzano la ricca offerta enogastronomica della Marca Trevigiana. Non sono turisti che arrivano per caso, ma come risultato della collaborazione stretta da tempo tra Consorzio di Tutela della DOC Prosecco e Hankyu Travel International, una delle più importanti agenzie di viaggio del Giappone, fondata nella regione di Osaka nel 1948.', 'Alessia Rossi', '2023-06-06', '10:15:00', 0, 'https://corrieredelvino.it'),
        ('https://corrieredelvino.it/investire-nel-vino', 'Investire nel vino', 'Investire nel vino significa, innanzitutto, diventare un collezionista di bottiglie di pregio. Non tutte le etichette, però, hanno le caratteristiche per essere considerate da investimento e solo circa l''1% della produzione vinicola globale supera l''accurata selezione, che viene fatta ogni anno da critici internazionali. Esperti sommelier degustano i vini non appena questi vengono rilasciati sul mercato e, in alcuni casi, l''assaggio viene fatto ancora prima che il vino sia imbottigliato e commercializzato. Questo è il caso della famosa campagna En Primeur di Bordeaux, dove i critici vengono invitati a valutare le nuove annate, quando ancora si trovano nelle botti di maturazione.', 'Fabrizio Mori', '2023-06-05', '09:00:00', 5, 'https://corrieredelvino.it'),
        ('https://corrieredelvino.it/weingut-plonerhof-un-paradiso-del-vino', 'Weingut Plonerhof: un Paradiso del vino', 'Immersa nei frutteti e nei vigneti dei dintorni di Merano sorge la località di Marlengo. Il paese è situato ad un''altitudine di 363 m sul livello del mare, in una zona collinosa ai piedi del Monte San Vigilio. Il centro abitato è circondato da piantagioni di mele e uva. Tutto questo durante la ricerca di notizie su questa azienda familiare dopo aver assaggiato i suoi vini durante la presentazione del Catalogo della distribuzione Partesa avvenuta recentemente a Firenze.', 'Urano Cupisti', '2023-05-06', '18:20:00', 7, 'https://corrieredelvino.it');

-- Popolamento Tag

 INSERT INTO "Tag" ("Keywords")
    VALUES
        ('guerra'),
        ('SUV'),
        ('morta'),
        ('Harry Potter'),
        ('Juve'),
        ('laser'),
        ('Ratajkowski'),
        ('malattia'),
        ('Volvo'),
        ('Prosecco'),
        ('sommelier'),
        ('vini'),
        ('Kiev'),
        ('Zelensky'),
        ('Hollywood'),
        ('Elon Musk'),
        ('Cina'),
        ('scienza'),
        ('Russia'),
        ('Instagram');

-- Popolamento Indice

INSERT INTO "Indice" ("Link Articolo", "Titolo Articolo", "Tag") 
    VALUES
        ('https://tg24.sky.it/russia-ucraina-guerra-ultime-notizie', 'Guerra Ucraina Russia, diga distrutta', 'Kiev'),
		('https://tg24.sky.it/russia-ucraina-guerra-ultime-notizie', 'Guerra Ucraina Russia, diga distrutta', 'Zelensky'),
		('https://tg24.sky.it/russia-ucraina-guerra-ultime-notizie', 'Guerra Ucraina Russia, diga distrutta', 'Russia'),
        ('https://www.gazzetta.it/juventus-patteggiamento', 'Juve: come si svolgerà il patteggiamento', 'Juve'),
        ('https://corrieredelvino.it/investire-nel-vino', 'Investire nel vino', 'sommelier'),
		('https://corrieredelvino.it/investire-nel-vino', 'Investire nel vino', 'vini'),
        ('https://corrieredelvino.it/giapponesi-nel-prosecco', 'Giapponesi nel prosecco', 'vini'),
        ('https://libero.it/bimba-di-un-anno-trovata-morta', 'Bimba di un anno trovata morta', 'morta'),
        ('https://www.repubblica.it/alzheimer_test_sangue', 'Alzheimer: test del sangue per capire chi rischia di ammalarsi', 'malattia'),
        ('https://www.repubblica.it/volvo_ex30_il_suv_elettrico_piu_piccolo_di_sempre', 'Volvo EX30, il SUV elettrico più piccolo del mondo', 'Volvo'),
		('https://www.repubblica.it/volvo_ex30_il_suv_elettrico_piu_piccolo_di_sempre', 'Volvo EX30, il SUV elettrico più piccolo del mondo', 'SUV'),
        ('https://tg24.sky.it/harry-potter-sicilia-ai', 'L''AI immagina Harry Potter in Sicilia', 'Harry Potter'),
        ('https://libero.it/nuova-supercar-tesla', 'Nuova Supercar Tesla', 'Elon Musk');

-- Popolamento Cookie Persistenti

INSERT INTO "Cookie Persistenti" ("ID", "Nome Cookie", "Descrizione", "Geolocalizzazione", "Tema", "Data Creazione", "Data Scadenza")
    VALUES
        ('0612105243', 'GYGIA', 'Tecnico usato per autenticazione utente', 'Roma', 'profilazione', '2023-06-08', '2024-06-08'),
        ('0612104321', 'Audience Studio', 'consente di raccogliere e utilizzare i dati degli utenti delle properties di GEDI Digital, per la creazione di cluster di utenti profilati in base al loro comportamento di navigazione', 'Roma', 'Profilazione', '2023-06-08', '2024-06-08'),
        ('0612142632', 'Cools Widget', 'Raccolta di dati personali al fine di fornire agli utenti una piattaforma integrata di shopping.', 'Roma', 'Profilazione', '2023-06-08', '2024-03-08'),
        ('0612237482', 'GYGIA', 'Tecnico usato per autenticazione utente', 'Milano', 'profilazione', '2023-01-08', '2024-01-08'),
        ('0612234729', 'Audience Studio', 'consente di raccogliere e utilizzare i dati degli utenti delle properties di GEDI Digital, per la creazione di cluster di utenti profilati in base al loro comportamento di navigazione', 'Milano', 'Profilazione', '2023-01-08', '2024-01-08'),
        ('0612234610', 'Apple Sign In', 'SDK utilizzato per autenticazione utente.', 'Milano', 'Tecnico', '2023-06-08', '2024-06-08'),  
        ('0612320193', 'GYGIA', 'Tecnico usato per autenticazione utente', 'Kentucky', 'profilazione', '2023-03-08', '2024-03-08'),
        ('0612303948', 'Audience Studio', 'consente di raccogliere e utilizzare i dati degli utenti delle properties di GEDI Digital, per la creazione di cluster di utenti profilati in base al loro comportamento di navigazione', 'Kentucky', 'Profilazione', '2023-03-08', '2024-03-08'),
        ('0612346281', 'Apple Sign In', 'SDK utilizzato per autenticazione utente.', 'Kentucky', 'Tecnico', '2023-03-08', '2024-03-08'),
        ('0612426105', 'GYGIA', 'Tecnico usato per autenticazione utente', 'Parigi', 'profilazione', '2023-05-08', '2024-05-08'),
        ('0612424592', 'Audience Studio', 'consente di raccogliere e utilizzare i dati degli utenti delle properties di GEDI Digital, per la creazione di cluster di utenti profilati in base al loro comportamento di navigazione', 'Parigi', 'Profilazione', '2023-05-08', '2024-05-08'),
        ('0612414048', 'Google Analytics', 'SDK che permette a GEDI Digital di fruire di un servizio di misurazione ', 'Parigi', 'Analitico ', '2023-05-08', '2024-05-08'),
        ('0612504508', 'GYGIA', 'Tecnico usato per autenticazione utente', 'Caserta', 'profilazione', '2023-02-24', '2024-02-24'),
        ('0612500734', 'Audience Studio', 'consente di raccogliere e utilizzare i dati degli utenti delle properties di GEDI Digital, per la creazione di cluster di utenti profilati in base al loro comportamento di navigazione', 'Caserta', 'Profilazione', '2023-02-24', '2024-03-24'),
        ('0612557347', 'Parse', 'SDK utilizzato per l''erogazione di notifiche push aventi finalità editoriali.', 'Caserta', 'Analitico ', '2023-02-24', '2024-02-24'),
        ('0612675834', 'GYGIA', 'Tecnico usato per autenticazione utente', 'Avellino', 'profilazione', '2023-05-05', '2024-05-05'),
        ('0612649475', 'Audience Studio', 'consente di raccogliere e utilizzare i dati degli utenti delle properties di GEDI Digital, per la creazione di cluster di utenti profilati in base al loro comportamento di navigazione', 'Avellino', 'Profilazione', '2023-05-05', '2024-05-05'),
        ('0612609574', 'Twipe', 'Raccolta di dati relativi agli utenti al fine di elaborare statistiche relative ai contenuti fruiti dagli utenti e compiere le relative analisi per il miglioramento dei servizi offerti.', 'Avellino', 'profilazione', '2023-05-05', '2024-03-08'),
        ('0612793472', 'GYGIA', 'Tecnico usato per autenticazione utente', 'Torino', 'profilazione', '2023-02-01', '2024-02-01'),
        ('0612720348', 'Audience Studio', 'consente di raccogliere e utilizzare i dati degli utenti delle properties di GEDI Digital, per la creazione di cluster di utenti profilati in base al loro comportamento di navigazione', 'Torino', 'Profilazione', '2023-02-01', '2024-02-01'),
        ('0612750437', 'Neodata', 'consente di raccogliere e utilizzare i dati degli utenti delle properties del Gruppo GEDI per la creazione di cluster di utenti profilati in base al loro comportamento di navigazionee', 'Torino', 'profilazione', '2023-02-01', '2024-02-01'),
        ('0612845362', 'GYGIA', 'Tecnico usato per autenticazione utente', 'Aosta', 'profilazione', '2023-03-22', '2024-04-22'),
        ('0612820548', 'Audience Studio', 'consente di raccogliere e utilizzare i dati degli utenti delle properties di GEDI Digital, per la creazione di cluster di utenti profilati in base al loro comportamento di navigazione', 'Aosta', 'Profilazione', '2023-03-08', '2024-03-08'),
        ('0612834633', 'Outbrain', 'Erogazione all''utente di una interfaccia grafica, sviluppata e controllata da Outbrain UK Limited, tramite la quale è possibile accedere a contenuti raccomandati', 'Aosta', 'profilazione', '2023-04-22', '2024-04-22'),
        ('0612945632', 'GYGIA', 'Tecnico usato per autenticazione utente', 'Taranto', 'profilazione', '2023-01-03', '2024-01-03'),
        ('0612923490', 'Audience Studio', 'consente di raccogliere e utilizzare i dati degli utenti delle properties di GEDI Digital, per la creazione di cluster di utenti profilati in base al loro comportamento di navigazione', 'Taranto', 'Profilazione', '2023-01-31', '2024-01-31'),
        ('0612945748', 'TWIPE', 'Raccolta di dati relativi agli utenti al fine di elaborare statistiche relative ai contenuti fruiti dagli utenti e compiere le relative analisi per il miglioramento dei servizi offerti.', 'Taranto', 'profilazione', '2023-01-31', '2024-01-31'),  
        ('0613045628', 'GYGIA', 'Tecnico usato per autenticazione utente', 'Granarolo', 'profilazione', '2023-03-18', '2024-03-18'),
        ('0613021534', 'Audience Studio', 'consente di raccogliere e utilizzare i dati degli utenti delle properties di GEDI Digital, per la creazione di cluster di utenti profilati in base al loro comportamento di navigazione', 'Granarolo', 'Profilazione', '2023-03-18', '2024-03-18'),
        ('0613015483', 'Vivocha', 'Creazione di un identificatore univoco della visita dell''utente, che serve per la segnalazione e la creazione di un contatto nel contesto del servizio di interazione con la piattaforma di live chat Vivocha.', 'Granarolo', 'profilazione', '2023-03-18', '2024-03-18');

-- Popolamento Cookie Sessione

INSERT INTO "Cookie Sessione" ("ID", "Nome Cookie", "Descrizione", "Sistema Operativo", "Lingua", "Schermo", "Browser", "Data Creazione")
    VALUES
        ('168615442', 'session_id', 'Identificatore univoco assegnato alla sessione dell''utente', 'Windows-10Home', 'Italiano','1280x800','Mozilla-Firefox', '2019-03-27'),
        ('684685135', 'session_token', 'Questo cookie di sessione contiene un token di autenticazione generato per la sessione dell''utente', 'Kali-Linux', 'Inglese','1920x1080','Chrome', '2020-09-14'),
        ('134567898', 'session_cookie', ' Questo cookie di sessione è un identificatore che viene utilizzato per memorizzare le informazioni di sessione dell''utente', 'Windows-7', 'Tedesco','1366x768','Brave', '2018-07-03'),
        ('951478263', 'user_session', 'Questo cookie di sessione è specifico per l''utente e viene utilizzato per mantenere e gestire la sua sessione durante l''interazione con il sito o l''applicazione', 'Windows-10Pro', 'Francese', '1680x1050', 'Microsoft-Edge', '2022-11-19'),
        ('753648912', 'session_key', 'Questo cookie di sessione contiene una chiave univoca generata per la sessione dell''utente', 'Fedora-37', 'Giapponese', '1440x900', 'Opera', '2017-05-08'),
        ('789634152', 'session_code', ' Questo cookie di sessione contiene un codice o un numero di identificazione associato alla sessione dell''utente', 'Windows-11Home', 'Cinese','2560x1440','Chrome', '2021-10-22'),
        ('197306482', 'session_identifier', 'Questo cookie di sessione contiene un identificatore univoco associato alla sessione dell''utente', 'Windows-11Pro', 'Coreano','1600x900','Microsoft-Edge', '2019-12-06'),
        ('123798604', 'session_auth', 'Questo cookie di sessione viene utilizzato per autenticare l''utente durante la sessione.', 'Ubuntu', 'Tedesco','1280x1024','Mozilla Firefox','2016-08-30'),
        ('056013876', 'session_control', 'Questo cookie di sessione è utilizzato per il controllo e la gestione della sessione dell''utente', 'Windows-10Home', 'Italiano','1920x1200','Brave', '2023-02-11'),
        ('456763478', 'session_manager', 'Questo cookie di sessione contiene informazioni sul gestore della sessione utilizzato per gestire la sessione dell''utente', 'ArchLinux', 'Francese','1024x768','Chrome', '2015-06-18');

-- Popolamento Utente Registrato

INSERT INTO "Utente Registrato" ("Username", "Nome", "Cognome", "Età", "Sesso", "Email", "IP", "Numero Commenti")
    VALUES
        ('john_doe', 'John', 'Doe', 28, 'M', 'john.doe@example.com', '192.168.0.1', 15),
        ('sarah_smith', 'Sarah', 'Smith', 32, 'F', 'sarah.smith@example.com', '192.168.0.2',8),
        ('mike_jones', 'Mike', 'Jones', 35, 'M', 'mike.jones@example.com', '192.168.0.3', 20),
        ('lisa_brown', 'Lisa', 'Brown', 24, 'F', 'lisa.brown@example.com', '192.168.0.4', 5),
        ('david_clark', 'David', 'Clark', 29, 'M', 'david.clark@example.com', '192.168.0.5',12),
        ('emma_wilson', 'Emma', 'Wilson', 27, 'F', 'emma.wilson@example.com', '192.168.0.6', 3),
        ('brian_taylor', 'Brian', 'Taylor', 31, 'M', 'brian.taylor@example.com', '192.168.0.7', 18),
        ('jessica_adams', 'Jessica', 'Adams', 26, 'F', 'jessica.adams@example.com', '192.168.0.8', 7),
        ('alexander_hill', 'Alexander', 'Hill', 30, 'M', 'alexander.hill@example.com', '192.168.0.9', 14),
        ('olivia_turner', 'Olivia', 'Turner', 25, 'F', 'olivia.turner@example.com', '192.168.0.10', 9),
        ('fabiana_raffone', 'Fabiana', 'Raffone', 24, 'F', 'fabiana.raffone@example.com', '192.168.0.11', 35),
        ('marco_postiglione', 'Marco', 'Postiglione', 18, 'M', 'marco.postiglione@example.com', '192.168.0.12', 6),
        ('giorgi_q', 'Giorgia', 'Quagliuolo', 17, 'F', 'giorgi.q@example.com', '192.168.0.13', 22),
        ('anna_mena', 'Anna', 'Raffone', 55, 'F', 'anna_mena@example.com', '192.168.0.14', 2),
        ('mary_rosy', 'Mary', 'Cozzola', 60, 'F', 'mary.rosy@example.com', '192.168.0.15', 10),
        ('ilary_renz', 'Ilaria', 'Renzullo', 18, 'F', 'ilary_renz@example.com', '192.168.0.16', 37),
        ('teo_posti', 'Teo', 'Postiglione', 21, 'M', 'm.postiglione10@studenti.unisa.it', '192.168.0.17', 4),
        ('ricky_raffons', 'Ricky', 'Raffone', 22, 'M', 'ricky.raffons@example.com', '192.168.0.18', 1),
        ('ele_kaneki', 'Emanuele', 'Relmi', 21, 'M', 'ele.kaneki@example.com', '192.168.0.19', 0),
        ('not_quaily', 'Francesco', 'Quagliuolo', 22, 'M', 'dottor.quagliaruolo@example.com', '192.168.0.20', 3);

-- Popolamento Utente Cookieless

INSERT INTO "Utente Cookieless" ("IP", "ID Cookie")
    VALUES
        ('192.168.0.1',  '168615442'),
        ('192.168.0.2',  '684685135'),
        ('192.168.0.3',  '134567898'),
        ('192.168.0.4',  '951478263'),
        ('192.168.0.5',  '753648912'),
        ('192.168.0.6',  '789634152'),
        ('192.168.0.7',  '197306482'),
        ('192.168.0.8',  '123798604'),
        ('192.168.0.9',  '056013876'),
        ('192.168.0.10', '456763478');

-- Popolamento Commento

INSERT INTO "Commento" ("Data Scrittura", "Username Utente", "Ranking", "Testo", "Link Articolo", "Titolo Articolo")
    VALUES
        ('2023-10-08', 'ricky_raffons', 5, 'Questo articolo è davvero molto interessante', 'https://libero.it/nuova-supercar-tesla', 'Nuova Supercar Tesla'),
        ('2023-05-07', 'ilary_renz', 2, 'Grazie per la condivisione!', 'https://www.gazzetta.it/emily-ratajkowski-fisico-top-a-32-anni','Emily Ratajkowski e i suoi 32 anni' ),
        ('2022-06-06', 'olivia_turner', 1, 'Ho qualche riserva su questo argomento.', 'https://www.repubblica.it/elisir_di_lunga_vita_nei_pipistrelli', 'Elisir di lunga vita nei pipistrelli?'),
        ('2021-06-05', 'teo_posti', 2, 'Non mi ritrovo con quanto scritto.', 'https://corrieredelvino.it/weingut-plonerhof-un-paradiso-del-vino','Weingut Plonerhof: un Paradiso del vino'),
        ('2023-07-04', 'teo_posti', 3, 'Mi piacerebbe leggere più approfondimenti su questo tema.','https://tg24.sky.it/russia-ucraina-guerra-ultime-notizie', 'Guerra Ucraina Russia, diga distrutta'),
        ('2023-06-03', 'anna_mena', 5, 'Fantastico articolo, grazie!', 'https://libero.it/progetti-einstein-telescope-meloni-italia', 'Einstein Telescope in Italia'),
        ('2023-06-02', 'not_quaily', 5, 'Mi ha aperto gli occhi su nuovi punti di vista.', 'https://www.gazzetta.it/juventus-patteggiamento', 'Juve: come si svolgerà il patteggiamento'),
        ('2023-06-01', 'not_quaily', 4, 'Interessante ma avrei preferito più dati di supporto.', 'https://www.gazzetta.it/un-laser-per-ridurre-gli-infortuni', 'Un laser per ridurre gli infortuni'),
        ('2023-05-31', 'not_quaily', 3, 'Non mi ha convinto del tutto.', 'https://www.repubblica.it/alzheimer_test_sangue', 'Alzheimer: test del sangue per capire chi rischia di ammalarsi'),
        ('2023-05-30', 'alexander_hill', 1, 'Mi aspettavo qualcosa di diverso.','https://www.gazzetta.it/juventus-patteggiamento', 'Juve: come si svolgerà il patteggiamento'),
        ('2023-10-09', 'alexander_hill', 1, 'Mi aspettavo qualcosa di diverso.', 'https://libero.it/nuova-supercar-tesla', 'Nuova Supercar Tesla'),
        ('2023-05-10', 'not_quaily', 3, 'Non mi ha convinto del tutto.', 'https://www.gazzetta.it/emily-ratajkowski-fisico-top-a-32-anni','Emily Ratajkowski e i suoi 32 anni' ),
        ('2022-06-11', 'not_quaily', 4, 'Interessante ma avrei preferito più dati di supporto.', 'https://www.repubblica.it/elisir_di_lunga_vita_nei_pipistrelli', 'Elisir di lunga vita nei pipistrelli?'),
        ('2021-06-12', 'not_quaily', 5, 'Mi ha aperto gli occhi su nuovi punti di vista.', 'https://corrieredelvino.it/weingut-plonerhof-un-paradiso-del-vino','Weingut Plonerhof: un Paradiso del vino'),
        ('2023-07-13', 'anna_mena', 3, 'Mi piacerebbe leggere più approfondimenti su questo tema.','https://tg24.sky.it/russia-ucraina-guerra-ultime-notizie', 'Guerra Ucraina Russia, diga distrutta'),
        ('2023-06-14', 'teo_posti', 5, 'Fantastico articolo, grazie!', 'https://libero.it/progetti-einstein-telescope-meloni-italia', 'Einstein Telescope in Italia'),
        ('2023-06-15', 'teo_posti', 3, 'Mi piacerebbe leggere più approfondimenti su questo tema.', 'https://www.gazzetta.it/juventus-patteggiamento', 'Juve: come si svolgerà il patteggiamento'),
        ('2023-06-16', 'olivia_turner', 2, 'Non mi ritrovo con quanto scritto.', 'https://www.gazzetta.it/un-laser-per-ridurre-gli-infortuni', 'Un laser per ridurre gli infortuni'),
        ('2023-05-17', 'ilary_renz', 1, 'Ho qualche riserva su questo argomento.', 'https://www.repubblica.it/alzheimer_test_sangue', 'Alzheimer: test del sangue per capire chi rischia di ammalarsi'),
        ('2023-05-18', 'ricky_raffons', 5, 'Questo articolo è davvero molto interessante','https://www.gazzetta.it/juventus-patteggiamento', 'Juve: come si svolgerà il patteggiamento'),
        ('2023-10-19', 'teo_posti', 3, 'Mi piacerebbe leggere più approfondimenti su questo tema.', 'https://libero.it/nuova-supercar-tesla', 'Nuova Supercar Tesla'),
        ('2023-05-20', 'alexander_hill', 1, 'Ho qualche riserva su questo argomento.', 'https://www.gazzetta.it/emily-ratajkowski-fisico-top-a-32-anni','Emily Ratajkowski e i suoi 32 anni' ),
        ('2022-06-21', 'olivia_turner', 2, 'Non mi ritrovo con quanto scritto.', 'https://www.repubblica.it/elisir_di_lunga_vita_nei_pipistrelli', 'Elisir di lunga vita nei pipistrelli?'),
        ('2021-06-22', 'ilary_renz', 4, 'Non mi ritrovo con quanto scritto.', 'https://corrieredelvino.it/weingut-plonerhof-un-paradiso-del-vino','Weingut Plonerhof: un Paradiso del vino'),
        ('2023-07-23', 'ricky_raffons', 5, 'Fantastico articolo, grazie!','https://tg24.sky.it/russia-ucraina-guerra-ultime-notizie', 'Guerra Ucraina Russia, diga distrutta'),
        ('2023-06-24', 'not_quaily', 5, 'Fantastico articolo, grazie!', 'https://libero.it/progetti-einstein-telescope-meloni-italia', 'Einstein Telescope in Italia'),
        ('2023-06-25', 'anna_mena', 1, 'Mi aspettavo qualcosa di diverso.', 'https://www.gazzetta.it/juventus-patteggiamento', 'Juve: come si svolgerà il patteggiamento'),
        ('2023-06-26', 'not_quaily', 2, 'Non mi ritrovo con quanto scritto.', 'https://www.gazzetta.it/un-laser-per-ridurre-gli-infortuni', 'Un laser per ridurre gli infortuni'),
        ('2023-05-27', 'not_quaily', 5, 'Non mi ha convinto del tutto.', 'https://www.repubblica.it/alzheimer_test_sangue', 'Alzheimer: test del sangue per capire chi rischia di ammalarsi'),
        ('2023-05-28', 'teo_posti', 3, 'Mi piacerebbe leggere più approfondimenti su questo tema.','https://www.gazzetta.it/juventus-patteggiamento', 'Juve: come si svolgerà il patteggiamento');

-- Popolamento Accesso Registrato

INSERT INTO "Accesso Registrato" ("Sito", "Utente Registrato")
  VALUES
    ('https://repubblica.it', 'not_quaily'),
    ('https://tg24.sky.it', 'ricky_raffons'),
    ('https://www.gazzetta.it', 'ilary_renz'),
    ('https://www.gazzetta.it', 'teo_posti'),
    ('https://libero.it', 'mary_rosy'),
    ('https://tg24.sky.it', 'alexander_hill'),
    ('https://libero.it', 'anna_mena'),
    ('https://repubblica.it', 'fabiana_raffone'),
    ('https://corrieredelvino.it', 'lisa_brown'),
    ('https://www.gazzetta.it', 'ele_kaneki'),
    ('https://www.gazzetta.it', 'olivia_turner');
  
-- Popolamento Lettura Registrata

INSERT INTO "Lettura Registrata" ("Utente Registrato", "Link Articolo", "Titolo Articolo", "Tempo Lettura Effettivo")
  VALUES
        ('john_doe', 'https://tg24.sky.it/russia-ucraina-guerra-ultime-notizie', 'Guerra Ucraina Russia, diga distrutta', '7'),
        ('sarah_smith', 'https://www.gazzetta.it/juventus-patteggiamento', 'Juve: come si svolgerà il patteggiamento', '12'),
        ('mike_jones', 'https://tg24.sky.it/russia-ucraina-guerra-ultime-notizie', 'Guerra Ucraina Russia, diga distrutta', '5'),
        ('lisa_brown', 'https://corrieredelvino.it/giapponesi-nel-prosecco', 'Giapponesi nel prosecco', '9'),
        ('david_clark', 'https://www.gazzetta.it/juventus-patteggiamento', 'Juve: come si svolgerà il patteggiamento', '15'),
        ('emma_wilson', 'https://tg24.sky.it/russia-ucraina-guerra-ultime-notizie', 'Guerra Ucraina Russia, diga distrutta', '3'),
        ('brian_taylor', 'https://corrieredelvino.it/giapponesi-nel-prosecco', 'Giapponesi nel prosecco', '10'),
        ('jessica_adams', 'https://www.repubblica.it/alzheimer_test_sangue', 'Alzheimer: test del sangue per capire chi rischia di ammalarsi', '6'),
        ('alexander_hill', 'https://libero.it/nuova-supercar-tesla', 'Nuova Supercar Tesla', '8'),
        ('olivia_turner', 'https://www.gazzetta.it/juventus-patteggiamento', 'Juve: come si svolgerà il patteggiamento', '4'),
        ('fabiana_raffone', 'https://tg24.sky.it/russia-ucraina-guerra-ultime-notizie', 'Guerra Ucraina Russia, diga distrutta', '15'),
        ('marco_postiglione', 'https://www.repubblica.it/alzheimer_test_sangue', 'Alzheimer: test del sangue per capire chi rischia di ammalarsi', '2'),
        ('giorgi_q', 'https://tg24.sky.it/russia-ucraina-guerra-ultime-notizie', 'Guerra Ucraina Russia, diga distrutta', '5'),
        ('anna_mena', 'https://www.repubblica.it/alzheimer_test_sangue', 'Alzheimer: test del sangue per capire chi rischia di ammalarsi', '4'),
        ('mary_rosy', 'https://www.repubblica.it/alzheimer_test_sangue', 'Alzheimer: test del sangue per capire chi rischia di ammalarsi', '14'),
        ('ilary_renz', 'https://libero.it/bimba-di-un-anno-trovata-morta', 'Bimba di un anno trovata morta', '9'),
        ('teo_posti', 'https://corrieredelvino.it/investire-nel-vino','Investire nel vino', '8'),
        ('ricky_raffons', 'https://corrieredelvino.it/giapponesi-nel-prosecco', 'Giapponesi nel prosecco', '15'),
        ('ele_kaneki', 'https://tg24.sky.it/russia-ucraina-guerra-ultime-notizie', 'Guerra Ucraina Russia, diga distrutta', '7'),
        ('not_quaily', 'https://www.gazzetta.it/juventus-patteggiamento', 'Juve: come si svolgerà il patteggiamento', '12');
  
-- Popolamento Lettura Anonima

INSERT INTO "Lettura Anonima" ("Utente Cookieless", "Link Articolo", "Titolo Articolo", "Tempo Lettura Effettivo")
    VALUES 
        ('192.168.0.1', 'https://tg24.sky.it/russia-ucraina-guerra-ultime-notizie', 'Guerra Ucraina Russia, diga distrutta', '5'),
        ('192.168.0.2', 'https://www.gazzetta.it/juventus-patteggiamento', 'Juve: come si svolgerà il patteggiamento', '8'),
        ('192.168.0.3', 'https://corrieredelvino.it/investire-nel-vino', 'Investire nel vino', '12'),
        ('192.168.0.4', 'https://corrieredelvino.it/giapponesi-nel-prosecco', 'Giapponesi nel prosecco', '3'),
        ('192.168.0.5', 'https://libero.it/bimba-di-un-anno-trovata-morta', 'Bimba di un anno trovata morta', '10'),
        ('192.168.0.6', 'https://www.repubblica.it/alzheimer_test_sangue', 'Alzheimer: test del sangue per capire chi rischia di ammalarsi', '6'),
        ('192.168.0.7', 'https://www.repubblica.it/volvo_ex30_il_suv_elettrico_piu_piccolo_di_sempre', 'Volvo EX30, il SUV elettrico più piccolo del mondo', '15'),
        ('192.168.0.8', 'https://tg24.sky.it/harry-potter-sicilia-ai', 'L''AI immagina Harry Potter in Sicilia', '4'),
        ('192.168.0.9', 'https://libero.it/nuova-supercar-tesla', 'Nuova Supercar Tesla', '7'),
        ('192.168.0.10', 'https://www.repubblica.it/alzheimer_test_sangue', 'Alzheimer: test del sangue per capire chi rischia di ammalarsi', '9');

-- Popolamento Accesso Anonimo

INSERT INTO "Accesso Anonimo" ("Utente Cookieless", "Sito")
    VALUES
        ('192.168.0.1', 'https://repubblica.it'),
        ('192.168.0.2', 'https://www.gazzetta.it'),
        ('192.168.0.3', 'https://libero.it'),
        ('192.168.0.4', 'https://corrieredelvino.it'),
        ('192.168.0.5', 'https://tg24.sky.it'),
        ('192.168.0.6', 'https://tg24.sky.it'),
        ('192.168.0.7', 'https://www.gazzetta.it'),
        ('192.168.0.8', 'https://repubblica.it'),
        ('192.168.0.9', 'https://www.gazzetta.it'),
        ('192.168.0.10', 'https://corrieredelvino.it');

-- Popolamento Possiede Registrato

INSERT INTO "Possiede Registrato" ("Cookie Persistenti", "Sito")
    VALUES 
        ('0612105243', 'https://repubblica.it'),
        ('0612104321', 'https://repubblica.it'),
        ('0612142632', 'https://repubblica.it'),
        ('0612237482', 'https://tg24.sky.it'),
        ('0612234729', 'https://tg24.sky.it'),
        ('0612234610', 'https://tg24.sky.it'),
        ('0612320193', 'https://corrieredelvino.it'),
        ('0612303948', 'https://corrieredelvino.it'),
        ('0612346281', 'https://corrieredelvino.it'),
        ('0612426105', 'https://www.gazzetta.it'),
        ('0612424592', 'https://www.gazzetta.it'),
        ('0612414048', 'https://www.gazzetta.it'),
        ('0612504508', 'https://libero.it'),
        ('0612500734', 'https://libero.it'),
        ('0612557347', 'https://libero.it'),
        ('0612675834', 'https://tg24.sky.it'),
        ('0612649475', 'https://tg24.sky.it'),
        ('0612609574', 'https://tg24.sky.it'),
        ('0612793472', 'https://libero.it'),
        ('0612720348', 'https://libero.it'),
        ('0612750437', 'https://libero.it'),
        ('0612845362', 'https://repubblica.it'),
        ('0612820548', 'https://repubblica.it'),
        ('0612834633', 'https://repubblica.it'),
        ('0612945632', 'https://corrieredelvino.it'),
        ('0612923490', 'https://corrieredelvino.it'),
        ('0612945748', 'https://corrieredelvino.it'),
        ('0613045628', 'https://www.gazzetta.it'),
        ('0613021534', 'https://www.gazzetta.it'),
        ('0613015483', 'https://www.gazzetta.it');

-- Popolamento Possiede Anonimo

INSERT INTO "Possiede Anonimo" ("Cookie Sessione", "Sito")
    VALUES 
        ('168615442', 'https://repubblica.it'),
        ('684685135', 'https://www.gazzetta.it'),
        ('134567898', 'https://libero.it'),
        ('951478263', 'https://corrieredelvino.it'),
        ('753648912', 'https://tg24.sky.it'),
        ('789634152', 'https://tg24.sky.it'),
        ('197306482', 'https://www.gazzetta.it'),
        ('123798604', 'https://repubblica.it'),
        ('056013876', 'https://www.gazzetta.it'),
        ('456763478', 'https://corrieredelvino.it');

-- Popolamento Profilazione

INSERT INTO "Profilazione" ("Utente Registrato", "Cookie Persistenti")
    VALUES
        ('not_quaily', '0612105243'),
        ('not_quaily', '0612104321'),
        ('not_quaily', '0612142632'),
        ('ricky_raffons', '0612237482'),
        ('ricky_raffons', '0612234729'),
        ('ricky_raffons', '0612234610'),
        ('ilary_renz', '0612320193'),
        ('ilary_renz', '0612234729'),
        ('ilary_renz', '0612346281'),
        ('teo_posti', '0612426105'),
        ('teo_posti', '0612424592'),
        ('teo_posti', '0612414048'),
        ('mary_rosy', '0612504508'),
        ('mary_rosy', '0612500734'),
        ('mary_rosy', '0612557347'),
        ('alexander_hill', '0612675834'),
        ('alexander_hill', '0612649475'),
        ('alexander_hill', '0612609574'),
        ('anna_mena', '0612793472'),
        ('anna_mena', '0612720348'),
        ('anna_mena', '0612750437'),
        ('fabiana_raffone', '0612845362'),
        ('fabiana_raffone', '0612820548'),
        ('fabiana_raffone', '0612834633'),
        ('lisa_brown', '0612945632'),
        ('lisa_brown', '0612923490'),
        ('lisa_brown', '0612945748'),
        ('ele_kaneki', '0613045628'),
        ('ele_kaneki', '0613021534'),
        ('ele_kaneki', '0613015483');