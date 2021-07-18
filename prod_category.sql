CREATE TABLE prod_category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    cat_name VARCHAR(32),
    created_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);