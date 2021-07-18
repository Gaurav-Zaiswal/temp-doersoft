CREATE TABLE job_opening(
    job_id INT AUTO_INCREMENT PRIMARY KEY,
    jb_type_id INT,
    opened_on TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    job_title VARCHAR(50) NOT NULL,
    qualification VARCHAR(20) NOT NULL,
    exp INT,
    req TEXT NOT NULL,
    duty TEXT NOT NULL,
    salary VARCHAR(15),
    extra_constrain TINYTEXT, -- e.g. must know Spanish Lnaguage
    is_open BOOLEAN NOT NULL DEFAULT FALSE,
    FOREIGN KEY(jb_type_id) REFERENCES job_type(jb_type_id)
);