CREATE TABLE career (
    c_id INT AUTO_INCREMENT PRIMARY KEY,
    career_type VARCHAR(3), -- in -> intership, ftj -> full time job, ptj -> parttime job
    career_title VARCHAR(30)
);

CREATE TABLE client (
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    client_full_name VARCHAR(40) NOT NULL, 
    is_verifed BOOLEAN NOT NULL DEFAULT FALSE,
    industry_type VARCHAR(30) NOT NULL,
    client_logo LONGBLOB NOT NULL,
    logo_caption VARCHAR(30),
    joining_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE contact_us(
    con_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(60) NOT NULL,
    phone VARCHAR(13) NOT NULL,
    email VARCHAR(60) NOT NULL,
    title TINYTEXT NOT NULL,
    msg TEXT NOT NULL
);

CREATE TABLE job_opening(
    job_id INT AUTO_INCREMENT PRIMARY KEY,
    opened_on TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    job_title VARCHAR(50) NOT NULL,
    job_type VARCHAR(3), -- in -> intership, ftj -> full time job, ptj -> parttime job
    qualification VARCHAR(20) NOT NULL,
    exp INT,
    req TEXT NOT NULL,
    duty TEXT NOT NULL,
    salary VARCHAR(15),
    extra_constrain TINYTEXT -- e.g. must know Spanish Lnaguage
);

CREATE table job_application(
    ap_id INT AUTO_INCREMENT PRIMARY KEY,
    job_id INT,
    full_name VARCHAR(50) NOT NULL,
    email VARCHAR(70) NOT NULL,
    phone VARCHAR(13) NOT NULL,
    CV LONGBLOB NOT NULL,
    cover_letter LONGBLOB,
    extra_info TEXT,  -- I am referred by KP Oli 
    FOREIGN KEY(job_id) REFERENCES job_opening(job_id)
);

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