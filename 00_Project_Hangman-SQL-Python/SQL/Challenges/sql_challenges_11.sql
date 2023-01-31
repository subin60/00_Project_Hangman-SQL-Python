/******************************************************************************
*******************************************************************************

SQL CHALLENGES 11

*******************************************************************************
*******************************************************************************/

USE publications;

-- 1. Using LEFT JOIN: in which cities has "Is Anger the Enemy?" been sold?

SELECT 
    st.city
FROM
    sales AS s
        LEFT JOIN
    titles AS t ON s.title_id = t.title_id
        LEFT JOIN
    stores AS st ON s.stor_id = st.stor_id
WHERE
    t.title = 'Is Anger the Enemy?';



/* 2. Select all the book titles that have a link to the employee Howard Snyder 
    (he works for the publisher that has published those books). */

SELECT 
    e.fname, e.lname, t.title
FROM
    titles AS t
        LEFT JOIN
    publishers AS p ON t.pub_id = p.pub_id
        RIGHT JOIN
    employee AS e ON p.pub_id = e.pub_id
WHERE
    e.fname = 'Howard'
        AND e.lname = 'Snyder';


SELECT 
    e.fname, e.lname, t.title
FROM
    titles AS t
        LEFT JOIN
    employee AS e ON t.pub_id = e.pub_id
WHERE
    e.fname = 'Howard'
        AND e.lname = 'Snyder';

/* 3. Using the JOIN of your choice: Select the book title with highest number of 
   sales (qty) */

SELECT 
    t.title, SUM(s.qty) AS number_sales
FROM
    sales AS s
        LEFT JOIN
    titles AS t ON s.title_id = t.title_id
GROUP BY s.title_id
ORDER BY number_sales DESC
LIMIT 1




/* 4. Select all book titles and the full name of their author(s).
      
      - If a book has multiple authors, all authors must be displayed (in 
      multiple rows).
      
      - Books with no authors and authors with no books should not be displayed.
*/

SELECT 
    t.title, a.au_fname, a.au_lname
FROM
    authors AS a
        RIGHT JOIN
    titleauthor AS ta ON a.au_id = ta.au_id
        LEFT JOIN
    titles AS t ON ta.title_id = t.title_id;



/* 5. Select the full name of authors of Psychology books

   Bonus hint: if you want to prevent duplicates but allow authors with shared
   last names to be displayed, you can concatenate the first and last names
   with CONCAT(), and use the DISTINCT clause on the concatenated names. */


SELECT DISTINCT
    (CONCAT(a.au_fname, ' ', a.au_lname)), t.type
FROM
    authors AS a
        RIGHT JOIN
    titleauthor AS ta ON a.au_id = ta.au_id
        LEFT JOIN
    titles AS t ON ta.title_id = t.title_id
WHERE
    t.type = 'psychology'



/* 6. Explore the table roysched and try to grasp the meaning of each column. 
   The notes below will help:
   
   - "Royalty" means the percentage of the sale price paid to the author(s).
   
   - Sometimes, the royalty may be smaller for the first few sales (which have
     to cover the publishing costs to the publisher) but higher for the sales 
     above a certain threshold.
     
   - In the "roysched" table each title_id can appear multiple times, with
     different royalty values for each range of sales.
     
   - Select all rows for particular title_id, for example "BU1111", and explore
	 the data. */


select *
from roysched
where title_id = 'BU1111'






/* 7. Select all the book titles and the maximum royalty they can reach.
    Display only titles that are present in the roysched table. */

SELECT 
    t.title AS book_titles, MAX(r.hirange) AS maximum_royalty
FROM
    roysched AS r
        LEFT JOIN
    titles AS t ON r.title_id = t.title_id
GROUP BY r.title_id
ORDER BY r.title_id;






-- group by r.hirange

SELECT  *
FROM roysched;
-- WHERE hirange = (SELECT MIN(hirange) FROM roysched);
-- GROUP BY title_id
-- ORDER BY title_id;

SELECT 
    title_id,
    max( hirange ) AS maxrange
FROM roysched
GROUP BY title_id
ORDER BY title_id;

select *
from roysched


group by title_id, lorange, hirange, royalty
having hirange = max(hirange)

