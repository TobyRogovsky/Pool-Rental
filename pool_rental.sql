DROP DATABASE IF EXISTS pool_rental;
CREATE DATABASE pool_rental;
USE pool_rental;

CREATE TABLE rentals (
    rental_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    rental_start DATETIME NOT NULL,
    rental_end DATETIME NOT NULL,
    amount DECIMAL(8,2) NOT NULL,
    CONSTRAINT chk_rental_time CHECK (rental_end > rental_start)
);

-- Example query to view total earnings
-- SELECT SUM(amount) AS total_earnings FROM rentals;
