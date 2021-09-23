4. Consider sql_book.orders table. Select unique combinations of customers and employees for
orders placed between December 2nd and December 7th, both dates including. Order by
customer id and employee id.

SELECT DISTINCT customerid, employeeid FROM sql_book.orders
WHERE ORDERDATE BETWEEN '02-12-12' AND '07-12-12'
ORDER BY customerid, employeeid;