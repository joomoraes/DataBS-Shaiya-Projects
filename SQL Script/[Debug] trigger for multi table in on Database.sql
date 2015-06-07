
USE PS_UserData 
GO

CREATE TABLE LOG_TABLE (Add_dttm datetime DEFAULT (GetDate()), TABLE_NAME sysname, Activity char(6)) 
GO

DECLARE @sql varchar(8000), @TABLE_NAME sysname SET NOCOUNT ON

SELECT @TABLE_NAME = MIN(TABLE_NAME) 
FROM INFORMATION_SCHEMA.Tables

WHILE @TABLE_NAME IS NOT NULL   
BEGIN 
	SELECT @sql = 'CREATE TRIGGER[' + @TABLE_NAME + '_Usage_TR] ON [' + @TABLE_NAME +'] '   + 'FOR INSERT, UPDATE, 	DELETE AS '   + 'IF EXISTS (SELECT * FROM inserted) AND NOT EXISTS (SELECT * FROM deleted) '   + 'INSERT INTO LOG_TABLE (TABLE_NAME,Activity) SELECT ''' + @TABLE_NAME + ''', ''INSERT''' + ''   + 'IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted) '   + 'INSERT INTO LOG_TABLE (TABLE_NAME,Activity) SELECT ''' + @TABLE_NAME + ''', ''UPDATE''' + ' '   + 'IF NOT EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted) '   + 'INSERT INTO LOG_TABLE (TABLE_NAME,Activity) SELECT ''' + @TABLE_NAME + ''', ''DELETE''' + ' GO'  
	SELECT @sql  EXEC(@sql)  
	SELECT @TABLE_NAME = MIN(TABLE_NAME) 
	FROM INFORMATION_SCHEMA.Tables 
	WHERE TABLE_NAME > @TABLE_NAME    
END 

SET NOCOUNT OFF


/* PS_GameData */

USE PS_GameData
GO

CREATE TABLE _LOG_TABLE (Add_dttm datetime DEFAULT (GetDate()), TABLE_NAME sysname, Activity char(6)) 
GO

DECLARE @sql varchar(8000), @TABLE_NAME sysname SET NOCOUNT ON

SELECT @TABLE_NAME = MIN(TABLE_NAME) 
FROM INFORMATION_SCHEMA.Tables

WHILE @TABLE_NAME IS NOT NULL   
BEGIN 
	SELECT @sql = 'CREATE TRIGGER[' + @TABLE_NAME + '_Usage_TR] ON [' + @TABLE_NAME +'] '   + 'FOR INSERT, UPDATE, 	DELETE AS '   + 'IF EXISTS (SELECT * FROM inserted) AND NOT EXISTS (SELECT * FROM deleted) '   + 'INSERT INTO LOG_TABLE (TABLE_NAME,Activity) SELECT ''' + @TABLE_NAME + ''', ''INSERT''' + ''   + 'IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted) '   + 'INSERT INTO LOG_TABLE (TABLE_NAME,Activity) SELECT ''' + @TABLE_NAME + ''', ''UPDATE''' + ' '   + 'IF NOT EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted) '   + 'INSERT INTO LOG_TABLE (TABLE_NAME,Activity) SELECT ''' + @TABLE_NAME + ''', ''DELETE''' + ' GO'  
	SELECT @sql  EXEC(@sql)  
	SELECT @TABLE_NAME = MIN(TABLE_NAME) 
	FROM INFORMATION_SCHEMA.Tables 
	WHERE TABLE_NAME > @TABLE_NAME    
END 

SET NOCOUNT OFF

/* Chat_log */

USE PS_Chatlog
GO

CREATE TABLE _LOG_TABLE (Add_dttm datetime DEFAULT (GetDate()), TABLE_NAME sysname, Activity char(6)) 
GO

DECLARE @sql varchar(8000), @TABLE_NAME sysname SET NOCOUNT ON

SELECT @TABLE_NAME = MIN(TABLE_NAME) 
FROM INFORMATION_SCHEMA.Tables

WHILE @TABLE_NAME IS NOT NULL   
BEGIN 
	SELECT @sql = 'CREATE TRIGGER[' + @TABLE_NAME + '_Usage_TR] ON [' + @TABLE_NAME +'] '   + 'FOR INSERT, UPDATE, 	DELETE AS '   + 'IF EXISTS (SELECT * FROM inserted) AND NOT EXISTS (SELECT * FROM deleted) '   + 'INSERT INTO LOG_TABLE (TABLE_NAME,Activity) SELECT ''' + @TABLE_NAME + ''', ''INSERT''' + ''   + 'IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted) '   + 'INSERT INTO LOG_TABLE (TABLE_NAME,Activity) SELECT ''' + @TABLE_NAME + ''', ''UPDATE''' + ' '   + 'IF NOT EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted) '   + 'INSERT INTO LOG_TABLE (TABLE_NAME,Activity) SELECT ''' + @TABLE_NAME + ''', ''DELETE''' + ' GO'  
	SELECT @sql  EXEC(@sql)  
	SELECT @TABLE_NAME = MIN(TABLE_NAME) 
	FROM INFORMATION_SCHEMA.Tables 
	WHERE TABLE_NAME > @TABLE_NAME    
END 

SET NOCOUNT OFF

/* PS_BIlling */
USE PS_Billing
GO

CREATE TABLE _LOG_TABLE (Add_dttm datetime DEFAULT (GetDate()), TABLE_NAME sysname, Activity char(6)) 
GO

DECLARE @sql varchar(8000), @TABLE_NAME sysname SET NOCOUNT ON

SELECT @TABLE_NAME = MIN(TABLE_NAME) 
FROM INFORMATION_SCHEMA.Tables

WHILE @TABLE_NAME IS NOT NULL   
BEGIN 
	SELECT @sql = 'CREATE TRIGGER[' + @TABLE_NAME + '_Usage_TR] ON [' + @TABLE_NAME +'] '   + 'FOR INSERT, UPDATE, 	DELETE AS '   + 'IF EXISTS (SELECT * FROM inserted) AND NOT EXISTS (SELECT * FROM deleted) '   + 'INSERT INTO LOG_TABLE (TABLE_NAME,Activity) SELECT ''' + @TABLE_NAME + ''', ''INSERT''' + ''   + 'IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted) '   + 'INSERT INTO LOG_TABLE (TABLE_NAME,Activity) SELECT ''' + @TABLE_NAME + ''', ''UPDATE''' + ' '   + 'IF NOT EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted) '   + 'INSERT INTO LOG_TABLE (TABLE_NAME,Activity) SELECT ''' + @TABLE_NAME + ''', ''DELETE''' + ' GO'  
	SELECT @sql  EXEC(@sql)  
	SELECT @TABLE_NAME = MIN(TABLE_NAME) 
	FROM INFORMATION_SCHEMA.Tables 
	WHERE TABLE_NAME > @TABLE_NAME    
END 

SET NOCOUNT OFF


/* Game_Def */
USE PS_GameDefs
GO

CREATE TABLE _LOG_TABLE (Add_dttm datetime DEFAULT (GetDate()), TABLE_NAME sysname, Activity char(6)) 
GO

DECLARE @sql varchar(8000), @TABLE_NAME sysname SET NOCOUNT ON

SELECT @TABLE_NAME = MIN(TABLE_NAME) 
FROM INFORMATION_SCHEMA.Tables

WHILE @TABLE_NAME IS NOT NULL   
BEGIN 
	SELECT @sql = 'CREATE TRIGGER[' + @TABLE_NAME + '_Usage_TR] ON [' + @TABLE_NAME +'] '   + 'FOR INSERT, UPDATE, 	DELETE AS '   + 'IF EXISTS (SELECT * FROM inserted) AND NOT EXISTS (SELECT * FROM deleted) '   + 'INSERT INTO LOG_TABLE (TABLE_NAME,Activity) SELECT ''' + @TABLE_NAME + ''', ''INSERT''' + ''   + 'IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted) '   + 'INSERT INTO LOG_TABLE (TABLE_NAME,Activity) SELECT ''' + @TABLE_NAME + ''', ''UPDATE''' + ' '   + 'IF NOT EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted) '   + 'INSERT INTO LOG_TABLE (TABLE_NAME,Activity) SELECT ''' + @TABLE_NAME + ''', ''DELETE''' + ' GO'  
	SELECT @sql  EXEC(@sql)  
	SELECT @TABLE_NAME = MIN(TABLE_NAME) 
	FROM INFORMATION_SCHEMA.Tables 
	WHERE TABLE_NAME > @TABLE_NAME    
END 

SET NOCOUNT OFF

/* Game Log */
USE PS_GameLog
GO

CREATE TABLE _LOG_TABLE (Add_dttm datetime DEFAULT (GetDate()), TABLE_NAME sysname, Activity char(6)) 
GO

DECLARE @sql varchar(8000), @TABLE_NAME sysname SET NOCOUNT ON

SELECT @TABLE_NAME = MIN(TABLE_NAME) 
FROM INFORMATION_SCHEMA.Tables

WHILE @TABLE_NAME IS NOT NULL   
BEGIN 
	SELECT @sql = 'CREATE TRIGGER[' + @TABLE_NAME + '_Usage_TR] ON [' + @TABLE_NAME +'] '   + 'FOR INSERT, UPDATE, 	DELETE AS '   + 'IF EXISTS (SELECT * FROM inserted) AND NOT EXISTS (SELECT * FROM deleted) '   + 'INSERT INTO LOG_TABLE (TABLE_NAME,Activity) SELECT ''' + @TABLE_NAME + ''', ''INSERT''' + ''   + 'IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted) '   + 'INSERT INTO LOG_TABLE (TABLE_NAME,Activity) SELECT ''' + @TABLE_NAME + ''', ''UPDATE''' + ' '   + 'IF NOT EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted) '   + 'INSERT INTO LOG_TABLE (TABLE_NAME,Activity) SELECT ''' + @TABLE_NAME + ''', ''DELETE''' + ' GO'  
	SELECT @sql  EXEC(@sql)  
	SELECT @TABLE_NAME = MIN(TABLE_NAME) 
	FROM INFORMATION_SCHEMA.Tables 
	WHERE TABLE_NAME > @TABLE_NAME    
END 

SET NOCOUNT OFF



/* PS_GMTool */
USE PS_GMTool
GO

CREATE TABLE _LOG_TABLE (Add_dttm datetime DEFAULT (GetDate()), TABLE_NAME sysname, Activity char(6)) 
GO

DECLARE @sql varchar(8000), @TABLE_NAME sysname SET NOCOUNT ON

SELECT @TABLE_NAME = MIN(TABLE_NAME) 
FROM INFORMATION_SCHEMA.Tables

WHILE @TABLE_NAME IS NOT NULL   
BEGIN 
	SELECT @sql = 'CREATE TRIGGER[' + @TABLE_NAME + '_Usage_TR] ON [' + @TABLE_NAME +'] '   + 'FOR INSERT, UPDATE, 	DELETE AS '   + 'IF EXISTS (SELECT * FROM inserted) AND NOT EXISTS (SELECT * FROM deleted) '   + 'INSERT INTO LOG_TABLE (TABLE_NAME,Activity) SELECT ''' + @TABLE_NAME + ''', ''INSERT''' + ''   + 'IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted) '   + 'INSERT INTO LOG_TABLE (TABLE_NAME,Activity) SELECT ''' + @TABLE_NAME + ''', ''UPDATE''' + ' '   + 'IF NOT EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted) '   + 'INSERT INTO LOG_TABLE (TABLE_NAME,Activity) SELECT ''' + @TABLE_NAME + ''', ''DELETE''' + ' GO'  
	SELECT @sql  EXEC(@sql)  
	SELECT @TABLE_NAME = MIN(TABLE_NAME) 
	FROM INFORMATION_SCHEMA.Tables 
	WHERE TABLE_NAME > @TABLE_NAME    
END 

SET NOCOUNT OFF


/* PS_StatData */
USE PS_StatData
GO

CREATE TABLE _LOG_TABLE (Add_dttm datetime DEFAULT (GetDate()), TABLE_NAME sysname, Activity char(6)) 
GO

DECLARE @sql varchar(8000), @TABLE_NAME sysname SET NOCOUNT ON

SELECT @TABLE_NAME = MIN(TABLE_NAME) 
FROM INFORMATION_SCHEMA.Tables

WHILE @TABLE_NAME IS NOT NULL   
BEGIN 
	SELECT @sql = 'CREATE TRIGGER[' + @TABLE_NAME + '_Usage_TR] ON [' + @TABLE_NAME +'] '   + 'FOR INSERT, UPDATE, 	DELETE AS '   + 'IF EXISTS (SELECT * FROM inserted) AND NOT EXISTS (SELECT * FROM deleted) '   + 'INSERT INTO LOG_TABLE (TABLE_NAME,Activity) SELECT ''' + @TABLE_NAME + ''', ''INSERT''' + ''   + 'IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted) '   + 'INSERT INTO LOG_TABLE (TABLE_NAME,Activity) SELECT ''' + @TABLE_NAME + ''', ''UPDATE''' + ' '   + 'IF NOT EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted) '   + 'INSERT INTO LOG_TABLE (TABLE_NAME,Activity) SELECT ''' + @TABLE_NAME + ''', ''DELETE''' + ' GO'  
	SELECT @sql  EXEC(@sql)  
	SELECT @TABLE_NAME = MIN(TABLE_NAME) 
	FROM INFORMATION_SCHEMA.Tables 
	WHERE TABLE_NAME > @TABLE_NAME    
END 

SET NOCOUNT OFF



/* PS_STATICS */
USE PS_STATICS
GO

CREATE TABLE _LOG_TABLE (Add_dttm datetime DEFAULT (GetDate()), TABLE_NAME sysname, Activity char(6)) 
GO

DECLARE @sql varchar(8000), @TABLE_NAME sysname SET NOCOUNT ON

SELECT @TABLE_NAME = MIN(TABLE_NAME) 
FROM INFORMATION_SCHEMA.Tables

WHILE @TABLE_NAME IS NOT NULL   
BEGIN 
	SELECT @sql = 'CREATE TRIGGER[' + @TABLE_NAME + '_Usage_TR] ON [' + @TABLE_NAME +'] '   + 'FOR INSERT, UPDATE, 	DELETE AS '   + 'IF EXISTS (SELECT * FROM inserted) AND NOT EXISTS (SELECT * FROM deleted) '   + 'INSERT INTO LOG_TABLE (TABLE_NAME,Activity) SELECT ''' + @TABLE_NAME + ''', ''INSERT''' + ''   + 'IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted) '   + 'INSERT INTO LOG_TABLE (TABLE_NAME,Activity) SELECT ''' + @TABLE_NAME + ''', ''UPDATE''' + ' '   + 'IF NOT EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted) '   + 'INSERT INTO LOG_TABLE (TABLE_NAME,Activity) SELECT ''' + @TABLE_NAME + ''', ''DELETE''' + ' GO'  
	SELECT @sql  EXEC(@sql)  
	SELECT @TABLE_NAME = MIN(TABLE_NAME) 
	FROM INFORMATION_SCHEMA.Tables 
	WHERE TABLE_NAME > @TABLE_NAME    
END 

SET NOCOUNT OFF






















































