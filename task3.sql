-- Create and use the database
create database if not exists library;
use library;

-- Create the Books table

create table Books (
    BookID int primary key,
    Title varchar(255),
    Author varchar(255),
    Genre varchar(100),
    PublishedYear int,
    Price decimal(6,2)
);

-- Insert data
insert into Books (Title, Author, Genre, PublishedYear, Price) values
('Wings of Fire', 'A.P.J. Abdul Kalam', 'Autobiography', 1999, 350.00),
('The White Tiger', 'Aravind Adiga', 'Fiction', 2008, 299.99),
('Do Epic Shit', 'Ankur Warikoo', 'Self-Help', 2021, 450.50),
('India After Gandhi', 'Ramachandra Guha', 'History', 2007, 500.00),
('Chanakya Neeti', 'Chanakya', 'Philosophy', 2005, 399.00);


-- SELECT Queries

-- 1. Select all record
select * from Books;
-- 2. Select specific columns
select Title, Author from Books;
-- 3. Select books published after 2000 using WHERE
select * from Books
where PublishedYear > 2000;
-- 4. Books by authors whose name contains "Clear"
select * from Books
where Author like '%Clear%';
-- 5. Books priced between 300 and 400 using WHERE & AND clause 
select * from Books
where Price between 300 and 400;
-- 6. Select books where genre is Self-Help or Fiction using WHERE & OR clause
select * from Books
where Genre = 'Self-Help' or Genre = 'Fiction';
-- 7. Sort books by Published Year descending using ORDER BY 
select * from Books
order by PublishedYear desc;
-- 8. Sort books by Price ascending using ORDER BY
select * from Books
order by Price asc;
-- 9. Show Record up to given limit in Ascending order
select * from Books
order by Price asc
limit 3;