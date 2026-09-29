DROP DATABASE IF EXISTS LibraTrack;
CREATE DATABASE LibraTrack;
USE LibraTrack;

-- 1. Categories Table
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- 2. Publishers Table
CREATE TABLE publishers (
    publisher_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    city VARCHAR(100)
);

-- 3. Authors Table
CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    country VARCHAR(100)
);

-- 4. Members Table 
CREATE TABLE members (
    member_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(15),
    street_address VARCHAR(255),
    city VARCHAR(100),
    membership_date DATE,
    status VARCHAR(20)
);

-- 5. Books Table
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    isbn VARCHAR(20) UNIQUE,
    title VARCHAR(255) NOT NULL,
    publisher_id INT,
    category_id INT,
    published_year INT,
    FOREIGN KEY (publisher_id) REFERENCES publishers(publisher_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

-- 6. Book Authors Table 
CREATE TABLE book_authors (
    book_id INT,
    author_id INT,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

-- 7. Book Copies Table
CREATE TABLE book_copies (
    copy_id INT PRIMARY KEY,
    book_id INT,
    shelf_location VARCHAR(50),
    status VARCHAR(20),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

-- 8. Loans Table
CREATE TABLE loans (
    loan_id INT PRIMARY KEY,
    copy_id INT,
    member_id INT,
    issue_date DATE,
    due_date DATE,
    return_date DATE,
    FOREIGN KEY (copy_id) REFERENCES book_copies(copy_id),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

-- 9. Reservations Table
CREATE TABLE reservations (
    reservation_id INT PRIMARY KEY,
    book_id INT,
    member_id INT,
    reserved_on DATE,
    status VARCHAR(20),
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

-- 10. Fines Table 
CREATE TABLE fines (
    fine_id INT PRIMARY KEY,
    loan_id INT UNIQUE, 
    amount DECIMAL(10, 2),
    paid_status VARCHAR(20),
    paid_on DATE,
    FOREIGN KEY (loan_id) REFERENCES loans(loan_id)
);
