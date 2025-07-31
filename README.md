# Pool Rental System

## Overview
This project contains a simple SQL schema used to track customers and earnings for a pool rental business. Sample rental data is provided separately in `seed_data.sql`.

## SQL Requirements
- Primary key for the table
- Descriptive column names
- `NOT NULL` constraints where appropriate
- Additional constraints (such as unique phone numbers), a check on rental times,
  and checks that contact fields are not blank and amounts are positive
- Scripts can be executed repeatedly by including `DROP` and `USE` statements

## Usage
Run the `dbo.rentals.sql` script on a SQL Server instance to create the database and table using the `dbo` schema:

```bash
sqlcmd -S <server> -d master -i dbo.rentals.sql
```

This will create a `pool_rental` database with a single `dbo.rentals` table. Each row includes customer contact details, the rental period, and the amount earned.

After creating the schema, seed it with example rentals by running:

```bash
sqlcmd -S <server> -d pool_rental -i seed_data.sql
```

You can calculate total earnings with:

```sql
SELECT SUM(amount) AS total_earnings FROM dbo.rentals;
```

## Reports
Several useful reporting queries are provided in `rental_reports.sql`. Run this
file after seeding the database to see summary information such as total
earnings by day or top earning customers.
