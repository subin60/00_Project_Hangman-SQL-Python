/*

*******************************************************************************
*******************************************************************************

SQL CHALLENGES 7

*******************************************************************************
*******************************************************************************

In the exercises below you will need to use the following clauses:
    - GROUP BY
    - HAVING
------------------------------------------------------------------------------------------------

*/

USE publications;

/*******************************************************************************
GROUP BY

https://www.w3schools.com/sql/sql_groupby.asp
*******************************************************************************/

-- 1. Find the total amount of authors for each state

SELECT 
    state, COUNT(au_id) AS total_number_authors
FROM
    authors
GROUP BY state;




/* 2. Find the total amount of authors by each state and order them in 
    descending order */

SELECT 
    state, COUNT(au_id) AS total_number_authors
FROM
    authors
GROUP BY state
ORDER BY total_number_authors DESC;




-- 3. What's the price of the most expensive title from each publisher?

SELECT 
    pub_id, MAX(price) AS price_most_expensive_title
FROM
    titles
GROUP BY pub_id;




-- 4. Find out the top 3 stores with the most sales

SELECT 
    stor_id, SUM(qty) AS sales_qty
FROM
    sales
GROUP BY stor_id
ORDER BY sales_qty DESC
LIMIT 3;


----check---
/* 5. Find the average job level for each job_id from the employees table.
    Order the jobs in ascending order by its average job level. */

SELECT 
    job_id, (min_lvl + max_lvl) / 2 AS average_job_level
FROM
    jobs
ORDER BY average_job_level;

select *
from employee 


/* 6. For each type (business, psychology…), find out how many books each
    publisher has. */

SELECT 
    pub_id, type, COUNT(title_id) AS number_books
FROM
    titles
GROUP BY pub_id , type;

---check---

/* 7. Add the average price of each publisher - book type combination from your
   previous query */

SELECT 
    pub_id,
    type,
    COUNT(title_id) AS number_books,
    avg(price) AS average_price
FROM
    titles
GROUP BY pub_id , type;


/*******************************************************************************
HAVING

https://www.w3schools.com/sql/sql_having.asp
*******************************************************************************/

/* 8. From your previous query, keep only the combinations of publisher - book
   type with an average price higher than 12 */

SELECT 
	pub_id,
    type,
    COUNT(title_id) AS number_books,
    avg(price) AS average_price
FROM
    titles
GROUP BY pub_id , type
HAVING average_price > 12;



/* 9. Order the results of your previous query by these two criteria:
      1. Count of books, descendingly
      2. Average price, descendingly */
----check---
SELECT 
   	pub_id,
    type,
    COUNT(title_id) AS number_books,
    avg(price) AS average_price
FROM
    titles
GROUP BY pub_id , type
HAVING average_price > 12
ORDER BY number_books DESC , average_price DESC;


/* 10. Some authors have a contract, while others don't - it's indicated in the
     "contract" column of the authors table.
     
     Select all the states and cities where there are 2 or more contracts 
     overall */

SELECT 
    state, city, SUM(contract) AS sum_contract
FROM
    authors
GROUP BY state , city
HAVING sum_contract >= 2;




/* 
The main difference between WHERE and HAVING is that:
    - the WHERE clause is used to specify a condition for filtering most records
    - the HAVING clause is used to specify a condition for filtering values from 
      an aggregate (such as MAX(), AVG(), COUNT() etc...)
 */

