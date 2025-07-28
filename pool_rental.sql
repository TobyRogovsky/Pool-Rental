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

INSERT INTO rentals (first_name, last_name, phone, email, rental_start, rental_end, amount) VALUES
    ('Alice', 'Smith', '555-1111', 'alice@example.com', '2025-06-01 10:00:00', '2025-06-01 12:00:00', 100.00),
    ('Bob',   'Jones', '555-2222', 'bob@example.com',   '2025-06-02 14:00:00', '2025-06-02 16:00:00', 120.00),
    ('Carol', 'Lee',   '555-3333', 'carol@example.com', '2025-06-03 09:00:00', '2025-06-03 11:30:00', 150.00),
    ('Dave',  'Wong',  '555-4444', 'dave@example.com',  '2025-06-04 10:00:00', '2025-06-04 13:00:00', 180.00),
    ('Emma',  'Brown', '555-5555', 'emma@example.com',  '2025-06-05 11:00:00', '2025-06-05 12:30:00',  90.00),
    ('Frank', 'Garcia','555-6666', 'frank@example.com', '2025-06-06 09:30:00', '2025-06-06 11:00:00', 110.00);

-- Example query to view total earnings
-- SELECT SUM(amount) AS total_earnings FROM rentals;
