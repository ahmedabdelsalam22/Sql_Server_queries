use "Identity";

/*
The WHERE clause is used to filter records.
It is used to extract only those records that fulfill a specified condition.

Note: The WHERE clause is not only used in SELECT statements, it is also used in UPDATE, DELETE, etc.!
*/

/*
Operators in The WHERE Clause
*/
SELECT Age from Users
WHERE Age>20;


SELECT * from Users
WHERE Job = 'developer';

/*
The AND operator displays a record if all the conditions separated by AND are TRUE.
The OR operator displays a record if any of the conditions separated by OR is TRUE.
*/

SELECT * from Users
WHERE Age>20 AND Address='Giza';

SELECT * from Users
WHERE Age>20 OR Address='Giza';


SELECT * from Users
WHERE NOT Age>20;


SELECT * from Users
WHERE Age>20 AND (Address='Giza' OR Address='Cairo');


SELECT * from Users
WHERE NOT Age>20 AND NOT Address='Beni seuf';
