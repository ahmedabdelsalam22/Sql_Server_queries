use Sales

create table store
(
 store_id int ,
 store_name varchar(30),
 city varchar(20) not null,
 phonr varchar(10),

 constraint store_pk primary key(store_id)
);

create table staff
(
 staff_id int,
 first_name varchar(20) not null,
 last_name varchar(20) not null,
 sallary numeric(7,2),      
 hire_date date,
 store_id int

 constraint staff_pk primary key(staff_id)

 constraint store_staff_fk foreign key (store_id)
 references store (store_id)
);


create table orders
(
 order_id int primary key,
 order_date date,
 order_status varchar(10),
 order_type varchar(10),
 customer_id int references sales_schema.customers(customer_id)
);