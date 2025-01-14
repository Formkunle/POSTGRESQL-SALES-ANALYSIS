SELECT *
FROM pizza_sales
LIMIT 5;

ALTER TABLE pizza_sales
RENAME COLUMN total_price TO total_sale;

-- 1.	Total Sales: Sum of total_sale.
SELECT ROUND(SUM(total_sale)::numeric, 4) AS "Total Sales"
FROM pizza_sales;

--2.	Total Orders: Count of unique order_id.
SELECT COUNT(DISTINCT order_id) AS "Total Order"
FROM pizza_sales;

--3.	Average Order Value (AOV): Total Sales ÷ Total Orders.
SELECT SUM(total_sale) / COUNT(DISTINCT order_id) AS "Average Order Value"
FROM pizza_sales;

--4.	Total Quantity Sold: Sum of quantity.
SELECT SUM(quantity) AS "Total Quantity Sold"
FROM pizza_sales;

--5.	Total Qunatity Sold by Pizza Size.
SELECT pizza_size, SUM(total_sale) AS "Total Sales"
FROM pizza_sales
GROUP BY pizza_size
ORDER BY "Total Sales" DESC;

--6. Total Qunatity Sold by Pizza Category
SELECT pizza_category, SUM(total_sale) AS "Total Sales"
FROM pizza_sales
GROUP BY pizza_category
ORDER BY "Total Sales" DESC;

--7. Total sale by Pizza Name.
SELECT pizza_name, SUM(total_sale) AS "Total Sales"
FROM pizza_sales
GROUP BY pizza_name
ORDER BY "Total Sales" DESC;

--8. Total order by Pizza Name
SELECT pizza_name, SUM(quantity) AS "Total Quantity Ordered"
FROM pizza_sales
GROUP BY pizza_name
ORDER BY "Total Quantity Ordered" DESC;

--9. Total Quantity Ordered by Month.
SELECT EXTRACT(MONTH FROM order_date) AS Month, SUM(quantity) AS "Total quantity Ordered"
FROM pizza_sales
GROUP BY Month
ORDER BY "Total quantity Ordered" DESC;

--10. Total Quantity Ordered by Day and Month.
SELECT EXTRACT(DAY FROM order_date) AS Day,EXTRACT (MONTH FROM order_date) AS Month, SUM(quantity) AS "Total quantity Ordered"
FROM pizza_sales
GROUP BY Day, Month
ORDER BY "Total quantity Ordered" DESC;

--11. Total Quantity order by Month and pizza_category
SELECT EXTRACT(MONTH FROM order_date) AS Month, pizza_category, SUM(quantity) AS "Total quantity Ordered"
FROM pizza_sales
GROUP BY Month, pizza_category
ORDER BY Month, pizza_category DESC;

--12. Total Quantity order by Hour.
SELECT EXTRACT(HOUR FROM order_time) AS Time,pizza_category, SUM(quantity) AS "Total quantity Ordered"
FROM pizza_sales
GROUP BY Time, pizza_category
ORDER BY "Total quantity Ordered" DESC;

--END OF THE ANALYSIS--
