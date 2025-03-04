/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it will show message telling that there is a database with the same name.
	Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.*/

USE master

-- Create the 'DataWarehouse' database
BEGIN TRY
    CREATE DATABASE DataWarehouse;
END TRY
BEGIN CATCH
	SELECT'There is Already Database Called DataWarehouse'
END CATCH;


USE DataWarehouse;


-- Create Schemas
GO
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
