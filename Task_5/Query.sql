SELECT 
    b.BookID,
    b.Title,
    CONCAT(a.FirstName, ' ', a.LastName) AS Author
FROM Books b
INNER JOIN Authors a ON b.AuthorID = a.AuthorID;
