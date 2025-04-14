/*
=============================================================
Create Database 
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' in MySQL after checking if it already exists. 
    If the database exists, it is dropped and recreated.

WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.


*/

-- Drop the 'DataWarehouse' database if it already exists
DROP DATABASE IF EXISTS DataWarehouse;

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;

-- Switch to use the newly created database
USE DataWarehouse;

-- NOTE: The following 'CREATE SCHEMA' commands from the original T-SQL script 
-- are NOT executed here because MySQL handles schemas differently.
-- In MySQL, a schema is the database itself.
-- Use table prefixes (e.g., bronze_*, silver_*, gold_*) within the 'DataWarehouse' database.

-- using prefixes like 'bronze_', 'silver_', 'gold_' for logical separation.
-- Example: CREATE TABLE bronze_raw_customers (...);
-- Example: CREATE TABLE silver_clean_customers (...);
-- Example: CREATE TABLE gold_dim_customer (...);

SELECT 'Database DataWarehouse created and ready for table creation (using prefixes for layers).' AS Status;
