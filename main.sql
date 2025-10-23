SELECT * FROM Books;

SELECT title, price FROM Books;

SELECT * FROM Books
WHERE price > 400;

SELECT * FROM Books
WHERE published_year > 1990 AND price < 500;

SELECT * FROM Authors
WHERE name LIKE 'J%';  -- names starting with J

SELECT * FROM Books
WHERE published_year BETWEEN 1990 AND 2000;

SELECT * FROM Books
ORDER BY price DESC;

SELECT * FROM Books
ORDER BY published_year DESC
LIMIT 3;

SELECT Members.name AS MemberName, Books.title AS BookBorrowed, Borrowings.borrow_date
FROM Borrowings
JOIN Members ON Borrowings.member_id = Members.member_id
JOIN Books ON Borrowings.book_id = Books.book_id;
