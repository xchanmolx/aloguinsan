CREATE PROCEDURE [dbo].[spEmployees_GetAll]
AS
BEGIN
	SELECT emp.*, a.Barangay AddressBarangay FROM dbo.Employees 
	emp LEFT JOIN dbo.Address a ON emp.AddressId = a.AddressId ORDER BY emp.LastName;
END
