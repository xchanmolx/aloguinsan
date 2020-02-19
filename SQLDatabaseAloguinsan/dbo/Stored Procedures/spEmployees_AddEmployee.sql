CREATE PROCEDURE [dbo].[spEmployees_AddEmployee]
	@FirstName NVARCHAR(50),
	@LastName NVARCHAR(50),
	@Department NVARCHAR(100),
	@Designation NVARCHAR(30),
	@Position NVARCHAR(100),
	@AddressId int,
	@ContactId int
AS
BEGIN
	INSERT INTO dbo.Employees (FirstName, LastName, Department, Designation, Position, AddressId, ContactId)
	VALUES (@FirstName, @LastName,  @Department, @Designation, @Position, @AddressId, @ContactId);
END
