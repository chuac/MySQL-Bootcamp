-- SELECT COUNT(*) FROM books;

-- SELECT released_year AS 'year', COUNT(*) AS 'books released this year' FROM books GROUP BY released_year;

-- SELECT SUM(stock_quantity) AS 'total number of books in stock' FROM books;

-- SELECT CONCAT(author_fname, ' ', author_lname) AS 'author name', AVG(released_year) AS 'average released year' FROM books GROUP BY author_lname, author_fname;

-- SELECT CONCAT(author_fname, ' ', author_lname) AS 'author name who wrote the longest book' FROM books ORDER BY pages DESC LIMIT 1;
-- -- OR can do like below using subqueries
-- -- SELECT CONCAT(author_fname, ' ', author_lname) AS 'author name who wrote the longest book' FROM books 
-- -- WHERE pages = (SELECT MAX(pages) FROM books);

SELECT released_year AS 'year', COUNT(*) AS '# books', AVG(pages) AS 'avg pages' FROM books GROUP BY released_year;