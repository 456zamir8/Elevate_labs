use Library;

INSERT INTO Authors (FirstName, LastName) VALUES
('George', 'Orwell'),
('J.K.', 'Rowling'),
('Jane', 'Austen');

INSERT INTO Books (Title, Genre, ISBN, AuthorID, PublishedYear) VALUES
('1984', 'Dystopian', '9780451524935', 1, 1949),
('Harry Potter and the Sorcerer\'s Stone', 'Fantasy', '9780590353427', 2, 1997),
('Pride and Prejudice', 'Romance', '9780141439518', 3, 1813);

INSERT INTO Members (FirstName, LastName, DateOfBirth, Phone) VALUES
('Alice', 'Johnson', '1990-05-10', '9876543210'),
('Bob', 'Smith', '1985-08-20', '9123456789');

INSERT INTO Staff (FirstName, LastName, Role, Email) VALUES
('Linda', 'White', 'Librarian', 'linda.white@library.com'),
('Mark', 'Taylor', 'Assistant', 'mark.taylor@library.com');

INSERT INTO BookCopies (BookID, ShelfLocation, IsAvailable) VALUES
(1, 'A1', TRUE),
(1, 'A2', FALSE),
(2, 'B1', TRUE),
(3, 'C1', TRUE);

-- Alice borrows a copy of "1984", assisted by Linda
INSERT INTO Loans (BookID, MemberID, StaffID, LoanDate, DueDate, ReturnDate) VALUES
(1, 1, 1, '2025-06-01', '2025-06-15', '2025-06-14'),

-- Bob borrows "Harry Potter", still not returned
(2, 2, 2, '2025-06-10', '2025-06-24', NULL);

-- Updating Bob's Phone number
UPDATE Members 
SET Phone = '9123456452'
WHERE FirstName = 'Bob';

-- Delete a member named Alice
DELETE FROM Members
WHERE FirstName = 'Alice' AND LastName = 'Johnson';



