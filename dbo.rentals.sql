IF DB_ID('pool_rental') IS NOT NULL
    DROP DATABASE pool_rental;
GO
CREATE DATABASE pool_rental;
GO
USE pool_rental;
GO

IF OBJECT_ID('dbo.rentals','U') IS NOT NULL
    DROP TABLE dbo.rentals;
GO

CREATE TABLE dbo.rentals (
    rental_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    rental_start DATETIME NOT NULL,
    rental_end DATETIME NOT NULL,
    amount DECIMAL(8,2) NOT NULL,
    CONSTRAINT chk_rental_time CHECK (rental_end > rental_start),
    CONSTRAINT chk_amount_positive CHECK (amount > 0),
    CONSTRAINT chk_first_name_nonblank CHECK (first_name <> ' '),
    CONSTRAINT chk_last_name_nonblank CHECK (last_name <> ' '),
    CONSTRAINT chk_phone_nonblank CHECK (phone <> ' '),
    CONSTRAINT chk_email_nonblank CHECK (email <> ' ')
);
GO

-- Example query to view total earnings
-- SELECT SUM(amount) AS total_earnings FROM dbo.rentals;
GO
