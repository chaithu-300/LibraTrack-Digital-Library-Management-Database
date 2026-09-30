USE LibraTrack;


SELECT book_id, author_id, COUNT(*) AS duplicate_count
FROM book_authors
GROUP BY book_id, author_id
HAVING COUNT(*) > 1;


SELECT isbn, COUNT(*) AS isbn_count
FROM books
WHERE isbn IS NOT NULL
GROUP BY isbn
HAVING COUNT(*) > 1;


SELECT email, COUNT(*) AS email_count
FROM members
WHERE email IS NOT NULL
GROUP BY email
HAVING COUNT(*) > 1;


SELECT b.book_id, b.title
FROM books b
LEFT JOIN publishers p ON b.publisher_id = p.publisher_id
WHERE p.publisher_id IS NULL;


SELECT b.book_id, b.title
FROM books b
LEFT JOIN categories c ON b.category_id = c.category_id
WHERE c.category_id IS NULL;


SELECT bc.copy_id, bc.book_id
FROM book_copies bc
LEFT JOIN books b ON bc.book_id = b.book_id
WHERE b.book_id IS NULL;


SELECT l.loan_id, l.copy_id
FROM loans l
LEFT JOIN book_copies bc ON l.copy_id = bc.copy_id
WHERE bc.copy_id IS NULL;


SELECT l.loan_id, l.member_id
FROM loans l
LEFT JOIN members m ON l.member_id = m.member_id
WHERE m.member_id IS NULL;


SELECT f.fine_id, f.loan_id
FROM fines f
LEFT JOIN loans l ON f.loan_id = l.loan_id
WHERE l.loan_id IS NULL;


SELECT r.reservation_id, r.book_id, r.member_id
FROM reservations r
LEFT JOIN books b ON r.book_id = b.book_id
LEFT JOIN members m ON r.member_id = m.member_id
WHERE b.book_id IS NULL OR m.member_id IS NULL;


SELECT copy_id, COUNT(*) AS active_loans
FROM loans
WHERE return_date IS NULL
GROUP BY copy_id
HAVING COUNT(*) > 1;


SELECT loan_id, COUNT(*) AS fine_count
FROM fines
GROUP BY loan_id
HAVING COUNT(*) > 1;


SELECT f.fine_id, f.loan_id
FROM fines f
JOIN loans l ON f.loan_id = l.loan_id
WHERE l.return_date IS NULL;
