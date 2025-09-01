-- 1.Provide the list of markets in which customer Atliq Exclusive operates its business in the APAC region.--
SELECT market 
FROM dim_customer 
WHERE customer = "Atliq Exclusive" 
ORDER BY region;

-- 2.What is the percentage of unique product increase in 2021 vs. 2020? --
with tot_products as
		(SELECT count( distinct product_code) as total_products, fiscal_year as year
		FROM fact_sales_monthly 
		GROUP BY fiscal_year)
        
SELECT a.total_products as unique_products_2020,b.total_products as unique_products_2021, 
		(b.total_products - a.total_products) as new_products_introduced,
		ROUND((b.total_products - a.total_products) /a.total_products *100, 2) as pct_change
FROM tot_products as a
LEFT JOIN tot_products as b
ON a.year+1 = b.year
LIMIT 1
;

-- 3.Provide a report with all the unique product counts for each segment and sort them in descending order of product counts --
SELECT segment, count(distinct product_code) as product_count
FROM dim_product
GROUP BY segment
ORDER BY product_count DESC
;

-- 4. Follow-up: Which segment had the most increase in unique products in 2021 vs 2020? --
with tot_products as
		(SELECT count( distinct fs.product_code) as total_products, fiscal_year , segment
		FROM fact_sales_monthly as fs
        LEFT JOIN dim_product 
        ON fs.product_code = dim_product.product_code
		GROUP BY fiscal_year, segment)
SELECT a.total_products as unique_products_2020,
		b.total_products as unique_products_2021, 
        b.total_products - a.total_products as difference,
        a.segment,
	ROUND((b.total_products-a.total_products) /a.total_products *100 , 2) as pct_change
	
FROM tot_products as a
LEFT JOIN tot_products as b
ON (a.fiscal_year+1 = b.fiscal_year and a.segment = b.segment)
WHERE b.total_products is not null
ORDER BY a.fiscal_year,pct_change DESC
;

-- 5. Get the products that have the highest and lowest manufacturing costs. --
select
* 
from
(SELECT p.product_code, p.product, 
m.manufacturing_cost as Max_Min_cost
from dim_product p 
join fact_manufacturing_cost m 
on  p.product_code = m.product_code
where manufacturing_cost = (select max(manufacturing_cost) from fact_manufacturing_cost)) as tb1

UNION ALL

(SELECT p.product_code, p.product, 
m.manufacturing_cost as max_min_cost
from dim_product p 
join fact_manufacturing_cost m 
on  p.product_code = m.product_code
where manufacturing_cost = (select min(manufacturing_cost) from fact_manufacturing_cost));

-- 6. Generate a report which contains the top 5 customers who received an average high pre_invoice_discount_pct for the fiscal year 2021 and in the Indian market. --
select c.customer_code, c.customer, round(avg(fp.pre_invoice_discount_pct)*100,2) as average_discount_percentage
from dim_customer c 
join fact_pre_invoice_deductions fp
on c.customer_code = fp.customer_code
where fp.fiscal_year = 2021 and c.market='India'
group by c.customer_code, c.customer
order by average_discount_percentage desc
limit 5;

-- 7. Get the complete report of the Gross sales amount for the customer “Atliq Exclusive” for each month. --
SELECT 
		YEAR(date) as Year,
		MONTH(date) as month,
		sum(sold_quantity * gross_price) AS gross_sales_amount

FROM fact_sales_monthly as fs
INNER JOIN fact_gross_price as fp
ON fs.product_code = fp.product_code and fs.fiscal_year = fp.fiscal_year
INNER JOIN dim_customer as dc
ON fs.customer_code = dc.customer_code
WHERE customer = "Atliq Exclusive"
group by month, YEAR(date)
ORDER BY Year, month
;

-- 8. In which quarter of 2020, got the maximum total_sold_quantity? --
SELECT 
    CASE
        WHEN MONTH(date) IN (9, 10, 11) THEN 'FIRST QUARTER'
        WHEN MONTH(date) IN (12, 1, 2) THEN 'SECOND QUARTER'
        WHEN MONTH(date) IN (3, 4, 5) THEN 'THIRD QUARTER'
        WHEN MONTH(date) IN (6, 7, 8) THEN 'FOURTH QUARTER'
    END AS QUARTER,
    CONCAT(CAST(ROUND(SUM(sold_quantity) / 1000000, 2) AS CHAR), ' M') AS total_quantities_sold
FROM 
    fact_sales_monthly 
WHERE 
    fiscal_year = 2020
GROUP BY 
    QUARTER
ORDER BY 
    total_quantities_sold DESC;

-- 9. Which channel helped to bring more gross sales in the fiscal year 2021 and the percentage of contribution?  --
WITH channels as (SELECT 
						channel,
						(SUM(sold_quantity * gross_price) / 1000000) as gross_sales_mln
				FROM fact_sales_monthly as fm
				JOIN fact_gross_price as fp
				ON fm.product_code = fp.product_code
				JOIN dim_customer as dc
				ON fm.customer_code = dc.customer_code
				WHERE fm.fiscal_year = 2021
				GROUP BY channel
				ORDER BY gross_sales_mln DESC )

SELECT *,
		ROUND(gross_sales_mln * 100 / (SELECT SUM(gross_sales_mln) FROM channels) ,2) as pct_contributions
FROM channels
;

-- 10. Get the Top 3 products in each division that have a high total_sold_quantity in the fiscal_year 2021?--
WITH top_product AS (
    SELECT  
        fm.product_code,
        dp.product,
        dp.division,
        SUM(fm.sold_quantity) AS total_sold_quantity
    FROM 
        fact_sales_monthly AS fm
    JOIN 
        dim_product AS dp 
    ON 
        fm.product_code = dp.product_code
    WHERE 
        fm.fiscal_year = 2021
    GROUP BY 
        fm.product_code, dp.product, dp.division
),
ranked_product AS (
    SELECT 
        *,
        RANK() OVER (PARTITION BY division ORDER BY total_sold_quantity DESC) AS rank_order
    FROM 
        top_product
)
SELECT *
FROM 
    ranked_product 
WHERE 
    rank_order IN (1, 2, 3);







