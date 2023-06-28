CREATE TABLE subscription (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(128) NOT NULL,
    description TEXT NOT NULL,
    phone_number VARCHAR(24) NOT NULL,
    is_active BOOL NOT NULL,
    INDEX name_index (name)
);

INSERT INTO subscription(name, description, phone_number, is_active) VALUES
('Communauté des terres de Camargues - Provence-Alpes-Côtes d''Azur - Nos régions ont du talent', 'L''abonnement', '+33 662 379 711', TRUE),
('Aigues Mortes', 'Aigues Mortes client de Engenys abonnésà R-Access', '+33 662 379 712', TRUE)
;
