-- Q1 Total Revenue
select sum(amount - discount) as total_revenue
from sales;

-- Q2 Revenue by City
select city, sum(amount - discount) as total_revenue
from sales
group by city;

-- Q3 Top 3 Customers
select customer, sum(amount - discount) as total_spending
from sales
group by customer
order by total_spending desc
limit 3;

-- Q4 Revenue by Product
select product, sum(amount - discount) as total_revenue
from sales
group by product;

-- Q5 Total Discount Given
select sum(discount) as total_discount
from sales;