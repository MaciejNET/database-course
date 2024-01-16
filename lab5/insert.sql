-- Insert statements for READER_TBL
INSERT INTO READER_TBL (READER_ID, FIRST_NAME, LAST_NAME, STREET_NAME, HOUSE_NUM, APARTMENT_NUM, POSTAL_CODE, MAIL_TOWN) VALUES (READER_SEQ.nextval, 'John', 'Doe', 'Liberty Street', '123', '1', '12345', 'Booktown');
INSERT INTO READER_TBL (READER_ID, FIRST_NAME, LAST_NAME, STREET_NAME, HOUSE_NUM, APARTMENT_NUM, POSTAL_CODE, MAIL_TOWN) VALUES (READER_SEQ.nextval, 'Jane', 'Smith', 'Freedom Road', '234', '2', '23456', 'Readville');
INSERT INTO READER_TBL (READER_ID, FIRST_NAME, LAST_NAME, STREET_NAME, HOUSE_NUM, APARTMENT_NUM, POSTAL_CODE, MAIL_TOWN) VALUES (READER_SEQ.nextval, 'Emily', 'Johnson', 'Book Blvd', '345', '3', '34567', 'Pagecity');
INSERT INTO READER_TBL (READER_ID, FIRST_NAME, LAST_NAME, STREET_NAME, HOUSE_NUM, APARTMENT_NUM, POSTAL_CODE, MAIL_TOWN) VALUES (READER_SEQ.nextval, 'Michael', 'Williams', 'Novel Avenue', '456', '4', '45678', 'Literatureland');
INSERT INTO READER_TBL (READER_ID, FIRST_NAME, LAST_NAME, STREET_NAME, HOUSE_NUM, APARTMENT_NUM, POSTAL_CODE, MAIL_TOWN) VALUES (READER_SEQ.nextval, 'Rachel', 'Brown', 'Printers Lane', '567', '5', '56789', 'Bookburg');

-- Insert statements for EMPLOYEE_TBL
INSERT INTO EMPLOYEE_TBL (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, POSITION_TITLE, SALARY, STREET_NAME, HOUSE_NUM, APARTMENT_NUM, POSTAL_CODE, CITY, MOBILE_PHONE) VALUES (EMPLOYEE_SEQ.nextval, 'Adam', 'Scott', 'Librarian', 3000.00, 'Archive Avenue', '12', '101', '67890', 'Library City', '123456789');
INSERT INTO EMPLOYEE_TBL (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, POSITION_TITLE, SALARY, STREET_NAME, HOUSE_NUM, APARTMENT_NUM, POSTAL_CODE, CITY, MOBILE_PHONE) VALUES (EMPLOYEE_SEQ.nextval, 'Susan', 'Taylor', 'Assistant', 2500.00, 'Catalog Street', '23', '202', '78901', 'Bibliopolis', '234567890');
INSERT INTO EMPLOYEE_TBL (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, POSITION_TITLE, SALARY, STREET_NAME, HOUSE_NUM, APARTMENT_NUM, POSTAL_CODE, CITY, MOBILE_PHONE) VALUES (EMPLOYEE_SEQ.nextval, 'Robert', 'Miller', 'Archivist', 2700.00, 'Index Isle', '34', '303', '89012', 'Tome Town', '345678901');
INSERT INTO EMPLOYEE_TBL (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, POSITION_TITLE, SALARY, STREET_NAME, HOUSE_NUM, APARTMENT_NUM, POSTAL_CODE, CITY, MOBILE_PHONE) VALUES (EMPLOYEE_SEQ.nextval, 'Emily', 'Jones', 'Cataloger', 2800.00, 'Dewey Drive', '45', '404', '90123', 'Bookville', '456789012');
INSERT INTO EMPLOYEE_TBL (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, POSITION_TITLE, SALARY, STREET_NAME, HOUSE_NUM, APARTMENT_NUM, POSTAL_CODE, CITY, MOBILE_PHONE) VALUES (EMPLOYEE_SEQ.nextval, 'Michael', 'Williams', 'Reference Librarian', 3200.00, 'Knowledge Lane', '56', '505', '01234', 'Research City', '567890123');
INSERT INTO EMPLOYEE_TBL (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, POSITION_TITLE, SALARY, STREET_NAME, HOUSE_NUM, APARTMENT_NUM, POSTAL_CODE, CITY, MOBILE_PHONE) VALUES (EMPLOYEE_SEQ.nextval, 'Jessica', 'Martin', 'Library Technician', 2400.00, 'Shelf Street', '67', '606', '12345', 'Bookwormburg', '678901234');


-- Insert statements for AUTHOR_TBL
INSERT INTO AUTHOR_TBL (AUTHOR_ID, FIRST_NAME, LAST_NAME) VALUES (AUTHOR_SEQ.nextval, 'William', 'Shakespeare');
INSERT INTO AUTHOR_TBL (AUTHOR_ID, FIRST_NAME, LAST_NAME) VALUES (AUTHOR_SEQ.nextval, 'Agatha', 'Christie');
INSERT INTO AUTHOR_TBL (AUTHOR_ID, FIRST_NAME, LAST_NAME) VALUES (AUTHOR_SEQ.nextval, 'J.K.', 'Rowling');
INSERT INTO AUTHOR_TBL (AUTHOR_ID, FIRST_NAME, LAST_NAME) VALUES (AUTHOR_SEQ.nextval, 'Stephen', 'King');
INSERT INTO AUTHOR_TBL (AUTHOR_ID, FIRST_NAME, LAST_NAME) VALUES (AUTHOR_SEQ.nextval, 'Mark', 'Twain');

-- Insert statements for PUBLISHER_TBL
INSERT INTO PUBLISHER_TBL (PUBLISHER_ID, PUBLISHER_NAME, TAX_ID, STREET_NAME, HOUSE_NUM, APARTMENT_NUM, POSTAL_CODE, CITY) VALUES (PUBLISHER_SEQ.nextval, 'Penguin Books', 'ABC1234567', 'Publisher Path', '1', 'A', '90123', 'Printtown');
INSERT INTO PUBLISHER_TBL (PUBLISHER_ID, PUBLISHER_NAME, TAX_ID, STREET_NAME, HOUSE_NUM, APARTMENT_NUM, POSTAL_CODE, CITY) VALUES (PUBLISHER_SEQ.nextval, 'HarperCollins', 'DEF1234567', 'Editorial Road', '2', 'B', '01234', 'Bookcity');
INSERT INTO PUBLISHER_TBL (PUBLISHER_ID, PUBLISHER_NAME, TAX_ID, STREET_NAME, HOUSE_NUM, APARTMENT_NUM, POSTAL_CODE, CITY) VALUES (PUBLISHER_SEQ.nextval, 'Simon und Schuster', 'GHI1234567', 'Manuscript Blvd', '3', 'C', '12345', 'Novelville');

-- Insert statements for LANGUAGE_TBL
INSERT INTO LANGUAGE_TBL (LANGUAGE_ID, LANGUAGE_NAME, LANGUAGE_LEVEL) VALUES (LANGUAGE_SEQ.nextval, 'Polish', 100);
INSERT INTO LANGUAGE_TBL (LANGUAGE_ID, LANGUAGE_NAME, LANGUAGE_LEVEL) VALUES (LANGUAGE_SEQ.nextval, 'English', 100);
INSERT INTO LANGUAGE_TBL (LANGUAGE_ID, LANGUAGE_NAME, LANGUAGE_LEVEL) VALUES (LANGUAGE_SEQ.nextval, 'Russian', 100);
INSERT INTO LANGUAGE_TBL (LANGUAGE_ID, LANGUAGE_NAME, LANGUAGE_LEVEL) VALUES (LANGUAGE_SEQ.nextval, 'German', 100);

-- Further insert statements would continue in a similar fashion for BOOK_TBL, INVOICE_TBL, COPY_TBL, RENTAL_TBL, EMPLOYEE_LANGUAGE_TBL, and AUTHOR_BOOK_TBL,
-- but due to the complex relationships and the need to ensure foreign key constraints are met, these would be based on the existing IDs from the sequences.
-- For example, BOOK_TBL would need PUBLISHER_IDs that have already been inserted, and AUTHOR_BOOK_TBL would require both BOOK_IDs and AUTHOR_IDs.

INSERT INTO BOOK_TBL (BOOK_ID, TITLE, PUBLICATION_YEAR, PUBLISHER_ID) VALUES (BOOK_SEQ.nextval, 'Mystery of the Ancients', '2021', 1);
INSERT INTO BOOK_TBL (BOOK_ID, TITLE, PUBLICATION_YEAR, PUBLISHER_ID) VALUES (BOOK_SEQ.nextval, 'The Last Stand', '2019', 1);
INSERT INTO BOOK_TBL (BOOK_ID, TITLE, PUBLICATION_YEAR, PUBLISHER_ID) VALUES (BOOK_SEQ.nextval, 'A Glance at the Stars', '2018', 2);
INSERT INTO BOOK_TBL (BOOK_ID, TITLE, PUBLICATION_YEAR, PUBLISHER_ID) VALUES (BOOK_SEQ.nextval, 'Tides of Time', '2020', 2);
INSERT INTO BOOK_TBL (BOOK_ID, TITLE, PUBLICATION_YEAR, PUBLISHER_ID) VALUES (BOOK_SEQ.nextval, 'Beyond the Horizon', '2022', 3);
INSERT INTO BOOK_TBL (BOOK_ID, TITLE, PUBLICATION_YEAR, PUBLISHER_ID) VALUES (BOOK_SEQ.nextval, 'Cryptic Paradigms', '2017', 3);
INSERT INTO BOOK_TBL (BOOK_ID, TITLE, PUBLICATION_YEAR, PUBLISHER_ID) VALUES (BOOK_SEQ.nextval, 'Shadows in the Mist', '2021', 1);
INSERT INTO BOOK_TBL (BOOK_ID, TITLE, PUBLICATION_YEAR, PUBLISHER_ID) VALUES (BOOK_SEQ.nextval, 'The Forgotten Element', '2022', 2);
INSERT INTO BOOK_TBL (BOOK_ID, TITLE, PUBLICATION_YEAR, PUBLISHER_ID) VALUES (BOOK_SEQ.nextval, 'Chronicles of the Brave', '2018', 3);
INSERT INTO BOOK_TBL (BOOK_ID, TITLE, PUBLICATION_YEAR, PUBLISHER_ID) VALUES (BOOK_SEQ.nextval, 'Echoes of the Past', '2019', 1);

INSERT INTO INVOICE_TBL (INVOICE_ID, ISSUE_DATE, INVOICE_NUMBER, PUBLISHER_ID, EMPLOYEE_ID) VALUES (INVOICE_SEQ.nextval, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'INV001', 1, 1);
INSERT INTO INVOICE_TBL (INVOICE_ID, ISSUE_DATE, INVOICE_NUMBER, PUBLISHER_ID, EMPLOYEE_ID) VALUES (INVOICE_SEQ.nextval, TO_DATE('2023-01-20', 'YYYY-MM-DD'), 'INV002', 1, 2);
INSERT INTO INVOICE_TBL (INVOICE_ID, ISSUE_DATE, INVOICE_NUMBER, PUBLISHER_ID, EMPLOYEE_ID) VALUES (INVOICE_SEQ.nextval, TO_DATE('2023-02-05', 'YYYY-MM-DD'), 'INV003', 2, 1);
INSERT INTO INVOICE_TBL (INVOICE_ID, ISSUE_DATE, INVOICE_NUMBER, PUBLISHER_ID, EMPLOYEE_ID) VALUES (INVOICE_SEQ.nextval, TO_DATE('2023-02-11', 'YYYY-MM-DD'), 'INV004', 2, 3);
INSERT INTO INVOICE_TBL (INVOICE_ID, ISSUE_DATE, INVOICE_NUMBER, PUBLISHER_ID, EMPLOYEE_ID) VALUES (INVOICE_SEQ.nextval, TO_DATE('2023-03-01', 'YYYY-MM-DD'), 'INV005', 3, 1);
INSERT INTO INVOICE_TBL (INVOICE_ID, ISSUE_DATE, INVOICE_NUMBER, PUBLISHER_ID, EMPLOYEE_ID) VALUES (INVOICE_SEQ.nextval, TO_DATE('2023-03-15', 'YYYY-MM-DD'), 'INV006', 3, 2);
INSERT INTO INVOICE_TBL (INVOICE_ID, ISSUE_DATE, INVOICE_NUMBER, PUBLISHER_ID, EMPLOYEE_ID) VALUES (INVOICE_SEQ.nextval, TO_DATE('2023-04-10', 'YYYY-MM-DD'), 'INV007', 1, 3);
INSERT INTO INVOICE_TBL (INVOICE_ID, ISSUE_DATE, INVOICE_NUMBER, PUBLISHER_ID, EMPLOYEE_ID) VALUES (INVOICE_SEQ.nextval, TO_DATE('2023-04-17', 'YYYY-MM-DD'), 'INV008', 2, 1);
INSERT INTO INVOICE_TBL (INVOICE_ID, ISSUE_DATE, INVOICE_NUMBER, PUBLISHER_ID, EMPLOYEE_ID) VALUES (INVOICE_SEQ.nextval, TO_DATE('2023-05-05', 'YYYY-MM-DD'), 'INV009', 3, 2);
INSERT INTO INVOICE_TBL (INVOICE_ID, ISSUE_DATE, INVOICE_NUMBER, PUBLISHER_ID, EMPLOYEE_ID) VALUES (INVOICE_SEQ.nextval, TO_DATE('2023-05-20', 'YYYY-MM-DD'), 'INV010', 1, 3);

INSERT INTO COPY_TBL (COPY_ID, BOOK_ID, GROSS_PRICE, VAT, INVOICE_ID) VALUES (COPY_SEQ.nextval, 1, 49.99, 0.05, 1);
INSERT INTO COPY_TBL (COPY_ID, BOOK_ID, GROSS_PRICE, VAT, INVOICE_ID) VALUES (COPY_SEQ.nextval, 1, 49.99, 0.05, 2);
INSERT INTO COPY_TBL (COPY_ID, BOOK_ID, GROSS_PRICE, VAT, INVOICE_ID) VALUES (COPY_SEQ.nextval, 2, 29.99, 0.05, 3);
INSERT INTO COPY_TBL (COPY_ID, BOOK_ID, GROSS_PRICE, VAT, INVOICE_ID) VALUES (COPY_SEQ.nextval, 2, 29.99, 0.05, 4);
INSERT INTO COPY_TBL (COPY_ID, BOOK_ID, GROSS_PRICE, VAT, INVOICE_ID) VALUES (COPY_SEQ.nextval, 3, 39.99, 0.05, 5);
INSERT INTO COPY_TBL (COPY_ID, BOOK_ID, GROSS_PRICE, VAT, INVOICE_ID) VALUES (COPY_SEQ.nextval, 3, 39.99, 0.05, 6);
INSERT INTO COPY_TBL (COPY_ID, BOOK_ID, GROSS_PRICE, VAT, INVOICE_ID) VALUES (COPY_SEQ.nextval, 4, 44.99, 0.05, 7);
INSERT INTO COPY_TBL (COPY_ID, BOOK_ID, GROSS_PRICE, VAT, INVOICE_ID) VALUES (COPY_SEQ.nextval, 4, 44.99, 0.05, 8);
INSERT INTO COPY_TBL (COPY_ID, BOOK_ID, GROSS_PRICE, VAT, INVOICE_ID) VALUES (COPY_SEQ.nextval, 5, 24.99, 0.05, 9);
INSERT INTO COPY_TBL (COPY_ID, BOOK_ID, GROSS_PRICE, VAT, INVOICE_ID) VALUES (COPY_SEQ.nextval, 5, 24.99, 0.05, 10);
INSERT INTO COPY_TBL (COPY_ID, BOOK_ID, GROSS_PRICE, VAT, INVOICE_ID) VALUES (COPY_SEQ.nextval, 6, 59.99, 0.05, 1);
INSERT INTO COPY_TBL (COPY_ID, BOOK_ID, GROSS_PRICE, VAT, INVOICE_ID) VALUES (COPY_SEQ.nextval, 6, 59.99, 0.05, 2);
INSERT INTO COPY_TBL (COPY_ID, BOOK_ID, GROSS_PRICE, VAT, INVOICE_ID) VALUES (COPY_SEQ.nextval, 7, 34.99, 0.05, 3);
INSERT INTO COPY_TBL (COPY_ID, BOOK_ID, GROSS_PRICE, VAT, INVOICE_ID) VALUES (COPY_SEQ.nextval, 7, 34.99, 0.05, 4);
INSERT INTO COPY_TBL (COPY_ID, BOOK_ID, GROSS_PRICE, VAT, INVOICE_ID) VALUES (COPY_SEQ.nextval, 8, 49.99, 0.05, 5);
INSERT INTO COPY_TBL (COPY_ID, BOOK_ID, GROSS_PRICE, VAT, INVOICE_ID) VALUES (COPY_SEQ.nextval, 8, 49.99, 0.05, 6);
INSERT INTO COPY_TBL (COPY_ID, BOOK_ID, GROSS_PRICE, VAT, INVOICE_ID) VALUES (COPY_SEQ.nextval, 9, 54.99, 0.05, 7);
INSERT INTO COPY_TBL (COPY_ID, BOOK_ID, GROSS_PRICE, VAT, INVOICE_ID) VALUES (COPY_SEQ.nextval, 9, 54.99, 0.05, 8);
INSERT INTO COPY_TBL (COPY_ID, BOOK_ID, GROSS_PRICE, VAT, INVOICE_ID) VALUES (COPY_SEQ.nextval, 10, 29.99, 0.05, 9);
INSERT INTO COPY_TBL (COPY_ID, BOOK_ID, GROSS_PRICE, VAT, INVOICE_ID) VALUES (COPY_SEQ.nextval, 10, 29.99, 0.05, 10);

INSERT INTO RENTAL_TBL (RENTAL_ID, RENTAL_DATE, RETURN_DATE, EMPLOYEE_ID_RENT, READER_ID, COPY_ID, EMPLOYEE_ID_RETURN)
VALUES (RENTAL_SEQ.nextval, TO_DATE('2023-07-01', 'YYYY-MM-DD'), TO_DATE('2023-07-15', 'YYYY-MM-DD'), 1, 1, 1, 2);

INSERT INTO RENTAL_TBL (RENTAL_ID, RENTAL_DATE, RETURN_DATE, EMPLOYEE_ID_RENT, READER_ID, COPY_ID, EMPLOYEE_ID_RETURN)
VALUES (RENTAL_SEQ.nextval, TO_DATE('2023-07-02', 'YYYY-MM-DD'), TO_DATE('2023-07-16', 'YYYY-MM-DD'), 2, 2, 2, 3);

INSERT INTO RENTAL_TBL (RENTAL_ID, RENTAL_DATE, RETURN_DATE, EMPLOYEE_ID_RENT, READER_ID, COPY_ID, EMPLOYEE_ID_RETURN)
VALUES (RENTAL_SEQ.nextval, TO_DATE('2023-07-03', 'YYYY-MM-DD'), TO_DATE('2023-07-17', 'YYYY-MM-DD'), 3, 3, 3, 1);

INSERT INTO RENTAL_TBL (RENTAL_ID, RENTAL_DATE, RETURN_DATE, EMPLOYEE_ID_RENT, READER_ID, COPY_ID, EMPLOYEE_ID_RETURN)
VALUES (RENTAL_SEQ.nextval, TO_DATE('2023-07-04', 'YYYY-MM-DD'), TO_DATE('2023-07-18', 'YYYY-MM-DD'), 1, 4, 4, 2);

INSERT INTO RENTAL_TBL (RENTAL_ID, RENTAL_DATE, RETURN_DATE, EMPLOYEE_ID_RENT, READER_ID, COPY_ID, EMPLOYEE_ID_RETURN)
VALUES (RENTAL_SEQ.nextval, TO_DATE('2023-07-05', 'YYYY-MM-DD'), TO_DATE('2023-07-19', 'YYYY-MM-DD'), 2, 5, 5, 3);

INSERT INTO RENTAL_TBL (RENTAL_ID, RENTAL_DATE, RETURN_DATE, EMPLOYEE_ID_RENT, READER_ID, COPY_ID, EMPLOYEE_ID_RETURN)
VALUES (RENTAL_SEQ.nextval, TO_DATE('2023-07-06', 'YYYY-MM-DD'), TO_DATE('2023-07-20', 'YYYY-MM-DD'), 3, 1, 6, 1);

INSERT INTO RENTAL_TBL (RENTAL_ID, RENTAL_DATE, RETURN_DATE, EMPLOYEE_ID_RENT, READER_ID, COPY_ID, EMPLOYEE_ID_RETURN)
VALUES (RENTAL_SEQ.nextval, TO_DATE('2023-07-07', 'YYYY-MM-DD'), TO_DATE('2023-07-21', 'YYYY-MM-DD'), 1, 2, 7, 2);

INSERT INTO RENTAL_TBL (RENTAL_ID, RENTAL_DATE, RETURN_DATE, EMPLOYEE_ID_RENT, READER_ID, COPY_ID, EMPLOYEE_ID_RETURN)
VALUES (RENTAL_SEQ.nextval, TO_DATE('2023-07-08', 'YYYY-MM-DD'), TO_DATE('2023-07-22', 'YYYY-MM-DD'), 2, 3, 8, 3);

INSERT INTO RENTAL_TBL (RENTAL_ID, RENTAL_DATE, RETURN_DATE, EMPLOYEE_ID_RENT, READER_ID, COPY_ID, EMPLOYEE_ID_RETURN)
VALUES (RENTAL_SEQ.nextval, TO_DATE('2023-07-09', 'YYYY-MM-DD'), TO_DATE('2023-07-23', 'YYYY-MM-DD'), 3, 4, 9, 1);

INSERT INTO RENTAL_TBL (RENTAL_ID, RENTAL_DATE, RETURN_DATE, EMPLOYEE_ID_RENT, READER_ID, COPY_ID, EMPLOYEE_ID_RETURN)
VALUES (RENTAL_SEQ.nextval, TO_DATE('2023-07-10', 'YYYY-MM-DD'), TO_DATE('2023-07-24', 'YYYY-MM-DD'), 1, 5, 10, 2);

INSERT INTO AUTHOR_BOOK_TBL (BOOK_ID, AUTHOR_ID, AUTHOR_SHARE) VALUES (1, 1, 100);
INSERT INTO AUTHOR_BOOK_TBL (BOOK_ID, AUTHOR_ID, AUTHOR_SHARE) VALUES (2, 2, 100);
INSERT INTO AUTHOR_BOOK_TBL (BOOK_ID, AUTHOR_ID, AUTHOR_SHARE) VALUES (3, 3, 100);
INSERT INTO AUTHOR_BOOK_TBL (BOOK_ID, AUTHOR_ID, AUTHOR_SHARE) VALUES (4, 4, 100);
INSERT INTO AUTHOR_BOOK_TBL (BOOK_ID, AUTHOR_ID, AUTHOR_SHARE) VALUES (5, 5, 100);
INSERT INTO AUTHOR_BOOK_TBL (BOOK_ID, AUTHOR_ID, AUTHOR_SHARE) VALUES (6, 1, 100);
INSERT INTO AUTHOR_BOOK_TBL (BOOK_ID, AUTHOR_ID, AUTHOR_SHARE) VALUES (7, 2, 100);
INSERT INTO AUTHOR_BOOK_TBL (BOOK_ID, AUTHOR_ID, AUTHOR_SHARE) VALUES (8, 3, 100);
INSERT INTO AUTHOR_BOOK_TBL (BOOK_ID, AUTHOR_ID, AUTHOR_SHARE) VALUES (9, 4, 100);
INSERT INTO AUTHOR_BOOK_TBL (BOOK_ID, AUTHOR_ID, AUTHOR_SHARE) VALUES (10, 4, 50);
INSERT INTO AUTHOR_BOOK_TBL (BOOK_ID, AUTHOR_ID, AUTHOR_SHARE) VALUES (10, 5, 50);
