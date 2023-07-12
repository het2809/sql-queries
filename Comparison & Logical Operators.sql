-- NOT EQUAL TO
SELECT * FROM BOOKS
WHERE AUTHOR_FNAME != "DAVID";

-- NOT LIKE
SELECT * FROM BOOKS
WHERE AUTHOR_FNAME NOT LIKE "%NE%";

-- GREATER THAN
SELECT * FROM BOOKS 
WHERE RELEASED_YEAR > 2001;

-- LESS THAN
SELECT * FROM BOOKS
WHERE RELEASED_YEAR < 2001;

-- AND
SELECT * FROM BOOKS
WHERE AUTHOR_LNAME = "EGGERS"
AND RELEASED_YEAR > 2010
AND TITLE LIKE "%NOVEL%";

-- OR
SELECT * FROM BOOKS
WHERE AUTHOR_LNAME = "EGGERS"
OR RELEASED_YEAR > 2010;

-- BETWEEN
SELECT * FROM BOOKS
WHERE RELEASED_YEAR BETWEEN 2004 AND 2015 ORDER BY RELEASED_YEAR;

-- NOT BETWEEN
SELECT * FROM BOOKS
WHERE RELEASED_YEAR NOT BETWEEN 2004 AND 2015 ORDER BY RELEASED_YEAR;

-- IN
SELECT * FROM BOOKS
WHERE AUTHOR_LNAME IN("LAHIRI" , "SMITH" , "CARVER");

-- NOT IN
SELECT * FROM BOOKS
WHERE AUTHOR_LNAME NOT IN("LAHIRI" , "SMITH" , "CARVER");