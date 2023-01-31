
use publications;
-- 1. Select everything from the table authors

select *
from authors;

/* 2. Select everything from the tables "titles", "titleauthor", "publishers"
   and "sales" (one table at a time). Look at the raw data and think about how
   these tables are related to each other. */

select *
from titles; 
select *
from titleauthor; 
select *
from publishers;
select *
from sales;

-- 3. Select the authors first and last name

select au_fname, au_lname
from authors;

-- 4. Select the publisher names

select pub_name
from publishers;

-- 5. Select the title, price and year-to-date sales of all titles

select title, price, ytd_sales
from titles;

/* 6. Select all the authors first names, but display the column with the
   name "first_name" */

select au_fname as first_name
from authors;

/* 7. Select the job id and job description of all jobs, but display the
   columns with the names "id" and "description" */

select job_id as id, job_desc as description
from jobs;

/* 8. Select all unique last names of authors (the same last name cannot appear
   more than once) */

SELECT DISTINCT au_lname
from authors;


-- 9. Select all unique title id's that were involved in a sale


SELECT DISTINCT title_id
from sales;

 -- Extra
 
select *
from authors;
select *
from jobs;
 select *
from authors, jobs;


select *
from authors
limit 10, 5;

select *
from authors
where state = 'tn';




 