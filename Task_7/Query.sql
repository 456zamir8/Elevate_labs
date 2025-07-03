CREATE VIEW AvailableBooks AS
SELECT 
    b.Title,
    bc.CopyID,
    bc.ShelfLocation
FROM BookCopies bc
JOIN Books b ON bc.BookID = b.BookID
WHERE bc.IsAvailable = TRUE;

-- Drop the view
DROP VIEW IF EXISTS AvailableBooks;
