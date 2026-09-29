
USE LibraTrack;

SELECT f.fine_id, f.loan_id
FROM fines f
JOIN loans l ON f.loan_id = l.loan_id
WHERE l.return_date IS NULL;

UPDATE loans SET return_date = '2026-09-26'
WHERE loan_id IN (5, 6, 11, 14, 20);

UPDATE book_copies SET status = 'Available'
WHERE copy_id IN (1, 5, 18, 27, 40);

-- 1. No duplicate book-author pairs (D8: M:N via book_authors)
SELECT book_id, author_id, COUNT(*) AS duplicate_count
FROM book_authors
GROUP BY book_id, author_id
HAVING COUNT(*) > 1;

-- 2. No duplicate ISBNs (isbn is a key attribute, Sec 4)
SELECT isbn, COUNT(*) AS isbn_count
FROM books
WHERE isbn IS NOT NULL
GROUP BY isbn
HAVING COUNT(*) > 1;

-- 3. No duplicate member emails (email is a key attribute, Sec 4)
SELECT email, COUNT(*) AS email_count
FROM members
WHERE email IS NOT NULL
GROUP BY email
HAVING COUNT(*) > 1;

-- 4. Every book's publisher exists (D6)
SELECT b.book_id, b.title
FROM books b
LEFT JOIN publishers p ON b.publisher_id = p.publisher_id
WHERE p.publisher_id IS NULL;

-- 5. Every book's category exists (D6)
SELECT b.book_id, b.title
FROM books b
LEFT JOIN categories c ON b.category_id = c.category_id
WHERE c.category_id IS NULL;

-- 6. No orphan copies - every copy belongs to a book (D4)
SELECT bc.copy_id, bc.book_id
FROM book_copies bc
LEFT JOIN books b ON bc.book_id = b.book_id
WHERE b.book_id IS NULL;

-- 7. Every loan points to a real copy (D3)
SELECT l.loan_id, l.copy_id
FROM loans l
LEFT JOIN book_copies bc ON l.copy_id = bc.copy_id
WHERE bc.copy_id IS NULL;

-- 8. Every loan points to a real member (D10)
SELECT l.loan_id, l.member_id
FROM loans l
LEFT JOIN members m ON l.member_id = m.member_id
WHERE m.member_id IS NULL;

-- 9. Every fine points to a real loan (D1)
SELECT f.fine_id, f.loan_id
FROM fines f
LEFT JOIN loans l ON f.loan_id = l.loan_id
WHERE l.loan_id IS NULL;

-- 10. Every reservation points to a real book and member (D7)
SELECT r.reservation_id, r.book_id, r.member_id
FROM reservations r
LEFT JOIN books b ON r.book_id = b.book_id
LEFT JOIN members m ON r.member_id = m.member_id
WHERE b.book_id IS NULL OR m.member_id IS NULL;

-- 11. A copy is never in two active loans at once
--     (D5 + D9: availability must be correct at any moment)
SELECT copy_id, COUNT(*) AS active_loans
FROM loans
WHERE return_date IS NULL
GROUP BY copy_id
HAVING COUNT(*) > 1;

-- 12. A loan has at most one fine (D1: linked to exactly one loan)
SELECT loan_id, COUNT(*) AS fine_count
FROM fines
GROUP BY loan_id
HAVING COUNT(*) > 1;

-- 13. A fine only exists on a returned loan (D2)
--     (same check as STEP 1 - must now return 0 rows)
SELECT f.fine_id, f.loan_id
FROM fines f
JOIN loans l ON f.loan_id = l.loan_id
WHERE l.return_date IS NULL;

