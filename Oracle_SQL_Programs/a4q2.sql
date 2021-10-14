select store,sales_dt,Weekly_sales, Prior_Week_Sales, Prior_Year_Sales from(
select store,sales_dt,sum(weekly_sales) as Weekly_sales,
lag(sum(weekly_sales),1) over (partition by store order by store) as
Prior_Week_Sales,
lag(sum(weekly_sales),52) over (partition by store order by store) as
Prior_Year_Sales
from sales.sales
group by store, sales_dt
order by store,sales_dt)
where extract(month from SALES_DT) = 4 and extract(year from SALES_DT) = 2012
fetch first 12 rows only;