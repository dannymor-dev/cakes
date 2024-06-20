-- Create a new database (if not exists)
CREATE DATABASE IF NOT EXISTS cakes_website;

-- Use the created database
USE cakes_website;

-- Table for storing user credentials
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- Table for storing recipes
CREATE TABLE IF NOT EXISTS recipes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    ingredients TEXT,
    instructions TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Example data for testing (optional)
INSERT INTO users (username, password) VALUES
    ('admin', '$2y$10$ZRt6L2DKVJIAgD.T4ctimOsFTTGV5RTFLqTJRO12S5P6mtNS07lUO'); -- Password: "admin123"

INSERT INTO recipes (title, description, ingredients, instructions) VALUES
    ('Chocolate Fudge Cake', 'A rich and decadent chocolate cake recipe.', 'Chocolate, flour, sugar, eggs', '1. Preheat oven to 350°F. 2. Mix ingredients...'),
    ('Vanilla Strawberry Cake', 'Light and fruity, perfect for summer celebrations.', 'Vanilla, strawberries, flour, sugar', '1. Preheat oven to 325°F. 2. Blend strawberries...');

-- Add more INSERT statements for additional recipes if needed
