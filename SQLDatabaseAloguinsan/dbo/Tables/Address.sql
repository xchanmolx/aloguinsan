CREATE TABLE [dbo].[Address]
(
	[AddressId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Municipality] NVARCHAR(100) NULL, 
    [Barangay] NVARCHAR(100) NULL, 
    [Province] NVARCHAR(100) NULL, 
    [Purok] NVARCHAR(100) NULL, 
    [ZipCode] NVARCHAR(10) NULL 
)
