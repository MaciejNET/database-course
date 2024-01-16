-- Table definitions without foreign keys
CREATE TABLE READER_TBL
  (
    READER_ID      NUMBER(6) PRIMARY KEY,
    FIRST_NAME     VARCHAR2 (20 CHAR),
    LAST_NAME      VARCHAR2 (20 CHAR),
    STREET_NAME    VARCHAR2 (30 CHAR),
    HOUSE_NUM      VARCHAR2 (8 CHAR),
    APARTMENT_NUM  VARCHAR2 (8 CHAR),
    POSTAL_CODE    VARCHAR2 (6 CHAR),
    MAIL_TOWN      VARCHAR2 (20 CHAR)
  );

CREATE TABLE EMPLOYEE_TBL
  (
    EMPLOYEE_ID    NUMBER(6) PRIMARY KEY,
    FIRST_NAME     VARCHAR2 (20 CHAR),
    LAST_NAME      VARCHAR2 (20 CHAR),
    POSITION_TITLE VARCHAR2 (20),
    SALARY         NUMBER (8,2),
    STREET_NAME    VARCHAR2 (30 CHAR),
    HOUSE_NUM      VARCHAR2 (8 CHAR),
    APARTMENT_NUM  VARCHAR2 (8 CHAR),
    POSTAL_CODE    VARCHAR2 (6 CHAR),
    CITY           VARCHAR2 (20 CHAR),
    MOBILE_PHONE   VARCHAR2 (9 CHAR)
  );

CREATE TABLE AUTHOR_TBL
  (
    AUTHOR_ID   NUMBER(6) PRIMARY KEY,
    FIRST_NAME  VARCHAR2 (20 CHAR),
    LAST_NAME   VARCHAR2 (20 CHAR)
  );

CREATE TABLE PUBLISHER_TBL
  (
    PUBLISHER_ID    NUMBER(6) PRIMARY KEY,
    PUBLISHER_NAME  VARCHAR2 (50 CHAR),
    TAX_ID          VARCHAR2 (10 CHAR),
    STREET_NAME     VARCHAR2 (30 CHAR),
    HOUSE_NUM       VARCHAR2 (8 CHAR),
    APARTMENT_NUM   VARCHAR2 (8 CHAR),
    POSTAL_CODE     VARCHAR2 (6 CHAR),
    CITY            VARCHAR2 (20 CHAR)
  );

-- Define a table LANGUAGE with columns:
-- LANGUAGE_ID,
-- LANGUAGE_NAME with a length of 20 characters,
-- LANGUAGE_LEVEL as a number from 0 to 100

CREATE TABLE LANGUAGE_TBL
(
    LANGUAGE_ID NUMBER(6) PRIMARY KEY,
    LANGUAGE_NAME VARCHAR2(50 CHAR),
    LANGUAGE_LEVEL NUMBER CHECK ( LANGUAGE_LEVEL BETWEEN 0 AND 100)
);

--Table definitions with foreign keys

CREATE TABLE BOOK_TBL
(
    BOOK_ID                 NUMBER(6) PRIMARY KEY,
    TITLE                   VARCHAR2 (50 CHAR),
    PUBLICATION_YEAR        VARCHAR2 (4),
    PUBLISHER_ID            NUMBER(6) CONSTRAINT PUBLISHER_FK REFERENCES PUBLISHER_TBL(PUBLISHER_ID)
);

CREATE TABLE AUTHOR_BOOK_TBL
(
    BOOK_ID         NUMBER(6) CONSTRAINT BOOK_FK REFERENCES BOOK_TBL(BOOK_ID),
    AUTHOR_ID       NUMBER(6) CONSTRAINT AUTHOR_FK REFERENCES AUTHOR_TBL(AUTHOR_ID),
    AUTHOR_SHARE    NUMBER(6)
);

CREATE TABLE INVOICE_TBL
(
    INVOICE_ID              NUMBER(6) PRIMARY KEY,
    ISSUE_DATE              DATE,
    INVOICE_NUMBER          VARCHAR2 (15 CHAR),
    PUBLISHER_ID            NUMBER(6) CONSTRAINT PUBLISHER_INVOICE_FK REFERENCES PUBLISHER_TBL(PUBLISHER_ID),
    EMPLOYEE_ID             NUMBER(6) CONSTRAINT EMPLOYEE_FK REFERENCES EMPLOYEE_TBL(EMPLOYEE_ID)
);

CREATE TABLE COPY_TBL
(
    COPY_ID                 NUMBER(6) PRIMARY KEY,
    BOOK_ID                 NUMBER(6) CONSTRAINT BOOK_COPY_FK REFERENCES BOOK_TBL(BOOK_ID),
    GROSS_PRICE             NUMBER(6,2),
    VAT                     NUMBER(2,2),
    INVOICE_ID              NUMBER(6) CONSTRAINT INVOICE_FK REFERENCES INVOICE_TBL(INVOICE_ID)
);

-- Definition of the EMPLOYEE_LANGUAGE_TBL table with columns:
-- Foreign key identifier of the employee from the EMPLOYEE_TBL table,
-- Foreign key identifier of the language from the LANGUAGE_TBL table.

CREATE TABLE EMPLOYEE_LANGUAGE_TBL
(
    EMPLOYEE_ID NUMBER(6) CONSTRAINT EMPLOYEE_LANG_FK REFERENCES EMPLOYEE_TBL(EMPLOYEE_ID),
    LANGUAGE_ID NUMBER(6) CONSTRAINT LANGUAGE_FK REFERENCES LANGUAGE_TBL(LANGUAGE_ID)
);

CREATE TABLE RENTAL_TBL
(
    RENTAL_ID                    NUMBER(6) PRIMARY KEY,
    RENTAL_DATE                  DATE,
    RETURN_DATE                  DATE,
    EMPLOYEE_ID_RENT             NUMBER(6) CONSTRAINT EMPLOYEE_RENTING_FK REFERENCES EMPLOYEE_TBL(EMPLOYEE_ID),
    READER_ID                    NUMBER(6) CONSTRAINT READER_FK REFERENCES READER_TBL(READER_ID),
    COPY_ID                      NUMBER(6) CONSTRAINT COPY_FK REFERENCES COPY_TBL(COPY_ID),
    EMPLOYEE_ID_RETURN           NUMBER(6) CONSTRAINT EMPLOYEE_RETURNING_FK REFERENCES EMPLOYEE_TBL(EMPLOYEE_ID)
);

CREATE SEQUENCE READER_SEQ
START WITH 1
INCREMENT BY 1
MINVALUE 1;

CREATE SEQUENCE EMPLOYEE_SEQ
START WITH 1
INCREMENT BY 1
MINVALUE 1;

CREATE SEQUENCE AUTHOR_SEQ
START WITH 1
INCREMENT BY 1
MINVALUE 1;

CREATE SEQUENCE PUBLISHER_SEQ
START WITH 1
INCREMENT BY 1
MINVALUE 1;

CREATE SEQUENCE LANGUAGE_SEQ
START WITH 1
INCREMENT BY 1
MINVALUE 1;

CREATE SEQUENCE BOOK_SEQ
START WITH 1
INCREMENT BY 1
MINVALUE 1;

CREATE SEQUENCE INVOICE_SEQ
START WITH 1
INCREMENT BY 1
MINVALUE 1;

CREATE SEQUENCE COPY_SEQ
START WITH 1
INCREMENT BY 1
MINVALUE 1;

CREATE SEQUENCE RENTAL_SEQ
START WITH 1
INCREMENT BY 1
MINVALUE 1;
