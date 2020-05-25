-- Author: Harsh Arora
-- This sql script is responsible for creation of sql user login with specific server roles and permissions to connect to database engine

USE [master]
GO
CREATE LOGIN [xyz] FROM WINDOWS WITH DEFAULT_DATABASE=[Your Database Name], DEFAULT_LANGUAGE=[us_english]
GO
USE [Your Database Name]
GO
CREATE USER [xyz] FOR LOGIN [xyz]
GO
ALTER ROLE [MIS_Users] ADD MEMBER [xyz]
GO