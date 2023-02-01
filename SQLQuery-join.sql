-- join

use BikeStore

select * from Customers
select * from Orders


-- inner join
select first_name,last_name,email,order_id,order_date,store_id
from Customers c , Orders o
where c.customer_id = o.customer_id

select first_name,last_name,email,order_id,order_date,store_id
from Customers c join Orders o
on c.customer_id = o.customer_id


select first_name,last_name,email,order_id,order_date,store_id
from Customers c inner join Orders o
on c.customer_id = o.customer_id


select first_name,last_name,email,order_id,order_status,order_date
from Orders o, staff s 
where o.staff_id = s.staff_id


select first_name,last_name,email,order_id,order_status,order_date
from Orders o inner join staff s 
on o.staff_id = s.staff_id