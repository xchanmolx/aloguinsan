CREATE PROCEDURE [dbo].[spEmployees_GetSingleEmployee]
	@EmployeeId INT
AS
BEGIN
	SELECT emp.*, a.Barangay AddressBarangay
	FROM dbo.Employees
	emp LEFT JOIN dbo.Address a ON 
	emp.AddressId = a.AddressId WHERE emp.EmployeeId = @EmployeeId;
END
