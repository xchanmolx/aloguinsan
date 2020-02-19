CREATE PROCEDURE [dbo].[spEmployees_DeleteEmployee]
	@EmployeeId INT
AS
BEGIN
	DELETE FROM dbo.Employees WHERE EmployeeId = @EmployeeId;
END
