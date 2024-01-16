# DATABASES LAB 5 
## 1 Open the file create.sql and execute the following commands for this file.
 - 1.1 Add the table definition as indicated in the file.
 - 1.2 Add sequence definitions for each table for which it is possible to use sequences to generate a key. Utilize the capabilities of defining sequence parameters.
 - 1.3 Save the script and then run it in SQL Developer.
 - 1.4 Describe the relationships for each table (the models are located in the "Model" tab for each table). Include screenshots for each relationship.
## 2 Open the file insert.sql and execute the following commands:
 - 2.1 Complete the insert.sql script so that primary keys are generated from the appropriate sequences.
 - 2.2 Add instructions to insert team member data into the EMPLOYEE table (use real first and last names, but provide fictitious data for the other details - personal data protection).
 - 2.3 Save the script and execute it in SQL Developer.
## 3 Create the script alter.sql and write commands to perform the following tasks:
 - 3.1 Add a rating column to the EMPLOYEE table with a value constraint between 0 and 100. 
 - 3.2 Add a ssn column to both the EMPLOYEE and READER tables with a NOT NULL constraint.
 - 3.3 Add a NOT NULL constraint to the title column in the BOOK table.
 - 3.4 Increase the surname column size to 30 characters.
## 4 Create a commands.sql script and write the following commands:
 - 4.1 Display all rows from each table.
 - 4.2 Display reader data in the following format: first name, last name, postal code; in alphabetical order by last name.
 - 4.3 Rent any two books to the same reader on the same day (current date) by one of the team members (as the lending employee). The command sequence should include operations that return the necessary information:
 - 4.3.1 Display reader data - borrowing reader's ID 
 - 4.3.2 Display employee data - lending employee's ID 
 - 4.3.3 Display book data - borrowed book ID 
 - 4.3.4 Display all copies of a given book - borrowed book's copy ID 
 - 4.3.5 Execute INSERT commands on the LOAN table for each borrowed book (return date and return employee's ID should be NULL) 
 - 4.3.6 Display the loan.
## 5 Accept the return of one of the previously borrowed books by another team member (as the returning employee). 
 - 5.1 Display employee data – employee's ID 
 - 5.2 Display reader data - reader's ID 
 - 5.3 Display loan data for the given reader – loan ID for the returned copy 
 - 5.4 Execute an UPDATE command for the loan with the given ID, changing the return date and the returning employee's ID. 
 - 5.5 Create a delete.sql script where you write commands to delete all records from each table (easiest solution: delete in reverse order of table creation).
## 6 Create a drop.sql script where you write commands to delete all tables and sequences.