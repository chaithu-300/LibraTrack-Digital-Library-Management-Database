

USE LibraTrack;


-- categories (8)
INSERT INTO categories (category_id, name) VALUES
(1, 'Fiction'),
(2, 'Non-Fiction'),
(3, 'Science'),
(4, 'Technology'),
(5, 'History'),
(6, 'Biography'),
(7, 'Fantasy'),
(8, 'Mystery');

-- publishers (10)
INSERT INTO publishers (publisher_id, name, city) VALUES
(1, 'Rodriguez, Figueroa and Sanchez Press', 'Lake Curtis'),
(2, 'Mcclain, Miller and Henderson Press', 'North Jefferyhaven'),
(3, 'Johnson, Gonzalez and Santos House', 'Robinsonshire'),
(4, 'Pacheco-Smith Publishing', 'Lake Roberto'),
(5, 'Moore-Bernard Publishing', 'Curtisfurt'),
(6, 'Howard LLC Publishing', 'Lindsaymouth'),
(7, 'Martinez, Nielsen and Miller Press', 'Mariastad'),
(8, 'Lee, Jones and Stanley Media', 'Traciebury'),
(9, 'James Group Press', 'Franciscostad'),
(10, 'Santiago Ltd Media', 'New Cynthiaside');

-- authors (20)
INSERT INTO authors (author_id, name, country) VALUES
(1, 'Carla Gray', 'Uzbekistan'),
(2, 'Kristin Cohen', 'Tajikistan'),
(3, 'Amy Underwood', 'Sri Lanka'),
(4, 'Derek Clark', 'Western Sahara'),
(5, 'Michelle Lewis', 'Luxembourg'),
(6, 'Thomas Ellis', 'Estonia'),
(7, 'Patrick Ryan', 'San Marino'),
(8, 'Stephanie Ross', 'Cyprus'),
(9, 'Brenda Snyder PhD', 'Tokelau'),
(10, 'Mark Conner', 'Jamaica'),
(11, 'Janice Carlson', 'Lao People''s Democratic Republic'),
(12, 'Tricia Valencia', 'Algeria'),
(13, 'Ashley Dyer', 'Sao Tome and Principe'),
(14, 'Martin Rodriguez', 'Jordan'),
(15, 'Aaron Bowen', 'Saint Helena'),
(16, 'Jonathan White', 'United States Minor Outlying Islands'),
(17, 'Mario Skinner', 'Madagascar'),
(18, 'Brittany Farmer', 'Mauritius'),
(19, 'Tammy Sellers', 'Netherlands Antilles'),
(20, 'Alec Hickman', 'Turkey');

-- members (25)
INSERT INTO members (member_id, name, email, phone, membership_date, status) VALUES
(1, 'Dr. Cynthia Allen', 'dr.cynthia.allen1@example.com', '9891171822', '2025-01-08', 'Active'),
(2, 'Carmen Rose', 'carmen.rose2@example.com', '9896383465', '2024-01-03', 'Active'),
(3, 'Barbara Walker', 'barbara.walker3@example.com', '9850983930', '2022-04-29', 'Active'),
(4, 'Crystal Whitehead', 'crystal.whitehead4@example.com', '9851834738', '2022-08-10', 'Active'),
(5, 'Laura Kennedy', 'laura.kennedy5@example.com', '9876311656', '2023-11-19', 'Active'),
(6, 'Amy Valdez', 'amy.valdez6@example.com', '9810651333', '2024-06-16', 'Suspended'),
(7, 'Clifford Ford', 'clifford.ford7@example.com', '9817810801', '2026-03-30', 'Active'),
(8, 'Carol Tucker', 'carol.tucker8@example.com', '9836026064', '2026-03-31', 'Active'),
(9, 'Dominique Horton', 'dominique.horton9@example.com', '9887234309', '2025-05-15', 'Inactive'),
(10, 'Erik Williams', 'erik.williams10@example.com', '9878820812', '2022-04-25', 'Inactive'),
(11, 'Scott Powell', 'scott.powell11@example.com', '9893990916', '2025-01-04', 'Active'),
(12, 'Emily Green', 'emily.green12@example.com', '9853462475', '2026-04-04', 'Active'),
(13, 'Alexandra Howell', 'alexandra.howell13@example.com', '9891183842', '2026-04-01', 'Active'),
(14, 'Sherry Wood', 'sherry.wood14@example.com', '9827849808', '2023-05-16', 'Inactive'),
(15, 'Teresa Taylor', 'teresa.taylor15@example.com', '9811824493', '2025-04-15', 'Active'),
(16, 'Mark Baker', 'mark.baker16@example.com', '9874016400', '2023-07-13', 'Suspended'),
(17, 'William Martin', 'william.martin17@example.com', '9878680112', '2024-07-01', 'Inactive'),
(18, 'Lauren Hernandez', 'lauren.hernandez18@example.com', '9820450533', '2025-01-20', 'Inactive'),
(19, 'Justin Baxter', 'justin.baxter19@example.com', '9892322602', '2025-05-17', 'Active'),
(20, 'Timothy Pham', 'timothy.pham20@example.com', '9834216073', '2022-11-30', 'Active'),
(21, 'Hannah Hoover', 'hannah.hoover21@example.com', '9833036541', '2026-06-06', 'Active'),
(22, 'Martin Ross', 'martin.ross22@example.com', '9885014294', '2022-03-06', 'Active'),
(23, 'Haley Hartman', 'haley.hartman23@example.com', '9869816934', '2022-03-16', 'Active'),
(24, 'Joseph Drake', 'joseph.drake24@example.com', '9835615951', '2025-04-19', 'Active'),
(25, 'Eric Ortiz', 'eric.ortiz25@example.com', '9864823662', '2024-10-26', 'Active');

-- books (30)
INSERT INTO books (book_id, isbn, title, publisher_id, category_id, published_year) VALUES
(1, '978-1-80443-699-8', 'The Silent Meridian', 7, 2, 2007),
(2, '978-1-77387-214-8', 'Shadows Over Kestrel Bay', 6, 5, 1987),
(3, '978-0-343-32003-4', 'A Brief History of Tomorrow', 8, 2, 2009),
(4, '978-0-7693-6763-7', 'Algorithms in the Wild', 2, 5, 2025),
(5, '978-0-16-328708-1', 'The Clockmaker''s Daughter', 10, 6, 2021),
(6, '978-0-7278-8957-7', 'Whispers of the Deccan', 4, 2, 1987),
(7, '978-1-277-43487-3', 'Quantum Gardens', 4, 5, 1990),
(8, '978-1-71434-558-8', 'The Last Ledger', 4, 2, 2009),
(9, '978-0-236-23166-9', 'River of Forgotten Names', 5, 8, 2025),
(10, '978-1-60366-909-2', 'Code and Consequence', 6, 3, 2008),
(11, '978-1-05-466889-7', 'The Cartographer''s Secret', 6, 4, 2002),
(12, '978-1-346-70656-6', 'Echoes of the Monsoon', 2, 3, 2019),
(13, '978-1-298-06990-0', 'Beneath a Copper Sky', 4, 3, 2014),
(14, '978-1-272-04653-8', 'The Physics of Everyday Things', 7, 5, 2025),
(15, '978-1-56464-170-0', 'Letters to a Young Engineer', 9, 4, 2005),
(16, '978-1-310-03309-4', 'The Vanishing Point', 1, 4, 1987),
(17, '978-0-271-93745-8', 'Ashes of Camelot', 6, 7, 2002),
(18, '978-0-241-90496-1', 'The Bookseller of Kabul Street', 2, 4, 2021),
(19, '978-0-19-314919-9', 'Neural Horizons', 6, 4, 2016),
(20, '978-1-86518-506-4', 'The Salt Road', 7, 8, 1994),
(21, '978-0-657-26284-6', 'Midnight in the Archive', 5, 3, 2000),
(22, '978-1-69453-147-6', 'A Theory of Small Things', 9, 5, 2022),
(23, '978-1-996507-52-0', 'The Glassblower''s Apprentice', 7, 7, 2008),
(24, '978-0-545-49480-9', 'Empire of Rust', 4, 3, 2017),
(25, '978-0-367-83777-8', 'The Forgotten Ledger', 8, 2, 1988),
(26, '978-0-436-34957-7', 'Songs of the Ganges', 2, 3, 2025),
(27, '978-1-85574-443-1', 'The Data Alchemist', 3, 7, 2023),
(28, '978-0-518-23374-9', 'Winter at Fort Row', 2, 7, 2009),
(29, '978-0-343-52408-1', 'The Paper Kingdom', 10, 8, 2018),
(30, '978-1-00-842710-5', 'Fractures in Time', 5, 1, 1992);

-- book_authors (35)
INSERT INTO book_authors (book_id, author_id) VALUES
(22, 18),
(25, 9),
(25, 11),
(4, 10),
(14, 6),
(15, 1),
(24, 9),
(17, 6),
(17, 4),
(28, 10),
(27, 17),
(20, 7),
(5, 12),
(25, 6),
(18, 17),
(30, 1),
(20, 11),
(16, 1),
(4, 12),
(29, 10),
(8, 2),
(8, 19),
(3, 3),
(24, 16),
(27, 3),
(25, 18),
(25, 5),
(5, 16),
(18, 6),
(9, 17),
(28, 20),
(14, 7),
(30, 18),
(25, 7),
(23, 10);


-- book_copies (40)
INSERT INTO book_copies (copy_id, book_id, shelf_location, status) VALUES
(1, 1, 'F6-40', 'Available'),  
(2, 1, 'C7-26', 'Available'),
(3, 2, 'F5-68', 'Available'),
(4, 2, 'C2-11', 'Available'),
(5, 3, 'D2-19', 'Available'),  
(6, 4, 'E4-74', 'Available'),
(7, 5, 'C3-54', 'Available'),
(8, 6, 'A4-57', 'Available'),
(9, 7, 'C3-66', 'Available'),
(10, 8, 'E5-88', 'Available'),
(11, 8, 'F9-11', 'Issued'),     
(12, 9, 'F9-48', 'Available'),
(13, 10, 'F2-27', 'Available'),
(14, 11, 'C2-23', 'Damaged'),
(15, 12, 'F9-29', 'Available'),
(16, 12, 'C5-87', 'Available'),
(17, 12, 'B6-36', 'Available'),
(18, 13, 'F5-74', 'Available'), 
(19, 14, 'D5-16', 'Issued'),    
(20, 14, 'A7-45', 'Available'),
(21, 15, 'A1-52', 'Available'),
(22, 16, 'B5-30', 'Available'),
(23, 17, 'F8-80', 'Issued'),   
(24, 17, 'F7-81', 'Available'),
(25, 18, 'A2-19', 'Available'),
(26, 18, 'F3-79', 'Available'),
(27, 19, 'A6-84', 'Available'), 
(28, 20, 'E3-65', 'Available'),
(29, 21, 'B1-49', 'Available'),
(30, 21, 'C1-55', 'Available'),
(31, 22, 'B4-95', 'Available'),
(32, 23, 'A6-81', 'Available'),
(33, 24, 'D3-40', 'Lost'),
(34, 25, 'B3-62', 'Issued'),  
(35, 26, 'A3-52', 'Available'),
(36, 27, 'D4-44', 'Available'),
(37, 27, 'B2-58', 'Available'),
(38, 28, 'A8-38', 'Available'),
(39, 29, 'B8-54', 'Available'),
(40, 30, 'C4-38', 'Available'); 
-- loans (20)
INSERT INTO loans (loan_id, copy_id, member_id, issue_date, due_date, return_date) VALUES
(1, 2, 4, '2026-06-19', '2026-07-03', '2026-07-05'),
(2, 13, 24, '2026-05-30', '2026-06-13', '2026-06-17'),
(3, 26, 20, '2026-05-25', '2026-06-08', '2026-06-05'),
(4, 22, 13, '2026-04-05', '2026-04-19', '2026-04-19'),
(5, 18, 9, '2026-03-10', '2026-03-24', '2026-09-26'),
(6, 5, 14, '2026-08-29', '2026-09-12', '2026-09-26'),
(7, 36, 18, '2026-06-01', '2026-06-15', '2026-06-15'),
(8, 23, 12, '2026-07-03', '2026-07-17', NULL),
(9, 38, 22, '2026-03-15', '2026-03-29', '2026-03-31'),
(10, 37, 22, '2026-06-30', '2026-07-14', '2026-07-14'),
(11, 27, 17, '2026-03-11', '2026-03-25', '2026-09-26'),
(12, 34, 14, '2026-03-29', '2026-04-12', NULL),
(13, 11, 23, '2026-06-17', '2026-07-01', NULL),
(14, 1, 5, '2026-04-28', '2026-05-12', '2026-09-26'),
(15, 4, 22, '2026-09-08', '2026-09-22', '2026-09-21'),
(16, 9, 20, '2026-03-23', '2026-04-06', '2026-04-10'),
(17, 6, 18, '2026-07-26', '2026-08-09', '2026-08-09'),
(18, 19, 10, '2026-06-26', '2026-07-10', NULL),
(19, 25, 19, '2026-07-31', '2026-08-14', '2026-08-16'),
(20, 40, 15, '2026-07-12', '2026-07-26', '2026-09-26');

-- reservations (8)
INSERT INTO reservations (reservation_id, book_id, member_id, reserved_on, status) VALUES
(1, 22, 3, '2026-07-21', 'Pending'),
(2, 10, 17, '2026-07-20', 'Pending'),
(3, 22, 21, '2026-09-04', 'Pending'),
(4, 20, 11, '2026-09-18', 'Fulfilled'),
(5, 3, 25, '2026-07-04', 'Fulfilled'),
(6, 8, 22, '2026-08-08', 'Cancelled'),
(7, 10, 8, '2026-08-07', 'Pending'),
(8, 26, 7, '2026-08-22', 'Fulfilled');

-- fines (10)
INSERT INTO fines (fine_id, loan_id, amount, paid_status, paid_on) VALUES
(1, 14, 685.0, 'Paid', '2026-09-27'),
(2, 6, 70.0, 'Paid', '2026-09-27'),
(3, 20, 310.0, 'Paid', '2026-09-28'),
(4, 11, 925.0, 'Paid', '2026-09-28'),
(5, 19, 10.0, 'Unpaid', NULL),
(6, 5, 930.0, 'Unpaid', NULL),
(7, 1, 10.0, 'Paid', '2026-07-05'),
(8, 2, 20.0, 'Paid', '2026-06-17'),
(9, 9, 10.0, 'Unpaid', NULL),
(10, 16, 20.0, 'Unpaid', NULL);


-- ============================================================
SELECT table_name, expected_rows, actual_rows,
       CASE WHEN expected_rows = actual_rows THEN 'PASS' ELSE 'FAIL' END AS result
FROM (
    SELECT 'categories' AS table_name, 8 AS expected_rows, (SELECT COUNT(*) FROM categories) AS actual_rows
    UNION ALL
    SELECT 'publishers' AS table_name, 10 AS expected_rows, (SELECT COUNT(*) FROM publishers) AS actual_rows
    UNION ALL
    SELECT 'authors' AS table_name, 20 AS expected_rows, (SELECT COUNT(*) FROM authors) AS actual_rows
    UNION ALL
    SELECT 'members' AS table_name, 25 AS expected_rows, (SELECT COUNT(*) FROM members) AS actual_rows
    UNION ALL
    SELECT 'books' AS table_name, 30 AS expected_rows, (SELECT COUNT(*) FROM books) AS actual_rows
    UNION ALL
    SELECT 'book_authors' AS table_name, 35 AS expected_rows, (SELECT COUNT(*) FROM book_authors) AS actual_rows
    UNION ALL
    SELECT 'book_copies' AS table_name, 40 AS expected_rows, (SELECT COUNT(*) FROM book_copies) AS actual_rows
    UNION ALL
    SELECT 'loans' AS table_name, 20 AS expected_rows, (SELECT COUNT(*) FROM loans) AS actual_rows
    UNION ALL
    SELECT 'reservations' AS table_name, 8 AS expected_rows, (SELECT COUNT(*) FROM reservations) AS actual_rows
    UNION ALL
    SELECT 'fines' AS table_name, 10 AS expected_rows, (SELECT COUNT(*) FROM fines) AS actual_rows
) AS row_count_check;
