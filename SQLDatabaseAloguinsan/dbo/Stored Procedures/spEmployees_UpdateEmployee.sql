CREATE PROCEDURE [dbo].[spEmployees_UpdateEmployee]
	@EmployeeId INT,
	@FirstName NVARCHAR(50),
	@LastName NVARCHAR(50),
	@Department NVARCHAR(100),
	@Designation NVARCHAR(30),
	@Position NVARCHAR(100),
	@AddressId INT,
	@ContactId INT
AS
BEGIN
	UPDATE dbo.Employees SET
	FirstName = @FirstName,
	LastName = @LastName,
	Department = @Department,
	Designation = @Designation,
	Position = @Position,
	AddressId = @AddressId,
	ContactId = @ContactId WHERE EmployeeId = @EmployeeId;
END
