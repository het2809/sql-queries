-- TO CONCAT INFORMATION
SELECT CONCAT(AUTHOR_FNAME , ' ', AUTHOR_LNAME)FROM BOOKS;

-- TO SUBSTING INFORMATION
SELECT SUBSTRING(AUTHOR_FNAME , 1 , 5) FROM BOOKS;

-- TO COMBINE FUNCTIONS
SELECT CONCAT(SUBSTRING(AUTHOR_FNAME , 1 , 5),'...')FROM BOOKS;

-- TO REPLACE INFORMATION
SELECT REPLACE("HELLO WORLD" , "H" , "E");

-- ASC/DESC ORDER LIST
SELECT * FROM BOOKS ORDER BY AUTHOR_FNAME;

-- TO REVERSE INFORMATION OF TABLE
SELECT REVERSE(AUTHOR_FNAME) FROM BOOKS;

-- KNOW LENGTH OF COLUMNS
SELECT CHAR_LENGTH(AUTHOR_FNAME) FROM BOOKS;

USE BOOKS;
-- TO MAKE ALL INFORMATION UPPERCASE
SELECT UPPER(AUTHOR_FNAME) FROM BOOKS;

-- TO MAKE ALL INFORMATION lowercase
SELECT LOWER(AUTHOR_LNAME) FROM BOOKS;

