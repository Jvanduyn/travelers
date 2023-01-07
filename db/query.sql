DROP DATABASE IF EXISTS newclaims_db;
CREATE DATABASE newclaims_db;

USE newclaims_db;

CREATE TABLE claim_types (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  claim_type VARCHAR(20) NOT NULL
);

CREATE TABLE auto_claims (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    movie_id INT,
    review TEXT NOT NULL,
    FOREIGN KEY (movie_id)
    REFERENCES movies(id)
    ON DELETE SET NULL
);

CREATE TABLE prop_claims (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    movie_id INT,
    review TEXT NOT NULL,
    FOREIGN KEY (movie_id)
    REFERENCES movies(id)
    ON DELETE SET NULL
);

CREATE TABLE gl_claims (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    movie_id INT,
    review TEXT NOT NULL,
    FOREIGN KEY (movie_id)
    REFERENCES movies(id)
    ON DELETE SET NULL
);