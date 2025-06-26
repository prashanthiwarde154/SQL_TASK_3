# SQL_TASK_3

1. SELECT *
This selects all columns from the Books table.
 Example:
SELECT * FROM Books;
→ Shows: BookID, Title, Author, Genre, Year, Price for all books.

2. Select Specific Columns
You can select only the columns you need.
 Example:
SELECT Title, Author FROM Books;
→ Shows only the Title and Author of all books.

3. WHERE clause
Used to filter data based on condition.
 Example:
SELECT * FROM Books WHERE PublishedYear > 2000;
→ Shows books published after 2000.

4. LIKE clause
Finds text using pattern. % means "anything".
 Example:
SELECT * FROM Books WHERE Author LIKE '%Clear%';
→ Shows books where author's name contains "Clear".

5. BETWEEN
Finds values within a range.
 Example:
SELECT * FROM Books WHERE Price BETWEEN 300 AND 400;
→ Shows books priced between ₹300 to ₹400.

6. OR condition
Returns rows if any one condition is true.
 Example:
SELECT * FROM Books WHERE Genre = 'Self-Help' OR Genre = 'Fiction';
→ Shows books that are either Self-Help or Fiction.

7. AND condition
Returns rows only if both conditions are true.
 Example:
SELECT * FROM Books WHERE Price BETWEEN 300 AND 400 AND Genre = 'Fiction';
→ Shows books that are Fiction and price between 300–400.

8. ORDER BY
Used to sort the output.

ASC → Ascending (default), DESC → Descending

Example 1:
SELECT * FROM Books ORDER BY PublishedYear DESC;
→ Newest books come first.

Example 2:
SELECT * FROM Books ORDER BY Price ASC;
→ Cheapest books come first.

9. LIMIT
Used to restrict the number of results.
 Example:
SELECT * FROM Books ORDER BY Price ASC LIMIT 3;
→ Shows 3 cheapest books.

