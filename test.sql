-- SELECT * FROM Album LIMIT 1;
-- SELECT * FROM Artist LIMIT 1;
-- SELECT * FROM Customer LIMIT 1;
-- SELECT * FROM Employee LIMIT 1;
-- SELECT * FROM Genre LIMIT 1;
-- SELECT * FROM Invoice LIMIT 1;
-- SELECT * FROM InvoiceLine LIMIT 1;
-- SELECT * FROM MediaType LIMIT 1;
-- SELECT * FROM Playlist LIMIT 1;
-- SELECT * FROM PlaylistTrack LIMIT 1;
-- SELECT * FROM Track LIMIT 1;

-- SELECT EmployeeId, LastName, FirstName, HireDate FROM Employee
-- ORDER BY HireDate desc, EmployeeId desc
-- LIMIT 3;

-- SELECT CONCAT(Customer.FirstName, " ", Customer.LastName) AS 'Customer Name', InvoiceDate, Total FROM Invoice
-- INNER JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
-- ORDER BY Total desc, InvoiceDate desc
-- LIMIT 10;

-- SELECT COUNT(*) FROM Customer
-- WHERE SupportRepId=4;

-- SELECT COUNT(*) FROM Customer
-- INNER JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
-- WHERE CONCAT(Employee.FirstName, " ", Employee.LastName)="Jane Peacock";

-- SELECT MIN(BirthDate) FROM Employee;

-- SELECT COUNT(*) from Customer
-- WHERE City = 'Berlin'

-- SELECT SUM(InvoiceLine.UnitPrice) FROM InvoiceLine
-- INNER JOIN Track ON Track.TrackId = InvoiceLine.TrackId
-- WHERE Track.Name = 'The Woman King'
-- ;

SELECT Artist.Name, COUNT(Track.Name) FROM Track
INNER JOIN Album ON Album.AlbumId = Track.AlbumId
INNER JOIN Artist ON Artist.ArtistId = Album.ArtistId
GROUP BY Artist.Name
ORDER BY COUNT(Track.Name) desc
LIMIT 5
;