# POSTGRESQL-SALES-ANALYSIS
# Pizza Sales Data Analysis
This repository showcases the end-to-end analysis of pizza sales data, covering data cleaning, analysis, and visualization. The project demonstrates my proficiency in Microsoft Excel, PostgreSQL, and Power BI.

# Project Overview
## Data Cleaning  
- Cleaned raw pizza sales data using Microsoft Excel to handle missing values, remove duplicates, and ensure consistency in the dataset.
## Data Analysis 
- Utilized PostgreSQL for:
Writing SQL queries to calculate key metrics like total sales, monthly trends, and category-wise sales.
Performing advanced operations such as filtering, grouping, and aggregations.
## Data Visualization
- Designed interactive dashboards in Power BI to visualize:
Monthly sales trends.
Sales distribution by pizza categories.
Insights into top-performing items and sales performance.
# Key Files
- Pizza_Sales_Cleaning.xlsx: Contains the cleaned and pre-processed dataset.
- Pizza_Sales_Queries.sql: Includes all SQL queries used for analysis and calculations.
- Pizza_Sales_Dashboard.pdf: A Power BI dashboard exported as a PDF for visualization.
# Key Insights
- Identified high-performing pizza categories and monthly trends in sales.
- Highlighted sales opportunities through data visualization.
# Tools Used
- Microsoft Excel: Data cleaning and initial exploration.
- PostgreSQL: Data analysis and calculations.
- Power BI: Data visualization and reporting.
# How to Use
- Explore the Excel file to understand the cleaning steps applied.
- Review the SQL queries for analysis logic.
- View the PDF dashboard for visual insights.

## 1.	Total Sales: Sum of total_sale.
```POSTGRESQL
SELECT ROUND(SUM(total_sale)::numeric, 4) AS "Total Sales"
FROM pizza_sales;
This displayed the total sale of pizza to be 817860.0500


## 2.	Total Orders: Count of unique order_id.
SELECT COUNT(DISTINCT order_id) AS "Total Order"
FROM pizza_sales;
This displades the total order to be  21350.


## 3.	Average Order Value (AOV): Total Sales ÷ Total Orders.
SELECT SUM(total_sale) / COUNT(DISTINCT order_id) AS "Average Order Value"
FROM pizza_sales;

Average order value is 38.307262295081635.

## 4.	Total Quantity Sold: Sum of quantity.
SELECT SUM(quantity) AS "Total Quantity Sold"
FROM pizza_sales;

Total quantity order is 49574.

##  5.	Total Qunatity Sold by Pizza Size.
SELECT pizza_size, SUM(total_sale) AS "Total Sales"
FROM pizza_sales
GROUP BY pizza_size
ORDER BY "Total Sales" DESC;

Total Qunatity Sold by Pizza Size is
"Large"	390401.3000000091
"Medium"	249382.25
"Small"	178076.49999999843

## 6. Total Qunatity Sold by Pizza Category
SELECT pizza_category, SUM(total_sale) AS "Total Sales"
FROM pizza_sales
GROUP BY pizza_category
ORDER BY "Total Sales" DESC;

Total Qunatity Sold by Pizza Category is 
"Classic"	220053.1000000001
"Supreme"	208196.99999999822
"Chicken"	195919.5
"Veggie"	193690.45000000298

## 7. Total sale by Pizza Name.
SELECT pizza_name, SUM(total_sale) AS "Total Sales"
FROM pizza_sales
GROUP BY pizza_name
ORDER BY "Total Sales" DESC;

The best 5 Total sale pizza's name are:
"The Thai Chicken Pizza"	43434.25
"The Barbecue Chicken Pizza"	42768
"The California Chicken Pizza"	41409.5
"The Classic Deluxe Pizza"	38180.5
"The Spicy Italian Pizza"	34831.25

## 8. Total order by Pizza Name
SELECT pizza_name, SUM(quantity) AS "Total Quantity Ordered"
FROM pizza_sales
GROUP BY pizza_name
ORDER BY "Total Quantity Ordered" DESC;

The best 5 ordered pizza's  name are
"The Classic Deluxe Pizza"	2453
"The Barbecue Chicken Pizza"	2432
"The Hawaiian Pizza"	2422
"The Pepperoni Pizza"	2418
"The Thai Chicken Pizza"	2371

##  9. Total Quantity Ordered by Month.
SELECT EXTRACT(MONTH FROM order_date) AS Month, SUM(quantity) AS "Total quantity Ordered"
FROM pizza_sales
GROUP BY Month
ORDER BY "Total quantity Ordered" DESC;

The number in the first column is the Month number while the second column contain the total pizza order. You can check the SQL file for more details  (We have Month of July as the best Month of order with 4392 ordered).
7	4392
5	4328
11	4266
3	4261
1	4232
8	4168
4	4151
6	4107
2	3961
12	3935
9	3890
10	3883

##  10. Total Quantity Ordered by Day and Month.
SELECT EXTRACT(DAY FROM order_date) AS Day,EXTRACT (MONTH FROM order_date) AS Month, SUM(quantity) AS "Total quantity Ordered"
FROM pizza_sales
GROUP BY Day, Month
ORDER BY "Total quantity Ordered" DESC;

The code display the quantity order by day and month
day Month quantity order
26	11	  266
27	11	  264
15	10	  262
4	  7	    234
3	  7     213
.  .      .

##  11. Total Quantity order by Month and pizza_category
SELECT EXTRACT(MONTH FROM order_date) AS Month, pizza_category, SUM(quantity) AS "Total quantity Ordered"
FROM pizza_sales
GROUP BY Month, pizza_category
ORDER BY Month, pizza_category DESC;

1	"Veggie"	1018
1	"Supreme"	1044
1	"Classic"	1257
1	"Chicken"	913
2	"Veggie"	944

##  12. Total Quantity order by Hour.
SELECT EXTRACT(HOUR FROM order_time) AS Time,pizza_category, SUM(quantity) AS "Total quantity Ordered"
FROM pizza_sales
GROUP BY Time, pizza_category
ORDER BY "Total quantity Ordered" DESC;

12	"Classic"	2039
13	"Classic"	1931
12	"Veggie"	1637
18	"Classic"	1632
12	"Supreme"	1612
17	"Classic"	1608
--  END OF THE PROJECT--

Hi! I'm Adekunle Timothy, a passionate data analyst with expertise in using tools like Microsoft Excel, PostgreSQL, and Power BI to derive actionable insights from data. I enjoy solving business problems through data-driven solutions and creating interactive dashboards.

## My Skills
- Data Analysis: Microsoft Excel, PostgreSQL, Power BI
- Data Visualization: Interactive dashboards and reports
- Certifications: Google Junior Data Analyst Certification


Feel free to connect with me or explore my work further:

Email: adekunletimothy92@gmail.com
LinkedIn: [linkedin.com/in/your-profile](https://linkedin.com/in/timothyadekunle1992)
Portfolio: (https://github.com/Formkunle)
