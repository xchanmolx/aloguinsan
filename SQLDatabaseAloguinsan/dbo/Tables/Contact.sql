CREATE TABLE [dbo].[Contact]
(
	[ContactId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [MobilePhone] NVARCHAR(30) NULL, 
    [Telephone] NVARCHAR(30) NULL, 
    [EmailAddress] NVARCHAR(250) NULL
)
