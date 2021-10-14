select store, sales_dt,
SUM(CASE WHEN department=1 THEN weekly_sales ELSE NULL END) as dep_1_sales,
SUM(CASE WHEN department=2 THEN weekly_sales ELSE NULL END) as dep_2_sales,
SUM(CASE WHEN department=3 THEN weekly_sales ELSE NULL END) as dep_3_sales,
SUM(CASE WHEN department=4 THEN weekly_sales ELSE NULL END) as dep_4_sales,
SUM(CASE WHEN department=5 THEN weekly_sales ELSE NULL END) as dep_5_sales
from sales.sales
where extract(month from SALES_DT) = 4 and extract(year from SALES_DT) = 2012
group by store, sales_dt
order by store, sales_dt
fetch first 12 rows only;