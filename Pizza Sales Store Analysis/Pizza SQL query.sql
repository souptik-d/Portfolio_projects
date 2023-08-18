select * from pizza_sales;  

select sum(total_price) as Total_Revenue from pizza_sales;

select (sum(total_price)/count(distinct order_id)) as avg_ord_val 
from pizza_sales;

select sum(quantity) as total_pizzas_sold from pizza_sales;

select count(distinct order_id) as total_orders_placed from pizza_sales;

select cast(cast(sum(quantity) as decimal(10,2))/cast(count(distinct order_id) as decimal (10,2)) 
as decimal (10,2)) as avg_pizzas_per_order from pizza_sales; 


-- Daily Trend
select DATENAME(DW,order_date) as order_day_name, count(distinct order_id) as total_orders
from pizza_sales
group by DATENAME(DW,order_date);

-- Hourly Trend
select DATEPART(hour,order_time) as hour_time,count(distinct order_id) as total_orders
from pizza_sales
group by DATEPART(hour,order_time)
order by DATEPART(hour,order_time);

-- Percentage of sales by pizza category
with cte as(
select pizza_category, sum(total_price) as sales
from pizza_sales
group by pizza_category)

select pizza_category, 100.0 * (sales/(select sum(total_price) as Total_Revenue from pizza_sales)) as percentage
from cte;

-- Percentage of sales by pizza size
select pizza_size, 100.0 *(sum(total_price)/(select sum(total_price) as Total_Revenue from pizza_sales)) as percentage
from pizza_sales
group by pizza_size
order by pizza_size;

--- total quantity of sales by pizza category
select pizza_category, sum(quantity) as quantity_sold
from pizza_sales
group by pizza_category;

--- Top 5 best sellers with total pizzas sold
select top 5 pizza_name, sum(quantity) as quantity_sold
from pizza_sales
group by pizza_name
order by sum(quantity) desc;

--- Top 5 worst sellers with total pizzas sold
select top 5 pizza_name, sum(quantity) as quantity_sold
from pizza_sales
group by pizza_name
order by sum(quantity) asc;











