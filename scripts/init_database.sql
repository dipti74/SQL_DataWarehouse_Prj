/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

--Drop & recreate 'DataWareHouse' database
IF EXISTS(select 1 from sys.databases where name='DataWareHouse'
BEGIN
ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

--Create 'DataWareHouse' database
Create Database DataWareHouse

--Use 'DataWareHouse' databse
Use DataWareHouse

--Create Schemas for bronze,silver,gold layer
Create SCHEMA bronze;
GO
Create SCHEMA silver;
GO
Create SCHEMA gold;
GO
