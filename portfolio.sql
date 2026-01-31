-- Création des tables pour le portfolio

CREATE TABLE IF NOT EXISTS skills (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    level INTEGER NOT NULL,
    icon TEXT
);

CREATE TABLE IF NOT EXISTS projects (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    description TEXT NOT NULL,
    image TEXT,
    tags TEXT -- Les tags sont stockés sous forme de chaîne séparée par des virgules
);

CREATE TABLE IF NOT EXISTS experiences (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    company TEXT NOT NULL,
    period TEXT NOT NULL,
    description TEXT NOT NULL,
    icon TEXT
);

CREATE TABLE IF NOT EXISTS messages (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT NOT NULL,
    subject TEXT NOT NULL,
    message TEXT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Insertion des données existantes

INSERT INTO skills (name, level, icon) VALUES 
('React', 95, 'code-2'),
('TypeScript', 90, 'code-2'),
('Node.js', 88, 'server'),
('Design UI/UX', 85, 'palette');

INSERT INTO projects (title, description, image, tags) VALUES 
('Plateforme E-Commerce', 'Solution Full-stack avec inventaire en temps réel.', 'https://images.unsplash.com/photo-1557821552-17105176677c?w=800&q=80', 'React,Node.js,MongoDB'),
('Application Mobile de Fitness', 'Application multiplateforme pour le suivi d''entraînements.', 'img/OIP.webp', 'React Native,Firebase'),
('Tableau de bord analytique', 'Plateforme de visualisation de données en temps réel.', 'https://images.unsplash.com/photo-1551288049-bebda4e38f71?w=800&q=80', 'Next.js,D3.js');

INSERT INTO experiences (title, company, period, description, icon) VALUES 
('Full Stack Developer', 'Studi', '2026', 'Développement de pointe d''applications web évolutives.', 'briefcase'),
('Frontend Developer', 'Studi', '2026', 'Développement d''applications web réactives avec React.', 'briefcase');