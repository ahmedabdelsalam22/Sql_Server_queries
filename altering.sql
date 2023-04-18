use Sales
go 
create table test
(
  test_id int,
  test_name varchar(50) not null,
  phone varchar(15) unique,

  constraint test_pk primary key (test_id)
);

alter table test
add address varchar(15)

alter table test
add constraint test_uq unique (address)


create table test2
(
  test2_id int,
  test2_name varchar(15) not null,
  test_id int,

  constraint test2_pk primary key (test2_id),
  constraint test_test2_fk foreign key(test_id)
  references test(test_id)
);


alter table test2 
add  address varchar(50)


alter table test2
drop column test_id



--Data Definition Lang
alter table test
add test_type varchar(15)

alter table test
drop column test_type

alter table test2
alter column test2_name varchar(5)

drop table test2

create table products
(
 product_id int not null,
 product_name varchar(20),
 model int,
 brand_id int,
);

alter table products 
add constraint products_pk primary key (product_id)

alter table products
add constraint brands_products_fk foreign key (brand_id)
references brands (brand_id)

alter table test
drop constraint test_uq

EXEC sp_rename 'test','Test';

EXEC sp_rename 'Test.test_name' , 'first_name', 'COLUMN';