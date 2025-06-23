CREATE DATABASE Library;
USE Library;

CREATE TABLE Authors (
	AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100)
);

CREATE TABLE Books (
	BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(250),
    Genre VARCHAR(1-00),
    ISBN VARCHAR(30),
    AuthorID INT,
    PublishedYear INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

CREATE TABLE Members (
	MemberID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    DateOfBirth DATE UNIQUE,
    Phone VARCHAR(20)
);

CREATE TABLE Staff (
	StaffID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Role VARCHAR(100),
    Email VARCHAR(255) UNIQUE
);

CREATE TABLE Loans (
	LoanID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    StaffID INT,
    LoanDate DATE,
    DueDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
); 

CREATE TABLE BookCopies (
	CopyID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT,
    ShelfLocation VARCHAR(50),
    IsAvailable BOOLEAN,
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);