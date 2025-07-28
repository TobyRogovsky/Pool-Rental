-- Example reporting queries for the pool_rental database
-- These assume the pool_rental.sql script has been run and the rentals table exists.

-- 1. Total earnings
SELECT SUM(amount) AS total_earnings FROM rentals;

-- 2. Number of rentals per customer (ordered by most rentals)
SELECT first_name, last_name, COUNT(*) AS rentals_count
FROM rentals
GROUP BY first_name, last_name
ORDER BY rentals_count DESC;

-- 3. Earnings by day
SELECT DATE(rental_start) AS rental_date, SUM(amount) AS earnings_for_day
FROM rentals
GROUP BY rental_date
ORDER BY rental_date;

-- 4. Top earning customers
SELECT first_name, last_name, SUM(amount) AS total_spent
FROM rentals
GROUP BY first_name, last_name
ORDER BY total_spent DESC
LIMIT 5;
