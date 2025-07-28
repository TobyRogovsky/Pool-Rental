USE pool_rental;

TRUNCATE TABLE rentals;

INSERT INTO rentals (first_name, last_name, phone, email, rental_start, rental_end, amount) VALUES
    ('Alice', 'Smith', '555-1111', 'alice@example.com', '2025-06-01 10:00:00', '2025-06-01 12:00:00', 100.00),
    ('Bob',   'Jones', '555-2222', 'bob@example.com',   '2025-06-02 14:00:00', '2025-06-02 16:00:00', 120.00),
    ('Carol', 'Lee',   '555-3333', 'carol@example.com', '2025-06-03 09:00:00', '2025-06-03 11:30:00', 150.00),
    ('Dave',  'Wong',  '555-4444', 'dave@example.com',  '2025-06-04 10:00:00', '2025-06-04 13:00:00', 180.00),
    ('Emma',  'Brown', '555-5555', 'emma@example.com',  '2025-06-05 11:00:00', '2025-06-05 12:30:00',  90.00),
    ('Frank', 'Garcia','555-6666', 'frank@example.com', '2025-06-06 09:30:00', '2025-06-06 11:00:00', 110.00);
