/*
 * Script di popolamento del database
*/

-- Popolamento Sito

INSERT INTO "Sito" ("URL", "Nome Sito")
    VALUES
        ('https://www.ilmattino.it', 'IL Mattino'),
        ('https://www.gazzetta.it', 'La Gazzetta dello Sport'),
        ('https://www.libero.it', 'Libero'),
        ('https://www.corriere.it', 'Corriere della Sera'),
        ('https://corrieredelvino.it', 'Corriere del Vino');

-- Popolamento Articolo

INSERT INTO "Articolo" (""Link", "Titolo", "Corpo", "Autore", "Data Creazione", "Ora Creazione", "Tempo Lettura Stimato", "URL Sito")
    VALUES
        ('https://www.example1.com/articolo1', 'Titolo Articolo 1', 'Corpo dell\'articolo 1', 'Autore 1', '2023-06-01', '12:30:00', 10, 'https://www.example1.com'),
        ('https://www.example2.com/articolo2', 'Titolo Articolo 2', 'Corpo dell\'articolo 2', 'Autore 2', '2023-06-02', '15:45:00', 8, 'https://www.example2.com'),
        ('https://www.example3.com/articolo3', 'Titolo Articolo 3', 'Corpo dell\'articolo 3', 'Autore 3', '2023-06-03', '10:15:00', 12, 'https://www.example3.com'),
        ('https://www.example4.com/articolo4', 'Titolo Articolo 4', 'Corpo dell\'articolo 4', 'Autore 4', '2023-06-04', '09:00:00', 15, 'https://www.example4.com'),
        ('https://www.example5.com/articolo5', 'Titolo Articolo 5', 'Corpo dell\'articolo 5', 'Autore 5', '2023-06-05', '18:20:00', 7, 'https://www.example5.com'),
        ('https://www.example1.com/articolo1', 'Titolo Articolo 1', 'Corpo dell\'articolo 1', 'Autore 1', '2023-06-01', '12:30:00', 10, 'https://www.example1.com'),
        ('https://www.example2.com/articolo2', 'Titolo Articolo 2', 'Corpo dell\'articolo 2', 'Autore 2', '2023-06-02', '15:45:00', 8, 'https://www.example2.com'),
        ('https://www.example3.com/articolo3', 'Titolo Articolo 3', 'Corpo dell\'articolo 3', 'Autore 3', '2023-06-03', '10:15:00', 12, 'https://www.example3.com'),
        ('https://www.example4.com/articolo4', 'Titolo Articolo 4', 'Corpo dell\'articolo 4', 'Autore 4', '2023-06-04', '09:00:00', 15, 'https://www.example4.com'),
        ('https://www.example5.com/articolo5', 'Titolo Articolo 5', 'Corpo dell\'articolo 5', 'Autore 5', '2023-06-05', '18:20:00', 7, 'https://www.example5.com'),
        ('https://www.example1.com/articolo1', 'Titolo Articolo 1', 'Corpo dell\'articolo 1', 'Autore 1', '2023-06-01', '12:30:00', 10, 'https://www.example1.com'),
        ('https://www.example2.com/articolo2', 'Titolo Articolo 2', 'Corpo dell\'articolo 2', 'Autore 2', '2023-06-02', '15:45:00', 8, 'https://www.example2.com'),
        ('https://www.example3.com/articolo3', 'Titolo Articolo 3', 'Corpo dell\'articolo 3', 'Autore 3', '2023-06-03', '10:15:00', 12, 'https://www.example3.com'),
        ('https://www.example4.com/articolo4', 'Titolo Articolo 4', 'Corpo dell\'articolo 4', 'Autore 4', '2023-06-04', '09:00:00', 15, 'https://www.example4.com'),
        ('https://www.example5.com/articolo5', 'Titolo Articolo 5', 'Corpo dell\'articolo 5', 'Autore 5', '2023-06-05', '18:20:00', 7, 'https://www.example5.com'),
        ('https://www.example1.com/articolo1', 'Titolo Articolo 1', 'Corpo dell\'articolo 1', 'Autore 1', '2023-06-01', '12:30:00', 10, 'https://www.example1.com'),
        ('https://www.example2.com/articolo2', 'Titolo Articolo 2', 'Corpo dell\'articolo 2', 'Autore 2', '2023-06-02', '15:45:00', 8, 'https://www.example2.com'),
        ('https://www.example3.com/articolo3', 'Titolo Articolo 3', 'Corpo dell\'articolo 3', 'Autore 3', '2023-06-03', '10:15:00', 12, 'https://www.example3.com'),
        ('https://www.example4.com/articolo4', 'Titolo Articolo 4', 'Corpo dell\'articolo 4', 'Autore 4', '2023-06-04', '09:00:00', 15, 'https://www.example4.com'),
        ('https://www.example5.com/articolo5', 'Titolo Articolo 5', 'Corpo dell\'articolo 5', 'Autore 5', '2023-06-05', '18:20:00', 7, 'https://www.example5.com');
        

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
        ('192.168.0.1', 168615442034),
        ('192.168.0.2', 684685135667),
        ('192.168.0.3', 134567898522),
        ('192.168.0.4', 951478263593),
        ('192.168.0.5', 753648912055);
        ('192.168.0.6', 789634152018),
        ('192.168.0.7', 197306482571),
        ('192.168.0.8', 123798604754),
        ('192.168.0.9', 056013876598),
        ('192.168.0.10', 456763478501);