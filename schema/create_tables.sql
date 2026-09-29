/* Creating and using the database */

CREATE DATABASE LibraTrack;

USE LibraTrack;

/* Creation of required Tables */

CREATE TABLE members (member_id INT PRIMARY KEY, name VARCHAR(50), email VARCHAR(50), phone VARCHAR(15), membership_date DATE, status VARCHAR(50));
CREATE TABLE authors (author_id INT PRIMARY KEY, name VARCHAR(50), country VARCHAR(50));
CREATE TABLE publishers (publisher_id INT PRIMARY KEY, name VARCHAR(50), city VARCHAR(50));
CREATE TABLE categories (category_id INT PRIMARY KEY,name VARCHAR(50));
CREATE TABLE books (book_id INT PRIMARY KEY, ISBN VARCHAR(20) UNIQUE NOT NULL, title VARCHAR(50), publisher_id INT, category_id INT, published_year INT, FOREIGN KEY (publisher_id) REFERENCES publishers(publisher_id), FOREIGN KEY (category_id) REFERENCES categories(category_id));
CREATE TABLE book_authors (book_id INT, author_id INT, PRIMARY KEY (book_id, author_id), FOREIGN KEY (author_id) REFERENCES authors(author_id), FOREIGN KEY (book_id) REFERENCES books(book_id));
CREATE TABLE book_copies (copy_id INT PRIMARY KEY, book_id INT NOT NULL, shelf_location VARCHAR(50), status VARCHAR(50), FOREIGN KEY (book_id) REFERENCES books(book_id));
CREATE TABLE loans (loan_id INT PRIMARY KEY, copy_id INT NOT NULL, member_id INT NOT NULL, issue_date DATE NOT NULL, due_date DATE NOT NULL, return_date DATE, FOREIGN KEY (copy_id) REFERENCES book_copies(copy_id), FOREIGN KEY (member_id) REFERENCES members(member_id));
CREATE TABLE reservations (reservation_id INT PRIMARY KEY, book_id INT NOT NULL, member_id INT NOT NULL, reserved_on DATE NOT NULL, status VARCHAR(20) DEFAULT 'Active', FOREIGN KEY (book_id) REFERENCES books(book_id), FOREIGN KEY (member_id) REFERENCES members(member_id));
CREATE TABLE fines (fine_id INT PRIMARY KEY, loan_id INT NOT NULL, amount DECIMAL(10,2) NOT NULL, paid_status VARCHAR(20) DEFAULT 'Unpaid', paid_on DATE, FOREIGN KEY (loan_id) REFERENCES loans(loan_id));
