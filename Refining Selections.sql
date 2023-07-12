-- TO DISTINCT INFORMATION
SELECT DISTINCT(AUTHOR_FNAME) FROM BOOKS;

SELECT DISTINCT CONCAT(author_fname,' ', author_lname) FROM books;

SELECT DISTINCT CONCAT(author_fname,' ', author_lname) FROM books LIMIT 5;

-- TO FIND INFORMATION
SELECT * FROM BOOKS WHERE AUTHOR_FNAME LIKE "%DA%";

