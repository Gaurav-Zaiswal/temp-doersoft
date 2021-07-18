CREATE TABLE product (
    prod_id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT,
    prod_name VARCHAR(40) NOT NULL, 
    prod_url VARCHAR(50) NOT NULL,
    type_type VARCHAR(30) NOT NULL,
    thumbnail LONGBLOB NOT NULL,
    title VARCHAR(50),
    release_ts TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    prod_desc TEXT NOT NULL,
    created_on DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(client_id) REFERENCES client(client_id)
);