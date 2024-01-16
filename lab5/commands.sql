SELECT * FROM AUTHOR_BOOK_TBL;
SELECT * FROM AUTHOR_TBL;
SELECT * FROM BOOK_TBL;
SELECT * FROM COPY_TBL;
SELECT * FROM EMPLOYEE_LANGUAGE_TBL;
SELECT * FROM EMPLOYEE_TBL;
SELECT * FROM INVOICE_TBL;
SELECT * FROM LANGUAGE_TBL;
SELECT * FROM PUBLISHER_TBL;
SELECT * FROM READER_TBL;
SELECT * FROM RENTAL_TBL;

SELECT FIRST_NAME, LAST_NAME, POSTAL_CODE FROM READER_TBL
ORDER BY LAST_NAME;

SELECT * FROM READER_TBL
WHERE READER_ID = 1;

SELECT * FROM EMPLOYEE_TBL
WHERE EMPLOYEE_ID = 1;

SELECT * FROM BOOK_TBL
WHERE BOOK_ID = 1;

SELECT * FROM COPY_TBL
WHERE BOOK_ID = 1;

INSERT INTO RENTAL_TBL (RENTAL_ID, RENTAL_DATE, EMPLOYEE_ID_RENT, READER_ID, COPY_ID) VALUES (RENTAL_SEQ.nextval, CURRENT_DATE, 1, 1, 1);
INSERT INTO RENTAL_TBL (RENTAL_ID, RENTAL_DATE, EMPLOYEE_ID_RENT, READER_ID, COPY_ID) VALUES (RENTAL_SEQ.nextval, CURRENT_DATE, 1, 1, 2);

SELECT * FROM RENTAL_TBL
WHERE RENTAL_ID = 11 OR RENTAL_ID = 12;

SELECT * FROM EMPLOYEE_TBL
WHERE EMPLOYEE_ID = 2;

SELECT * FROM READER_TBL
WHERE READER_ID = 1;

SELECT * FROM RENTAL_TBL
WHERE READER_ID = 1;

UPDATE RENTAL_TBL
SET RETURN_DATE = CURRENT_DATE, EMPLOYEE_ID_RETURN = 2
WHERE RENTAL_ID = 11 OR RENTAL_ID = 12;