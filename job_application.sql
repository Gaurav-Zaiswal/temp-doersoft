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