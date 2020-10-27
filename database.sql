-- Create a new database called 'tareaNormalizacion'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = N'tareaNormalizacion'
)
CREATE DATABASE tareaNormalizacion
GO
DROP DATABASE tareaNormalizacion
GO
CREATE DATABASE tareaNormalizacion
GO
USE tareaNormalizacion
GO

-- Create a new tabclaseDia' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.claseDia', 'U') IS NOT NULL
DROP TABLE dbo.claseDia
GO
-- Create the table in the specified schema
CREATE TABLE dbo.claseDia
(
    Laborable [NVARCHAR](50) NOT NULL,
    Sabado [NVARCHAR](50) NOT NULL,
    Domingo_Feriado [NVARCHAR](50) NOT NUL
-- Create a new database called 'tareaNormalizacion'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = N'tareaNormalizacion'
)
CREATE DATABASE tareaNormalizacion
GO
DROP DATABASE tareaNormalizacion
GO
CREATE DATABASE tareaNormalizacion
GO
USE tareaNormalizacion
GO

-- Create the table in the specified schema
CREATE TABLE dbo.consumo
(
    id [INT] IDENTITY(1,1) NOT NULL, --primary key column
    claseDia [NVARCHAR](50) NOT NULL,
    periodoRuta [FLOAT] NOT NULL,
    periodoIntermedio [FLOAT] NOT NULL,
    periodoValle [FLOAT] NOT NULL,
    CONSTRAINT pkconsumo PRIMARY KEY(id)
    -- specify more columnsdbo. herdbo.e
);
GO

-- Insert rows into table 'TableName'
INSERT INTO consumo
( -- columns to insert data into
 [claseDia], [periodoRuta], [periodoIntermedio], [periodoValle]
)
VALUES
( -- first row: values for the columns in the list above
 'Laborable', '10 a 16, 18 a 22', '5 a 10, 16 a 18, 22 a 24', '0 a 5'
),
( -- first row: values for the columns in the list above
 'sabado', '12 a 13, 19 a 20', '6 a 12, 13 a 19, 20 a 24', '0 a 6'
),
( -- first row: values for the columns in the list above
 'Domingo o feriado', NULL, '11 a 13, 17 a 23', '0 a 11, 13 a 17, 23 a 24'
),
GO

-- Select rows from a Table or View 'consumo' in schema 'dbo'
SELECT * FROM dbo.consumo
--WHERE 	/* add search conditions here */
GO