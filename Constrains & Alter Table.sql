
CREATE TABLE PEOPLES(NAME VARCHAR(50) NOT NULL, NUMBER INT NOT NULL UNIQUE);
INSERT INTO PEOPLES (NAME , NUMBER)
VALUE ("HET" , 987654321);

INSERT INTO PEOPLES(NAME , NUMBER)
VALUE("HET" , 987654321);

USE BOOKS;
CREATE TABLE DRIVING_LICENSE (NAME VARCHAR(50) NOT NULL , AGE INT NOT NULL CHECK(AGE>=18));
INSERT INTO DRIVING_LICENSE(NAME , AGE)
VALUE("HET" , 19);
INSERT INTO DRIVING_LICENSE(NAME , AGE)
VALUE("HET" , 15);

CREATE TABLE DRIVING_LICENSE2 (NAME VARCHAR(50) NOT NULL , AGE INT NOT NULL , CONSTRAINT AGE_MUST_BE_20 CHECK(AGE>=18));
INSERT INTO DRIVING_LICENSE2(NAME , AGE)
VALUE("HET" , 19);
INSERT INTO DRIVING_LICENSE2(NAME , AGE)
VALUE("HET" , 15);

CREATE TABLE HOUSE(PURCHASED_PRICE INT NOT NULL , SELL_PRICE INT NOT NULL ,CONSTRAINT SPRICE_GT_PPRICE CHECK(SELL_PRICE >= PURCHASED_PRICE));
INSERT INTO HOUSE(PURCHASED_PRICE , SELL_PRICE)
VALUE(100 , 250);

CREATE TABLE ADDRESS(NAME VARCHAR(50)NOT NULL , ADDRESS VARCHAR(50) NOT NULL, CONSTRAINT NAME_ADDRESS UNIQUE(NAME , ADDRESS));	
INSERT INTO ADDRESS(NAME , ADDRESS)
VALUE("JOHN" , "VIVANTA");
INSERT INTO ADDRESS(NAME , ADDRESS)
VALUE("JOHN" , "NEON-SQUARE");
INSERT INTO ADDRESS(NAME , ADDRESS)
VALUE("DOe" , "NEON-SQUARE");

ALTER TABLE ADDRESS ADD COLUMN PHONE VARCHAR(15);

ALTER TABLE ADDRESS ADD COLUMN NO INT;

ALTER TABLE ADDRESS ADD COLUMN EMPLOYEE_COUNT INT NOT NULL DEFAULT 1;

ALTER TABLE ADDRESS DROP COLUMN EMPLOYEE_COUNT;

RENAME TABLE ADDRESS TO SUPPLIERS;
ALTER TABLE COMPANIES RENAME COLUMN PHONE TO PHONE_NO;

ALTER TABLE COMPANIES MODIFY NAME VARCHAR(100) NOT NULL DEFAULT "JOHN";

ALTER TABLE houses 
ADD CONSTRAINT positive_pprice CHECK (purchase_price >= 0);

ALTER TABLE houses DROP CONSTRAINT positive_pprice;