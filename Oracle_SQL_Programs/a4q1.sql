select store,
sum(weekly_sales) as total_of_sales,
rank() over (order by sum(weekly_sales) desc) as sales_rank
from sales.sales
where department in (22) and extract(year from SALES_DT) = 2011
group by store
fetch first 10 rows only;