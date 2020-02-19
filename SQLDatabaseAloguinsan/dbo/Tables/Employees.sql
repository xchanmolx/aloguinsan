CREATE TABLE [dbo].[Employees]
(
	[EmployeeId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [FirstName] NVARCHAR(50) NOT NULL, 
    [LastName] NVARCHAR(50) NOT NULL, 
    [Department] NVARCHAR(100) NOT NULL, 
    [Designation] NVARCHAR(30) NOT NULL, 
    [Position] NVARCHAR(100) NOT NULL, 
    [AddressId] INT NULL, 
    [ContactId] INT NULL 
)
