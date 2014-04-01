/*
 * Inventory Analytics Warehouse
 * Project #35 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: MSSQL, OLAP Design
 * Created: 2012
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'InventoryDW')
BEGIN
    ALTER DATABASE InventoryDW SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE InventoryDW;
END
GO

CREATE DATABASE InventoryDW
ON PRIMARY
(
    NAME = 'InventoryDW_Data',
    FILENAME = 'C:\SQLData\InventoryDW_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'InventoryDW_Log',
    FILENAME = 'C:\SQLData\InventoryDW_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE InventoryDW SET RECOVERY SIMPLE;
ALTER DATABASE InventoryDW SET AUTO_UPDATE_STATISTICS ON;
GO

USE InventoryDW;
GO

PRINT 'Database InventoryDW created successfully';
PRINT 'Project: Inventory Analytics Warehouse';
PRINT 'Description: Stock aging and turnover analysis enablement';
GO
