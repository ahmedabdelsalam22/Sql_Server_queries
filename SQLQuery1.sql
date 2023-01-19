use SD


-- create table named MyFriends
create table MyFriends 
(
 friendId int primary Key,
 friendName varChar(20) not null,
 friendAge int default 23,
 BirthDate date default getDate()
)


-- --(DQL - Data Query Lang -- Diplay or print data) examples

-- display all data from 'MyFriends' table 
select * from MyFriends

select * from MyFriends where friendId = 1

-- display all data in 'friendName' Column
select friendName from MyFriends
  
-- display all data in 'friendName' Column which there friendAge is greater than 25
select friendName from MyFriends where friendAge>25

-- display all data in 'friendName' Column which there friendName != null
select * from MyFriends where friendName is not null
-- display all data in 'friendName' Column which there friendName = null
select * from MyFriends where friendName is null

-- display according to friendAge value asc
select * from MyFriends order by friendAge asc
-- display according to friendAge value desc
select * from MyFriends order by friendAge desc

-- --(DML - Data Manipulation Lang) examples

-- insert values to the columns
insert into MyFriends(friendId,friendName,friendAge) values (1 , 'ahmed' , null)

insert into MyFriends(friendId,friendName,friendAge) values (2 , 'omer' , 23)

-- insert constructor (add data to more Rows in the same query)

insert into MyFriends(friendId,friendName) values (3,'mazen'),(4,'salah'),(5,'mohamed')

-- update values in the columns
update MyFriends set friendAge = 23    --(this query will make all items age equal 23) 

update MyFriends set friendAge += 1    -- increment all 'friendAge' with '1'

-- this query will make items age equal 23 (items which its friendId = 1) 
update MyFriends set friendAge = 25 where friendId = 1





-- --(DDL - Data Definition Lang) examples

-- add Column named 'City' to 'MyFriends' Table with 'varChar(20)' data type
alter table MyFriends add City varChar(20)

-- change 'City' data type
alter table MyFriends alter column City varChar(20)

-- delete 'City' Column from table 
alter table MyFriends drop column City 

-- delete 'MyFriends' Table
drop table MyFriends

