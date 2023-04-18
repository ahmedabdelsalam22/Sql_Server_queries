use BikeStore
GO;

create table categories
(
  category_id int,
  category_name varchar(50)

  constraint category_pk primary key (category_id)
);

create table brands
(
  brand_id int,
  brand_name varchar(30)

  constraint brand_pk primary key (brand_id)
);


create table products
(
  product_id int primary key,
  product_name varchar(50) not null,
  model_year int,
  list_price decimal(18,0),
  category_id int,
  brand_id int

  constraint categories_products_fk foreign key (category_id)
  references categories(category_id),
  constraint brands_products_fk foreign key (brand_id)
  references brands (brand_id)
);


/////////////////////////////////////////

create table customers
(
  customer_id int,
  first_name varchar(20),
  last_name varchar(20),
  phone varchar(15),
  email varchar(30) not null,
  city varchar(10) not null check(city in ('Riyadh , Macca , Madina') ),
  zipcode int

  constraint customers_pk primary key (customer_id)
);

alter table customers 
add street varchar(50) not null;

alter table customers
alter column street varchar(30);

create table orders
(
order_id int identity(1,1),
customer_id int,
order_status tinyint not null,
order_date date not null,
required_date date not null,
shipped_date date,
store_id int not null,
staff_id int not null,

constraint customers_orders_fk foreign key (customer_id)
references customers(customer_id)
);

alter table orders
add constraint orders_pk primary key(order_id)


create table stores
(
  store_id int identity(1,1) primary key,
  store_name varchar(255) not null,
  phone varchar(25),
  email varchar(255),
  street varchar(255),
  city varchar(255),
  state varchar(10),
  zip_code varchar(5)
);

alter table orders
add constraint stores_orders_fk foreign key (store_id)
references stores(store_id)

create table staffs
(
  staff_id int identity(1,1) primary key,
  first_name varchar(50) not null,
  last_name varchar(50) not null,
  email varchar(255) not null unique,
  phone varchar (25),
  active tinyint not null,
  store_id int not null,
  manager_id int


  constraint stores_staffs_fk foreign key (store_id)
  references stores(store_id)
);

alter table orders 
add constraint staffs_orders_fk foreign key (staff_id)
references staffs(staff_id)