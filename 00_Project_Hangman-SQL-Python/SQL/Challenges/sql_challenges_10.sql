/*

*******************************************************************************
*******************************************************************************

SQL CHALLENGES 10

*******************************************************************************
*******************************************************************************


In the exercises below you will need to use the clauses you used in the
previous SQL Challenges, plus the following clauses:
    - CASE
*/

/*******************************************************************************
CASE

https://www.w3schools.com/sql/sql_case.asp
*******************************************************************************/

/* 1. Select everything from the sales table and create a new column called 
   "sales_category" with case conditions to categorise qty:
   
		qty >= 50 high sales
		20 <= qty < 50 medium sales
		qty < 20 low sales
*/

SELECT 
    *,
    CASE
        WHEN qty < 20 THEN 'low sales'
        WHEN qty >= 20 AND qty < 50 THEN 'medium sales'
        ELSE 'high sales'
    END AS sales_category
FROM
    sales;



/* 2. Adding to your answer from the previous question. Find out the total 
   amount of books sold (qty) in each sales category i.e. How many books had 
   high sales, how many had medium sales, and how many had low sales */

SELECT 
    SUM(qty) AS no_books,
    CASE
        WHEN qty < 20 THEN 'low sales'
        WHEN qty >= 20 AND qty < 50 THEN 'medium sales'
        ELSE 'high sales'
    END AS sales_category
FROM
    sales
GROUP BY sales_category
ORDER BY FIELD(sales_category,
        'high sales',
        'medium sales',
        'low sales');
 




/* 3. Adding to your answer from the previous questions: output only those 
   sales categories that have a SUM(qty) greater than 100, and order them in 
   descending order */

select sum(qty) as no_books, 
case
	when qty < 20 then 'low sales'
    when qty >= 20 and qty < 50 then 'medium sales'
    else 'high sales'
end as sales_category
from sales
group by sales_category
having no_books > 100
order by no_books desc;


/* 4. Find out the average book price, per publisher, for the following book 
    types and price categories:
		book types: business, traditional cook and psychology
		price categories: <= 5 super low, <= 10 low, <= 15 medium, > 15 high
        
    - When displaying the average prices, use ROUND() to hide decimals. */


SELECT 
    p.pub_name,
    ROUND(AVG(t.price)) AS average_book_price,
    CASE
        WHEN price <= 5 THEN 'super low'
        WHEN price <= 10 THEN 'low'
        WHEN price <= 15 THEN 'medium'
        ELSE 'high'
    END AS price_categories
FROM
    titles AS t
        LEFT JOIN
    publishers AS p ON t.pub_id = p.pub_id
WHERE
    type IN ('business' , 'trad_cook', 'psychology')
GROUP BY p.pub_name, price_categories 
ORDER BY p.pub_name









