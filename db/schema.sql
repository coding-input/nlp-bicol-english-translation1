-- NLP Bicol-English Translation System
-- Database Schema

-- Translation pairs table: stores Bicol-English word/phrase mappings
CREATE TABLE IF NOT EXISTS translation_pairs (
    id SERIAL PRIMARY KEY,
    bicol_text TEXT NOT NULL,
    english_text TEXT NOT NULL,
    category VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Linguistic rules table: stores grammar and syntax mapping rules
CREATE TABLE IF NOT EXISTS linguistic_rules (
    id SERIAL PRIMARY KEY,
    rule_name VARCHAR(255) NOT NULL,
    source_pattern TEXT NOT NULL,
    target_pattern TEXT NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Translation history table: logs user translation requests
CREATE TABLE IF NOT EXISTS translation_history (
    id SERIAL PRIMARY KEY,
    source_text TEXT NOT NULL,
    translated_text TEXT NOT NULL,
    source_language VARCHAR(10) NOT NULL CHECK (source_language IN ('bicol', 'english')),
    target_language VARCHAR(10) NOT NULL CHECK (target_language IN ('bicol', 'english')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Seed data: sample Bicol-English translation pairs
INSERT INTO translation_pairs (bicol_text, english_text, category) VALUES
    ('Marhay na aldaw', 'Good morning', 'greetings'),
    ('Marhay na banggi', 'Good evening', 'greetings'),
    ('Salamat', 'Thank you', 'greetings'),
    ('Tabi', 'Excuse me', 'greetings'),
    ('Ano an ngaran mo?', 'What is your name?', 'questions'),
    ('Sain ka nagdaduman?', 'Where are you going?', 'questions'),
    ('Pirang taon ka na?', 'How old are you?', 'questions'),
    ('Harong', 'House', 'nouns'),
    ('Eskwelahan', 'School', 'nouns'),
    ('Libro', 'Book', 'nouns'),
    ('Maestro', 'Teacher', 'nouns'),
    ('Estudyante', 'Student', 'nouns');
