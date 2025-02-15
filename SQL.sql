-- DATA CLEANING
DELETE FROM RETAIL
WHERE sale_date IS NULL
or
transactions_id IS NULL
or
sale_time IS NULL
OR
customer_id IS NULL
OR
gender IS NULL
OR
age IS NULL
OR
category IS NULL
or
quantity IS NULL
or
price_per_unit IS NULL
or
cogs IS NULL
or
total_sale IS NULL;

-- TOTAL SALES WE HAVE?
SELECT COUNT(total_sale)  FROM RETAIL;

-- HOW MANY UNIQUE CUSTOMERS WE HAVE?
SELECT COUNT(DISTINCT(customer_id)) FROM retail;

-- HOW MANY CATEGORY WE HAVE
SELECT COUNT(DISTINCT(category)) 
FROM RETAIL;

-- DATA ANALYSIS AND KEY PROBLEM AND ANSWERS
-- Q1 write a sql query to retrieve all the columns form sales made on'2022-11-05'

SELECT *  FROM RETAIL 
WHERE sale_date = '2022-11-05';

-- Q2 write a sql query to retrive all transactions where category is 'clothing' and quantity is more than 4 in the month of november

SELECT * FROM RETAIL
WHERE category= 'Clothing'
AND 
quantiy > 2
AND
sale_date between 2022-11-01 and 2022-11-30;

-- Q3 write a sql query to calculate the total sale (total_sale) for each category

SELECT category, SUM(total_sale) as net_sale
FROM RETAIL
GROUP BY category;

-- O4 Write a sql query to find the average age of customers who bought from beauty category

SELECT ROUND(AVG(age)) as avg_age  FROM RETAIL
WHERE category='beauty';

-- Q5 Write an sql query to find all the transactions where total_sale is greater than 1000

SELECT * FROM RETAIL
WHERE total_sale > 1000

-- Q6 Find all the transactions(transaction_id)  made by each gender in each category
SELECT category, gender,
COUNT(*) AS tans_id  FROM RETAIL
group by category,gender
ORDER BY 1;

-- Q7 Write a sql query to calculate the average sale of each month, find out the best selling month
select 
YEAR(sale_date),MONTH(sale_date),avg(total_sale) from retail
group by sale_date
order by sale_date;
 
 -- END OF PROJECT




