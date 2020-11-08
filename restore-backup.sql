RESTORE DATABASE [AdventureWorks] FROM DISK = '/tmp/AdventureWorksLT2019.bak'
WITH FILE = 1,
MOVE 'AdventureWorksLT2012_Data' TO '/var/opt/mssql/data/AdventureWorks.mdf',
MOVE 'AdventureWorksLT2012_Log' TO '/var/opt/mssql/data/AdventureWorks.ldf',
NOUNLOAD, REPLACE, STATS = 5
GO

--RESTORE FILELISTONLY FROM DISK = 'C:\Temp\docker\AdventureWorksLT2019.bak'