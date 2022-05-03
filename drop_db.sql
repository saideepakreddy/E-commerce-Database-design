DROP DATABASE buy_sell;

/* Delete Database Backup and Restore History from MSDB System Database */

EXEC msdb.dbo.sp_delete_database_backuphistory @database_name = N'buy_sell'
GO

/* Query to Get Exclusive Access of SQL Server Database before Dropping the Database  */

USE [master]
GO
ALTER DATABASE [buy_sell] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
GO

/* Query to Drop Database in SQL Server  */

DROP DATABASE [buy_sell]
GO

