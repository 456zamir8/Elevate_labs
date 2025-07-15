-- Show all loan by given member id
DELIMITER $$

CREATE PROCEDURE GetLoansByMember(IN member_id INT)
BEGIN
    SELECT 
        l.LoanID,
        b.Title,
        l.LoanDate,
        l.DueDate,
        l.ReturnDate
    FROM Loans l
    JOIN Books b ON l.BookID = b.BookID
    WHERE l.MemberID = member_id;
END $$

DELIMITER ;

-- Usage
CALL GetLoansByMember(3);

-- Return how old the book is based on book ID
DELIMITER $$

CREATE FUNCTION GetBookAge(book_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE book_age INT;
    SELECT YEAR(CURDATE()) - PublishedYear INTO book_age
    FROM Books
    WHERE BookID = book_id;
    RETURN book_age;
END $$

DELIMITER ;

-- Usage
SELECT Title, GetBookAge(BookID) AS BookAge
FROM Books;
