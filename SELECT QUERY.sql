use "Identity";

/*
The SELECT statement is used to select data from a database.
The data returned is stored in a result table, called the result-set.
*/

SELECT * from Users;

SELECT Name from Users;

SELECT Name,Age from Users;


/*
The SELECT DISTINCT statement is used to return only distinct (different) values.
Inside a table, a column often contains many duplicate values; 
and sometimes you only want to list the different (distinct) values.
*/

SELECT DISTINCT Age FROM Users;
SELECT DISTINCT Name,Age from Users;

SELECT COUNT(DISTINCT Age) FROM Users;
