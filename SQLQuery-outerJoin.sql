-- outer join

use BikeStore

select first_name,last_name,email,order_id,order_status,order_date
from Customers left outer join Orders
on Customers.customer_id = Orders.customer_id


select first_name,last_name,email,order_id,order_status,order_date
from Customers right outer join Orders
on Customers.customer_id = Orders.customer_id

select first_name,last_name,email,order_id,order_status,order_date
from Customers full outer join Orders
on Customers.customer_id = Orders.customer_id