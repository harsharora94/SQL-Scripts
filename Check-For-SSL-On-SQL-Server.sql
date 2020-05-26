-- Author: Harsh Arora
-- Purpose: This sql script is responsible for detecting if SSL is configured on SQL Server or not.
-- It also shows the session_ids currently connected to SQL Server. If the value of encrypt_option is TRUE, then it indicates that the connection is using a secured connection. 

SELECT 
   session_id, 
   encrypt_option
FROM sys.dm_exec_connections