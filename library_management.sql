-- Create a database
CREATE DATABASE LibraryDB;
USE LibraryDB;

-- Create table for Authors
CREATE TABLE Authors (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);

-- Create table for Books
CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100),
    AuthorID INT,
    Genre VARCHAR(50),
    PublishedYear INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

-- Create table for Borrowers
CREATE TABLE Borrowers (
    BorrowerID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    MembershipDate DATE
);

-- Create table for BorrowedBooks
CREATE TABLE BorrowedBooks (
    BorrowedBookID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT,
    BorrowerID INT,
    BorrowedDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (BorrowerID) REFERENCES Borrowers(BorrowerID)
);

-- Insert sample data into Authors
INSERT INTO Authors (FirstName, LastName) VALUES 
('John', 'Steinbeck'),
('Jane', 'Austen'),
('George', 'Orwell');

-- Insert sample data into Books
INSERT INTO Books (Title, AuthorID, Genre, PublishedYear) VALUES 
('The Grapes of Wrath', 1, 'Fiction', 1939),
('Pride and Prejudice', 2, 'Romance', 1813),
('1984', 3, 'Dystopian', 1949);

-- Insert sample data into Borrowers
INSERT INTO Borrowers (FirstName, LastName, MembershipDate) VALUES 
('Alice', 'Smith', '2020-01-15'),
('Bob', 'Johnson', '2021-05-22');

-- Insert sample data into BorrowedBooks
INSERT INTO BorrowedBooks (BookID, BorrowerID, BorrowedDate, ReturnDate) VALUES 
(1, 1, '2023-06-01', '2023-06-15'),
(2, 2, '2023-06-05', '2023-06-20');

-- Sample Queries
-- 1. List all books along with their authors
SELECT b.Title, a.FirstName, a.LastName, b.Genre, b.PublishedYear
FROM Books b
JOIN Authors a ON b.AuthorID = a.AuthorID;

-- 2. List all books currently borrowed
SELECT bb.BorrowedBookID, b.Title, br.FirstName, br.LastName, bb.BorrowedDate, bb.ReturnDate
FROM BorrowedBooks bb
JOIN Books b ON bb.BookID = b.BookID
JOIN Borrowers br ON bb.BorrowerID = br.BorrowerID
WHERE bb.ReturnDate IS NULL;

-- 3. List all borrowers who have borrowed a specific book
SELECT br.FirstName, br.LastName
FROM BorrowedBooks bb
JOIN Borrowers br ON bb.BorrowerID = br.BorrowerID
WHERE bb.BookID = 1;

-- 4. List all books of a specific genre
SELECT Title, PublishedYear
FROM Books
WHERE Genre = 'Fiction';

-- 5. List all borrowed books along with borrower information
SELECT b.Title, br.FirstName, br.LastName, bb.BorrowedDate, bb.ReturnDate
FROM BorrowedBooks bb
JOIN Books b ON bb.BookID = b.BookID
JOIN Borrowers br ON bb.BorrowerID = br.BorrowerID;
