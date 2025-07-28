# Pool Rental System

## Overview
This project contains a simple SQL schema used to track customers and earnings for a pool rental business.

## SQL Requirements
- Primary key for the table
- Descriptive column names
- `NOT NULL` constraints where appropriate
- Additional constraints (such as unique phone numbers) and a check on rental times
- Scripts can be executed repeatedly by including `DROP` and `USE` statements

## Usage
Run the `pool_rental.sql` script on a MySQL server:

```bash
mysql -u <user> -p < pool_rental.sql
```

This will create a `pool_rental` database with a single `rentals` table. Each row includes customer contact details, the rental period, and the amount earned. The script also inserts six example rentals so you have immediate data to query.

You can calculate total earnings with:

```sql
SELECT SUM(amount) AS total_earnings FROM rentals;
```

## Reports
Several useful reporting queries are provided in `rental_reports.sql`. Run this
file after seeding the database to see summary information such as total
earnings by day or top earning customers.
