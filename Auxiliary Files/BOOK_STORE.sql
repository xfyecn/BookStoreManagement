-- CREATE USERS TABLE
CREATE TABLE USERS(
    EMAIL VARCHAR2(10) PRIMARY KEY,
    PASS VARCHAR2(10) NOT NULL,
    NAME VARCHAR2(10) NOT NULL
);

-- CREATE BOOKS TABLE
CREATE TABLE BOOKS(
    ISBN VARCHAR2(13) PRIMARY KEY,
    BOOK_NAME VARCHAR2(10) NOT NULL,
    AUTHOR VARCHAR2(10) NOT NULL,
    QTY NUMBER(5) NOT NULL CHECK(QTY >= 0),
    PRICE NUMBER(5) NOT NULL CHECK(PRICE >= 0)
);

-- Insert user into Users
insert into USERS values('a@a.com','111','a');

-- Insert books
INSERT INTO BOOKS VALUES('1234567890123','BOOK1','AUTH1',10,500);
INSERT INTO BOOKS VALUES('2234567890123','BOOK2','AUTH2',10,500);
INSERT INTO BOOKS VALUES('3234567890123','BOOK3','AUTH3',10,500);
INSERT INTO BOOKS VALUES('4234567890123','BOOK4','AUTH4',10,500);
INSERT INTO BOOKS VALUES('5234567890123','BOOK5','AUTH5',10,500);
INSERT INTO BOOKS VALUES('6234567890123','BOOK6','AUTH6',10,500);

-- SEARCH BOOKS
SELECT ISBN FROM BOOKS WHERE ISBN LIKE'%1%' or BOOK_NAME LIKE '%O%' or AUTHOR LIKE '%A%';
SELECT ISBN FROM BOOKS WHERE BOOK_NAME LIKE '%O%';
SELECT ISBN FROM BOOKS WHERE AUTHOR LIKE '%A%';

-- Retrieve BOOKS
SELECT ISBN,BOOK_NAME,AUTHOR,PRICE FROM BOOKS WHERE ISBN in ('1234567890123','2234567890123') AND PRICE >= 1;



UPDATE BOOKS SET QTY = QTY-1 WHERE ISBN='1234567890123' AND QTY > 0;