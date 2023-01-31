/*

*******************************************************************************
*******************************************************************************

SQL CHALLENGES 4

*******************************************************************************
*******************************************************************************

In the exercises below you will need to use the following clauses/operators:
	- SELECT FROM
    - AS
	- DISTINCT
	- WHERE
	- AND / OR / NOT
	- ORDER BY
	- LIMIT
    - MIN(), MAX()
    - COUNT(), AVG(), SUM()

In SQL we can have many databases, they will show up in the schemas list
We must first define which database we will be working with. */

USE publications;

-- 1. From how many different states are our authors?

select count(distinct state)
from authors;



-- 2. How many publishers are based in the USA?

select count(pub_id)
from publishers
where country = 'USA';



-- 3. What's the average quantity of titles sold per sale by store 7131?

select avg(qty)
from sales
where stor_id = 7131;



-- 4. When was the employee with the highest level hired?

select hire_date
from employee
order by job_lvl desc
limit 1;




-- 5. What's the average price of psychology books?

select avg(price)
from titles
where type = 'psychology'


-- 6. Which category of books has had more year-to-date sales, "business" or
-- "popular_comp"? You can write two queries to answer this question.

-- business

select sum(ytd_sales)
from titles
where type = 'business';


-- popular_comp

select sum(ytd_sales)
from titles
where type = 'popular_comp';


-- 7. What's the title and the price of the most expensive book?

select title, price
from titles
order by price desc
limit 1;



-- 8. What's the price of the most expensive psychology book?

select price 
from titles
where type = 'psychology'
order by price desc
limit 1;



-- 9. How many authors live in either San Jose or Salt Lake City

select count(au_id)
from authors
where city = 'San Jose' or city = 'Salt Lake City'


