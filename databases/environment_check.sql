-- Environment Check
-- Database environment: MySQL 8.4
-- Use this script after importing the database SQL files
-- to verify the database connection and basic structure.


-- 1. Connection test
SELECT 1 AS connection_test;


-- 2. Check MySQL server information
SELECT
    @@version AS mysql_version,
    @@hostname AS server_hostname,
    @@port AS server_port;


-- 3. Check the currently selected database
SELECT
    DATABASE() AS current_database;


-- 4. List available databases
SHOW DATABASES;


-- 5. Verify student_registration database
SHOW TABLES FROM student_registration;


-- 6. Verify student_administration database
SHOW TABLES FROM student_administration;