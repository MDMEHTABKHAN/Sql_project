CREATE DATABASE library;
USE library;

CREATE TABLE books (
  book_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  author VARCHAR(100),
  published_year INT,
  genre VARCHAR(50),
  price DECIMAL(5, 2)
);

INSERT INTO books (title, author, published_year, genre, price) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 1925, 'Fiction', 10.99),
('To Kill a Mockingbird', 'Harper Lee', 1960, 'Fiction', 7.99),
('1984', 'George Orwell', 1949, 'Dystopian', 8.99),
('Pride and Prejudice', 'Jane Austen', 1813, 'Romance', 9.49),
('The Catcher in the Rye', 'J.D. Salinger', 1951, 'Fiction', 6.99),
('Moby-Dick', 'Herman Melville', 1851, 'Adventure', 11.99),
('War and Peace', 'Leo Tolstoy', 1869, 'Historical', 13.99),
('The Odyssey', 'Homer', -700, 'Epic', 15.49),
('Crime and Punishment', 'Fyodor Dostoevsky', 1866, 'Psychological', 9.99),
('The Brothers Karamazov', 'Fyodor Dostoevsky', 1880, 'Philosophical', 14.49),
('Brave New World', 'Aldous Huxley', 1932, 'Dystopian', 7.49),
('One Hundred Years of Solitude', 'Gabriel Garcia Marquez', 1967, 'Magic Realism', 12.99),
('The Hobbit', 'J.R.R. Tolkien', 1937, 'Fantasy', 8.49),
('Fahrenheit 451', 'Ray Bradbury', 1953, 'Dystopian', 6.49),
('Jane Eyre', 'Charlotte Bronte', 1847, 'Romance', 9.99),
('Wuthering Heights', 'Emily Bronte', 1847, 'Romance', 8.99),
('The Divine Comedy', 'Dante Alighieri', 1320, 'Epic', 13.49),
('Hamlet', 'William Shakespeare', 1603, 'Tragedy', 7.99),
('The Iliad', 'Homer', -750, 'Epic', 15.99),
('Anna Karenina', 'Leo Tolstoy', 1877, 'Romance', 11.49),
('Madame Bovary', 'Gustave Flaubert', 1856, 'Realist', 10.49),
('The Picture of Dorian Gray', 'Oscar Wilde', 1890, 'Philosophical', 7.49),
('Frankenstein', 'Mary Shelley', 1818, 'Horror', 9.49),
('Dracula', 'Bram Stoker', 1897, 'Horror', 8.49),
('The Metamorphosis', 'Franz Kafka', 1915, 'Absurdist', 6.99),
('Don Quixote', 'Miguel de Cervantes', 1615, 'Adventure', 10.99),
('The Stranger', 'Albert Camus', 1942, 'Philosophical', 7.49),
('Great Expectations', 'Charles Dickens', 1861, 'Drama', 8.99),
('David Copperfield', 'Charles Dickens', 1850, 'Drama', 9.99),
('Les Misérables', 'Victor Hugo', 1862, 'Drama', 12.99),
('The Count of Monte Cristo', 'Alexandre Dumas', 1844, 'Adventure', 10.49),
('The Grapes of Wrath', 'John Steinbeck', 1939, 'Historical', 9.49),
('Catch-22', 'Joseph Heller', 1961, 'Satire', 11.49),
('Of Mice and Men', 'John Steinbeck', 1937, 'Drama', 6.99),
('Lolita', 'Vladimir Nabokov', 1955, 'Controversial', 10.99),
('The Road', 'Cormac McCarthy', 2006, 'Post-Apocalyptic', 9.49),
('The Alchemist', 'Paulo Coelho', 1988, 'Adventure', 8.99),
('Siddhartha', 'Hermann Hesse', 1922, 'Philosophical', 7.99),
('The Sun Also Rises', 'Ernest Hemingway', 1926, 'Fiction', 9.49),
('Slaughterhouse-Five', 'Kurt Vonnegut', 1969, 'Satire', 8.99),
('The Old Man and the Sea', 'Ernest Hemingway', 1952, 'Fiction', 6.49),
('The Catch-22', 'Joseph Heller', 1961, 'Satire', 11.49),
('Life of Pi', 'Yann Martel', 2001, 'Adventure', 8.99),
('Beloved', 'Toni Morrison', 1987, 'Historical', 7.49),
('Invisible Man', 'Ralph Ellison', 1952, 'Fiction', 10.49),
('White Teeth', 'Zadie Smith', 2000, 'Fiction', 9.49),
('Mrs. Dalloway', 'Virginia Woolf', 1925, 'Modernist', 8.49),
('A Tale of Two Cities', 'Charles Dickens', 1859, 'Historical', 6.99),
('Emma', 'Jane Austen', 1815, 'Romance', 7.99),
('Middlemarch', 'George Eliot', 1871, 'Realist', 10.99),
('The Bell Jar', 'Sylvia Plath', 1963, 'Fiction', 8.49),
('Gone with the Wind', 'Margaret Mitchell', 1936, 'Historical', 9.99),
('Atlas Shrugged', 'Ayn Rand', 1957, 'Philosophical', 12.99),
('The Sound and the Fury', 'William Faulkner', 1929, 'Modernist', 9.49),
('Native Son', 'Richard Wright', 1940, 'Fiction', 7.49),
('Things Fall Apart', 'Chinua Achebe', 1958, 'Historical', 8.49),
('The Scarlet Letter', 'Nathaniel Hawthorne', 1850, 'Historical', 6.49),
('The Awakening', 'Kate Chopin', 1899, 'Feminist', 7.99),
('The Road', 'Cormac McCarthy', 2006, 'Post-Apocalyptic', 9.49),
('The Book Thief', 'Markus Zusak', 2005, 'Historical', 10.49),
('A Clockwork Orange', 'Anthony Burgess', 1962, 'Dystopian', 8.99),
('The Color Purple', 'Alice Walker', 1982, 'Fiction', 7.49),
('Rebecca', 'Daphne du Maurier', 1938, 'Gothic', 9.49),
('Heart of Darkness', 'Joseph Conrad', 1899, 'Adventure', 6.99),
('The Kite Runner', 'Khaled Hosseini', 2003, 'Fiction', 8.49),
('The Handmaid\'s Tale', 'Margaret Atwood', 1985, 'Dystopian', 9.99),
('Dune', 'Frank Herbert', 1965, 'Science Fiction', 11.49),
('The Secret Garden', 'Frances Hodgson Burnett', 1911, 'Children\'s', 6.99),
('The Wind-Up Bird Chronicle', 'Haruki Murakami', 1994, 'Fiction', 12.49),
('The Giver', 'Lois Lowry', 1993, 'Young Adult', 7.99),
('Harry Potter and the Philosopher\'s Stone', 'J.K. Rowling', 1997, 'Fantasy', 8.49),
('The Hunger Games', 'Suzanne Collins', 2008, 'Dystopian', 7.49),
('Twilight', 'Stephenie Meyer', 2005, 'Fantasy', 6.49),
('The Catcher in the Rye', 'J.D. Salinger', 1951, 'Fiction', 6.99),
('The Fellowship of the Ring', 'J.R.R. Tolkien', 1954, 'Fantasy', 8.99),
('The Girl on the Train', 'Paula Hawkins', 2015, 'Thriller', 9.49),
('A Game of Thrones', 'George R.R. Martin', 1996, 'Fantasy', 10.99),
('The Da Vinci Code', 'Dan Brown', 2003, 'Thriller', 9.99),
('Inferno', 'Dan Brown', 2013, 'Thriller', 10.49),
('The Fault in Our Stars', 'John Green', 2012, 'Young Adult', 7.49),
('Percy Jackson & the Olympians: The Lightning Thief', 'Rick Riordan', 2005, 'Fantasy', 6.99),
('Memoirs of a Geisha', 'Arthur Golden', 1997, 'Historical', 8.99),
('The Lovely Bones', 'Alice Sebold', 2002, 'Fiction', 7.49),
('Gone Girl', 'Gillian Flynn', 2012, 'Thriller', 9.49),
('The Perks of Being a Wallflower', 'Stephen Chbosky', 1999, 'Young Adult', 6.99);

--  1 

-- This command lists all databases on the database server that the user has permission to access.
SHOW DATABASES;

-- This command lists all tables in the currently selected database.
SHOW TABLES;


-- SELECT is used to specify which columns to retrieve from a table.
-- * means "all columns."
-- FROM indicates the table from which to select the data.
-- books is the name of the table containing the book records.
SELECT * FROM books;

-- This command retrieves the book_id, title, and author columns from the books table.
SELECT book_id, title, author FROM books;
SELECT book_id, price, genre FROM books;

-- This command retrieves the title and book_id columns from the books table, limited to the first 10 records.
SELECT title, book_id from books limit 10;
SELECT book_id, title, genre, price FROM books LIMIT 14;
SELECT book_id, author price FROM books LIMIT 25;

-- This command retrieves the title, author, and book_id columns from the books table where the genre is 'fiction'.
SELECT title, author, book_id FROM books WHERE genre = 'fiction';
SELECT title author, price FROM books WHERE price >= 9;
SELECT title, book_id, price FROM books WHERE price != 10.99 LIMIT 10;







