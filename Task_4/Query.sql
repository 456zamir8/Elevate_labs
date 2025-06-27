SELECT
	COUNT(price) AS total_books,
    SUM(price) AS total_price,
    AVG(price) AS average_price
FROM books;
