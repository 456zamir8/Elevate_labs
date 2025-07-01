SELECT 
    Title,
    (SELECT CONCAT(FirstName, ' ', LastName)
     FROM Authors
     WHERE Authors.AuthorID = Books.AuthorID) AS AuthorName
FROM Books;
