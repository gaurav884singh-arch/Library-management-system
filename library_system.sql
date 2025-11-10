CREATE USER 'ayush'@'localhost' IDENTIFIED BY 'ayush123';
CREATE DATABASE IF NOT EXISTS ayushdb;
GRANT ALL PRIVILEGES ON ayushdb.* TO 'ayush'@'localhost';
FLUSH PRIVILEGES;

USE ayushdb;

CREATE TABLE IF NOT EXISTS users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL
);

INSERT INTO users (username, password) VALUES ('admin', 'admin123');

CREATE TABLE IF NOT EXISTS books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    copies INT NOT NULL
);
