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