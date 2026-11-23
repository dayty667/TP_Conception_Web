CREATE DATABASE campusconnect COLLATE French_CI_AS;
GO

USE campusconnect;
GO

-- Table des entreprises
CREATE TABLE entreprises (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    secteur VARCHAR(80),
    ville VARCHAR(80),
    site_web VARCHAR(255)
);

-- Table des offres
CREATE TABLE offres (
    id INT IDENTITY(1,1) PRIMARY KEY,
    titre VARCHAR(120) NOT NULL,
    type VARCHAR(30) NOT NULL,
    statut VARCHAR(20) NOT NULL DEFAULT 'ouverte',
    description TEXT,
    entreprise_id INT NOT NULL,
    FOREIGN KEY (entreprise_id) REFERENCES entreprises(id) ON DELETE CASCADE
);

-- Table des étudiants
CREATE TABLE etudiants (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nom VARCHAR(80) NOT NULL,
    prenom VARCHAR(80) NOT NULL,
    email VARCHAR(120) NOT NULL UNIQUE,
    filiere VARCHAR(80)
);

-- Table d'association
CREATE TABLE candidatures (
    etudiant_id INT NOT NULL,
    offre_id INT NOT NULL,
    date_action DATETIME DEFAULT GETDATE(),
    PRIMARY KEY (etudiant_id, offre_id),
    FOREIGN KEY (etudiant_id) REFERENCES etudiants(id) ON DELETE CASCADE,
    FOREIGN KEY (offre_id) REFERENCES offres(id) ON DELETE CASCADE
);

-- Données
INSERT INTO entreprises (nom, secteur, ville, site_web) VALUES
('NordTech', 'Développement Web', 'Lille', 'https://nordtech.fr'),
('PixelForge', 'Design & UI/UX', 'Villeneuve-d''Ascq', 'https://pixelforge.fr'),
('GreenData', 'Cybersécurité', 'Lille', 'https://greendata.fr');

INSERT INTO offres (titre, type, statut, description, entreprise_id) VALUES
('Stage Développeur Web', 'stage', 'ouverte', 'Développement d''une application web en équipe.', 1),
('Stage Intégrateur Frontend', 'stage', 'clôturée', 'Création d''interfaces responsives HTML/CSS/JS.', 2),
('Alternance Admin Réseaux', 'alternance', 'ouverte', 'Gestion de serveurs Linux et sécurité réseau.', 3);

INSERT INTO etudiants (nom, prenom, email, filiere) VALUES
('Martin', 'Léa', 'lea.martin@exemple.fr', 'B1 Informatique'),
('Dubois', 'Lucas', 'lucas.dubois@exemple.fr', 'BTS SIO SISR');

INSERT INTO candidatures (etudiant_id, offre_id) VALUES
(1, 1),
(2, 3);