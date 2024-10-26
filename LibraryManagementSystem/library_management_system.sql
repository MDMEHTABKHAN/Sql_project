-- Create the database
CREATE DATABASE library_db;

-- Use the library_db database
USE library_db;

-- Drop database if it already exists
DROP DATABASE IF EXISTS library_db;

-- Create the Authors table
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Bio TEXT
);

-- Create the Books table
CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    AuthorID INT,
    Genre VARCHAR(100),
    ISBN VARCHAR(20) UNIQUE,
    PublishedDate DATE,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

-- Create the Borrowers table
CREATE TABLE Borrowers (
    BorrowerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20)
);

-- Create the Loans table
CREATE TABLE Loans (
    LoanID INT PRIMARY KEY AUTO_INCREMENT,
    BookID INT,
    BorrowerID INT,
    LoanDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (BorrowerID) REFERENCES Borrowers(BorrowerID)
);

-- Insert sample data into Authors
INSERT INTO Authors (Name, Bio)
VALUES 
('J.K. Rowling', 'British author, best known for the Harry Potter series.'),
('George R.R. Martin', 'American novelist and short story writer, known for A Song of Ice and Fire.'),
('J.R.R. Tolkien', 'English writer, poet, and academic, best known for The Lord of the Rings.'),
('Agatha Christie', 'British writer known for her detective novels, particularly those featuring Hercule Poirot.'),
('Mark Twain', 'American writer and humorist, known for The Adventures of Tom Sawyer.');

-- Insert sample data into Books
INSERT INTO Books (Title, AuthorID, Genre, ISBN, PublishedDate)
VALUES 
('Harry Potter and the Sorcerer''s Stone', 1, 'Fantasy', '978-0439708180', '1997-09-01'),
('A Game of Thrones', 2, 'Fantasy', '978-0553103540', '1996-08-06'),
('The Hobbit', 3, 'Fantasy', '978-0345339683', '1937-09-21'),
('Murder on the Orient Express', 4, 'Mystery', '978-0062693662', '1934-01-01'),
('The Adventures of Tom Sawyer', 5, 'Fiction', '978-0486275427', '1876-01-01');

-- Insert sample data into Borrowers
INSERT INTO Borrowers (Name, Email, Phone)
VALUES 
('Alice Johnson', 'alice@example.com', '555-1234'),
('Bob Smith', 'bob@example.com', '555-5678'),
('Charlie Brown', 'charlie@example.com', '555-8765'),
('Diana Prince', 'diana@example.com', '555-4321'),
('Eve Adams', 'eve@example.com', '555-6789');

-- Insert sample data into Loans
INSERT INTO Loans (BookID, BorrowerID, LoanDate, ReturnDate)
VALUES 
(1, 1, '2023-09-01', NULL),  -- Alice borrowed Harry Potter
(2, 2, '2023-09-03', '2023-09-10'),  -- Bob borrowed Game of Thrones and returned it
(3, 3, '2023-09-05', NULL),  -- Charlie borrowed The Hobbit
(4, 4, '2023-09-07', '2023-09-14'),  -- Diana borrowed Murder on the Orient Express and returned it
(5, 5, '2023-09-09', NULL);  -- Eve borrowed The Adventures of Tom Sawyer

-- Query to track which books are borrowed and by whom
SELECT 
    B.Title, 
    A.Name AS AuthorName, 
    Br.Name AS BorrowerName, 
    L.LoanDate, 
    L.ReturnDate
FROM 
    Loans L
JOIN 
    Books B ON L.BookID = B.BookID
JOIN 
    Authors A ON B.AuthorID = A.AuthorID
JOIN 
    Borrowers Br ON L.BorrowerID = Br.BorrowerID
WHERE 
    L.ReturnDate IS NULL;  -- Currently borrowed books

-- Query to generate reports on the most borrowed books
SELECT 
    B.Title, 
    COUNT(L.LoanID) AS TotalBorrowed
FROM 
    Loans L
JOIN 
    Books B ON L.BookID = B.BookID
GROUP BY 
    B.BookID
ORDER BY 
    TotalBorrowed DESC;

-- Query to find overdue loans
SELECT 
    B.Title, 
    Br.Name AS BorrowerName, 
    L.LoanDate, 
    L.ReturnDate,
    DATEDIFF(CURDATE(), L.LoanDate) AS DaysOverdue
FROM 
    Loans L
JOIN 
    Books B ON L.BookID = B.BookID
JOIN 
    Borrowers Br ON L.BorrowerID = Br.BorrowerID
WHERE 
    L.ReturnDate IS NULL 
    AND DATEDIFF(CURDATE(), L.LoanDate) > 14;  -- Loans overdue by more than 14 days
