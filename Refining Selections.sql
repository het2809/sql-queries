-- TO DISTINCT INFORMATION
SELECT DISTINCT(AUTHOR_FNAME) FROM BOOKS;

SELECT DISTINCT CONCAT(author_fname,' ', author_lname) FROM books;

SELECT DISTINCT CONCAT(author_fname,' ', author_lname) FROM books LIMIT 5;

-- TO FIND INFORMATION
SELECT * FROM BOOKS WHERE AUTHOR_FNAME LIKE "%DA%";

-- TO COUNT INFORMATION
SELECT COUNT(*) FROM BOOKS;

-- GROUP BY
SELECT AUTHOR_FNAME , COUNT(AUTHOR_FNAME) FROM BOOKS GROUP BY AUTHOR_FNAME;

-- TO FIND MAXIMUM_MINIMUM INFORMATION
SELECT MAX(PAGES) FROM BOOKS;

SELECT MIN(PAGES) FROM BOOKS;

-- SUBQUERIES
SELECT * FROM books 
WHERE released_year = (SELECT MIN(released_year) FROM books);

-- TO KNOW HOW MUCH BOOKS AUTHOR HAD WRITTEN
SELECT CONCAT(author_fname, ' ', author_lname) AS author,  COUNT(*)
FROM books
GROUP BY author;

SELECT 
	author_lname, 
	COUNT(*) as books_written, 
	MAX(released_year) AS latest_release,
	MIN(released_year)  AS earliest_release,
	MAX(pages) AS longest_page_count
FROM books GROUP BY author_lname;

SELECT author_lname, COUNT(*), SUM(pages)
FROM books
GROUP BY author_lname;

SELECT 
    released_year, 
    AVG(stock_quantity), 
    COUNT(*) FROM books
GROUP BY released_year;
