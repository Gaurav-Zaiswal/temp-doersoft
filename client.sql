CREATE TABLE client (
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    client_full_name VARCHAR(40) NOT NULL, 
    is_verifed BOOLEAN NOT NULL DEFAULT FALSE,
    industry_type VARCHAR(30) NOT NULL,
    client_logo LONGBLOB NOT NULL,
    logo_caption VARCHAR(30),
    joining_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);