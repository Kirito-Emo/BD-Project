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

INSERT INTO "Articolo" (""Link", "Titolo", "Corpo", "Autore", "Data Creazione", "Ora Creazione", "Tempo Lettura Stimato", "URL Sito")
    VALUES
        -- Libero
        ('https://libero.it/bimba-di-un-anno-trovata-morta', 'Bimba di un anno trovata morta', 'Una bambina di un anno è stata trovata morta in un'auto parcheggiata in via dei Fucilieri, a Roma in zona Cecchignola. Stella, così si chiamava la bimba, è stata lasciata in macchina dal padre, carabiniere in servizio nella struttura dello Stato Maggiore della Difesa che si trova nella zona. Doveva lasciarla all'asilo nido dei figli dei dipendenti. Quando la madre è andata a riprenderla, ha scoperto che la piccola non era mai entrata. Le maestre le hanno detto che non era mai stata portata. È corsa verso la macchina, ha cominciato a urlare. Un passante ha rotto il finestrino per cercare di farla respirare. Il personale del 118, arrivato sul posto, ha cercato di rianimare la bambina ma era troppo tardi.', 'Ubaldo Argenio', '2023-06-01', '12:30:00', 10, 'https://libero.it'),
        ('https://libero.it/nuova-supercar-tesla', 'Nuova Supercar Tesla', 'È in arrivo la nuova supercar elettrica di Tesla, quella tanto annunciata dalla Casa di Elon Musk. E da oggi anche gli acquirenti italiani interessati possono finalmente prenotarla: basterà versare una caparra, il cui importo però supera la somma che l'italiano medio è disposto a spendere per comprare interamente un'auto.', 'Laura Raso', '2023-06-02', '15:45:00', 8, 'https://libero.it'),
        ('https://libero.it/progetti-einstein-telescope-meloni-italia', 'Einstein Telescope in Italia', 'L'Einstein telescope è una grande infrastruttura sotterranea per la lettura delle onde gravitazionali, tecnicamente. Ma è soprattutto un enorme balzo in avanti nella nostra capacità di comprendere il cosmo. Questo è, per la scienza. Dopodiché, politicamente, è un modo per far tornare la ricerca italiana ed europea maggiormente centrale di quanto non sia stato in passato, con un'infrastruttura che ci consente di andare di pari passo con gli altri grandi attori mondiali e, da un punto di vista economico, è una grande opportunità di indotto straordinario per l'Italia e per una regione come la Sardegna.', 'Giorgio Pirani', '2023-06-03', '10:15:00', 12, 'https://libero.it'),

        -- Sky TG 24
        ('https://tg24.sky.it/angelina-jolie-atelier-moda', 'Angelina Jolie, il suo Atelier di moda sostenibile', 'La diva di Hollywood è la musa ispiratrice di una capsule collection stilisticamente orientata ai pezzi chiave del suo guardaroba personale. L'attrice premio Oscar ha scelto Gabriela Hearst, designer con cui c'è una grande comunione di intenti, per muovere i primi veri passi nel mondo della moda.', 'Vittoria Romagnuolo', '2023-04-25', '12:30:00', 5, 'https://tg24.sky.it'),
        ('https://tg24.sky.it/harry-potter-sicilia-ai', 'L'AI immagina Harry Potter in Sicilia', 'La colonna sonora in stile Ennio Morricone e le ambientazioni in Paesi assolati che non sarebbe inusuale ritrovare ne Il Padrino sostituiscono i castelli e le brughiere di Harry Potter. Con l'aiuto dell'intelligenza artificiale l'utente DemonFlyingFox ha creato una versione siciliana delle avventure del maghetto ideato dalla scrittrice J.K. Rowling, che inizia con una rivelazione pronunciata dal guardiacaccia Hagrid in perfetto italiano: “Sei un mafioso, Harry”.', 'Mario Rossi', '2022-11-25', '15:45:00', 4, 'https://tg24.sky.it'),
        ('https://tg24.sky.it/russia-ucraina-guerra-ultime-notizie', 'Guerra Ucraina Russia, diga distrutta', 'Il presidente ucraino ha detto che la Russia ha deliberatamente fatto saltare la diga di Nova Kakhovka e che una chiazza di petrolio si dirige verso il Mar Nero. Mosca nega e ribalta l'accusa: Atto terroristico di Kiev per fermare le nostre truppe. Evacuazione delle persone dall'area allagata in corso. Zelensky accusa i russi di non aiutare la gente colpita dall'inondazione nella zona occupata da Mosca. La Cina preoccupata per i danni alla diga.', 'Max Payne', '2023-01-31', '10:15:00', 7, 'https://tg24.sky.it'),

        -- Gazzetta
        ('https://www.gazzetta.it/emily-ratajkowski-fisico-top-a-32-anni', 'Emily Ratajkowski e i suoi 32 anni', 'La top model e attrice Emily Ratajkowski spegne oggi 32 candeline. Dopo la gravidanza è tornata subito in forma, scopriamo come tra dieta e sport Alta, gambe chilometriche, bellissima. Emily Ratajkowski è una di quelle bellezze che mette d'accordo tutti. Subito dopo il parto, due anni fa, ha mostrato sul suo Instagram, dove è seguitissima con 30 milioni di follower, degli scatti che la ritraevano con un fisico super asciutto e identico alla pre-gravidanza.', 'Mario Negri', '2023-02-12', '15:45:00', 6, 'https://www.gazzetta.it'),
        ('https://www.gazzetta.it/juventus-patteggiamento', 'Juve: come si svolgerà il patteggiamento', 'L'ultima parola spetta infatti al Tribunale, ma in un caso così lungo, difficile e pieno di colpi di scena è davvero molto difficile che possa non arrivare la fumata bianca. Ed è più che possibile che possa arrivare presto. In questo caso infatti l'accordo tra le parti non ha bisogno del lasciapassare politico previsto quando il patteggiamento arriva prima del deferimento: in quel caso occorre l'ok del presidente federale che a sua volta deve interessare il Consiglio per poi acquisire il sì della Procura generale dello Sport.', 'Alice Gamba', '2023-04-28', '10:15:00', 21, 'https://www.gazzetta.it'),
        ('https://www.gazzetta.it/un-laser-per-ridurre-gli-infortuni', 'Un laser per riderre gli infortuni', 'Il bottoncino sul petto di Nole che ci ha ironizzato sopra è prodotto da una ditta italiana. Serve a a togliere tensione al bacino, favorendo il lavoro simmetrico degli arti inferiori. Lui ci ha scherzato su, “ho sempre sognato di essere Iron Man…” per buttare sul ridere l'ennesimo tentativo di polemica su una nuova “arma segreta”. Ok, ma di cosa si tratta? È un laser che distribuisce fotoni coerenti in tutto il corpo. Una nanotecnologia che arriva dall'Italia.', 'Panna Cotta', '2023-01-07', '09:00:00', 11, 'https://www.gazzetta.it'),

        -- Repubblica
        ('https://www.repubblica.it/alzheimer_test_sangue', 'Alzheimer: test del sangue per capire chi rischia di ammalarsi', 'Su Nature Medicine uno studio che annuncia l'identificazione di un nuovo biomarcatore nel sangue potenzialmente in grado di predire la malattia in una fase preclinica, cioè in assenza di sintomi. Una scoperta utile per la conoscenza della malattia, la ricerca e la messa a punto di futuri nuovi farmaci.', 'Tina Simoniello', '2023-03-15', '18:20:00', 7, 'https://repubblica.it'),
        ('https://www.repubblica.it/volvo_ex30_il_suv_elettrico_piu_piccolo_di_sempre', 'Volvo EX30, il SUV elettrico più piccolo del mondo', 'Il Suv Volvo più piccolo di sempre porta la casa svedese direttamente nel futuro. Con un prezzo che partirà da 36.000 euro posiziona il Suv  premium elettrico di Volvo nella fascia di spesa paragonabile ad un veicolo equivalente ma con motore termico. L'EX30 sarà disponibile anche con il pacchetto di abbonamento Care by Volvo, con tariffe fisse e un processo d'ordine trasparente e semplice.', 'Checco Quaglio', '2022-07-20', '12:30:00', 10, 'https://repubblica.it'),
        ('https://www.repubblica.it/elisir_di_lunga_vita_nei_pipistrelli', 'Elisir di lunga vita nei pipistrelli?', 'I ricercatori stanno studiando il sistema immunitario degli unici mammiferi volanti per scoprire il segreto che li rende longevi, resistenti al cancro e invulnerabili a molte infezioni.', 'Marco Posti', '2023-06-02', '15:45:00', 8, 'https://repubblica.it'),

        -- Corriere del Vino
        ('https://corrieredelvino.it/giapponesi-nel-prosecco', 'Giapponesi nel prosecco', 'Sono in arrivo i primi 100 turisti provenienti dal Giappone per visitare i luoghi di produzione del Prosecco DOC. Arriveranno a Treviso suddivisi in gruppi di 20 persone, e raggiungeranno le vigne di Prosecco DOC tra giugno e luglio. Dopo una irrinunciabile tappa a Venezia, visiteranno alcune cantine di Prosecco DOC e non mancheranno di esplorare la città di Treviso e assaggiare alcune delle eccellenze che caratterizzano la ricca offerta enogastronomica della Marca Trevigiana. Non sono turisti che arrivano per caso, ma come risultato della collaborazione stretta da tempo tra Consorzio di Tutela della DOC Prosecco e Hankyu Travel International, una delle più importanti agenzie di viaggio del Giappone, fondata nella regione di Osaka nel 1948.', 'Alessia Rossi', '2023-06-06', '10:15:00', 0, 'https://corrieredelvino.it'),
        ('https://corrieredelvino.it/investire-nel-vino', 'Investire nel vino', 'Investire nel vino significa, innanzitutto, diventare un collezionista di bottiglie di pregio. Non tutte le etichette, però, hanno le caratteristiche per essere considerate da investimento e solo circa l'1% della produzione vinicola globale supera l'accurata selezione, che viene fatta ogni anno da critici internazionali. Esperti sommelier degustano i vini non appena questi vengono rilasciati sul mercato e, in alcuni casi, l'assaggio viene fatto ancora prima che il vino sia imbottigliato e commercializzato. Questo è il caso della famosa campagna En Primeur di Bordeaux, dove i critici vengono invitati a valutare le nuove annate, quando ancora si trovano nelle botti di maturazione.', 'Fabrizio Mori', '2023-06-05', '09:00:00', 5, 'https://corrieredelvino.it'),
        ('https://corrieredelvino.it/weingut-plonerhof-un-paradiso-del-vino', 'Weingut Plonerhof: un Paradiso del vino', 'Immersa nei frutteti e nei vigneti dei dintorni di Merano sorge la località di Marlengo. Il paese è situato ad un'altitudine di 363 m sul livello del mare, in una zona collinosa ai piedi del Monte San Vigilio. Il centro abitato è circondato da piantagioni di mele e uva. Tutto questo durante la ricerca di notizie su questa azienda familiare dopo aver assaggiato i suoi vini durante la presentazione del Catalogo della distribuzione Partesa avvenuta recentemente a Firenze.', 'Urano Cupisti', '2023-05-06', '18:20:00', 7, 'https://corrieredelvino.it'),

-- Tag



-- Popolamento Cookie Persistenti



-- Popolamento Cookie Sessione



-- Popolamento Utente Registrato

INSERT INTO "Utente Registrato" ("Username", "Nome", "Cognome", "Età", "Sesso", "Email", "IP", "Numero Commenti")
    VALUES
        ('john_doe', 'John', 'Doe', 28, 'M', 'john.doe@example.com', '192.168.0.1', 15),
        ('sarah_smith', 'Sarah', 'Smith', 32, 'F', 'sarah.smith@example.com', '192.168.0.2', 8),
        ('mike_jones', 'Mike', 'Jones', 35, 'M', 'mike.jones@example.com', '192.168.0.3', 20),
        ('lisa_brown', 'Lisa', 'Brown', 24, 'F', 'lisa.brown@example.com', '192.168.0.4', 5),
        ('david_clark', 'David', 'Clark', 29, 'M', 'david.clark@example.com', '192.168.0.5', 12),
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
        ('teo_posti', 'Teo', 'Postiglione', 21, 'N', 'm.postiglione10@studenti.unisa.it', '192.168.0.17', 4),
        ('ricky_raffons', 'Ricky', 'Raffone', 22, 'M', 'ricky.raffons@example.com', '192.168.0.18', 1),
        ('ele_kaneki', 'Emanuele', 'Relmi', 21, 'M', 'ele.kaneki@example.com', '192.168.0.19', 0),
        ('not_quaily', 'Francesco', 'Quagliuolo', 22, 'M', 'dottor.quagliaruolo@example.com', '192.168.0.20', 45);

-- Popolamento Utente Cookieless

INSERT INTO "Utente Cookieless" ("IP", "ID Cookie")
    VALUES
        ('192.168.0.1',  168615442034),
        ('192.168.0.2',  684685135667),
        ('192.168.0.3',  134567898522),
        ('192.168.0.4',  951478263593),
        ('192.168.0.5',  753648912055),
        ('192.168.0.6',  789634152018),
        ('192.168.0.7',  197306482571),
        ('192.168.0.8',  123798604754),
        ('192.168.0.9',  056013876598),
        ('192.168.0.10', 456763478501);

-- Commento

