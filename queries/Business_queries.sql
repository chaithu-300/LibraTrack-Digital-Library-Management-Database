USE LibraTrack;

-- which books are borrowed more frequently?
select b.book_id, b.title, count(l.loan_id) as borrowed_frequency
from books as b
join book_copies as bc 
on b.book_id = bc.book_id
join loans as l
on bc.copy_id = l.copy_id
group by b.book_id , b.title
order by borrowed_frequency desc;

-- Who are the more active members?
select m.member_id, m.name, count(l.loan_id) as total_loans 
from members as m
join loans as l
on m.member_id = l.member_id
group by m.member_id , m.name
order by total_loans desc;

-- Which authors have the most borrowed books?
select a.name, a.author_id, count(l.loan_id) as book_borrowed
from authors as a
join book_authors as ba
on a.author_id = ba.author_id
join book_copies as bc
on ba.book_id = bc.book_id
join loans as l
on bc.copy_id = l.copy_id
group by a.author_id, a.name
order by book_borrowed desc ;

-- Which books have never been borrowed?
select b.book_id, b.title, count(l.loan_id) = 0 as never_borrowed
from books as b
join book_copies as bc 
on b.book_id = bc.book_id
left join loans as l
on bc.copy_id = l.copy_id
group by b.book_id , b.title
having count(l.loan_id) = 0
order by b.title desc;

-- Which books are currently overdue?
select b.book_id, b.title, m.name AS borrowed_by, l.due_date
from loans as l
join book_copies bc
on l.copy_id = bc.copy_id
join books as b         
on bc.book_id = b.book_id
JOIN members as m       
on l.member_id = m.member_id
where l.return_date IS NULL
  and l.due_date < '2026-09-26'
order by l.due_date ASC;

-- How much has been collected in fines?
select sum(amount) as total_fines
from fines
where paid_status = 'paid';

-- Which categories are most popular?
select c.category_id, c.name, COUNT(l.loan_id) AS total_borrowed
from categories as c
join books as b        
on c.category_id = b.category_id
join book_copies as bc 
on b.book_id = bc.book_id
join loans as l        
on bc.copy_id = l.copy_id
group by c.category_id, c.name
order by total_borrowed DESC;

-- Which members currently have unpaid fines, and how much do they owe in total?
select m.member_id, m.name, sum(amount) as amount_owe
from members as m
join loans as l
on m.member_id = l.member_id
join fines as f
on f.loan_id = l.loan_id
where paid_status = 'unpaid'
group by m.member_id , m.name
order by m.member_id;

-- Which publishers' books have the most unpaid fines to the library?
select p.publisher_id, p.name , sum(amount) as amount_owe
from publishers as p
join books as b
on p.publisher_id = b.publisher_id
join book_copies as bc
on b.book_id = bc.book_id
join loans as l
on l.copy_id = bc.copy_id
join fines as f
on l.loan_id = f.loan_id
where paid_status = 'unpaid'
group by p.publisher_id , p.name
order by amount_owe desc;

-- Which books currently have zero available copies?
select b.book_id , b.title 
from books as b 
left join book_copies as bc
on b.book_id = bc.book_id
and bc.status = 'available' 
where copy_id is null
order by b.book_id 
