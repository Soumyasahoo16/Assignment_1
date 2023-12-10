-- 1.Identify the primary key and foreign key in maven movies Db. discuss difference
use mavenmovies;
describe city; 
-- COMMAND:-1. describe <table_name> ;then check for Key column if PRI means primary key
-- 2. right click on table--> Table Inspector--> foreign key or DDL , there will be available all key data


-- List all details of actor
select * from actor;

-- List all customer information from DB. 
select * from customer;
-- or
select * from customer
union select * from customer_list;
-- or
select * from address;
-- or
select * from customer inner join address on customer.address_id=address.address_id;

-- List different countries.
select * from country;
select distinct(country) as countries from country;

-- Display all active customers. 
select * from customer;
select * from customer where active=True;
-- or 
select * from customer where active=1;
  

-- List of all rental IDs for customer with ID 1.
select rental_id as 'rental IDs' from rental where customer_id=1;

-- Display all the films whose rental duration is greater than 5 .
select * from film where rental_duration>5;

-- List the total number of films whose replacement cost is greater than $15 and less than $20. 
select * from film where replacement_cost between 15 and 20;

-- Display the count of unique first names of actors
select count(distinct(first_name)) from actor;

-- Display the first 10 records from the customer table . 
select * from customer Limit 10;

-- Display the first 3 records from the customer table whose first name starts with ‘b’.
select * from customer where first_name Like 'b%' Limit 3;

-- Display the names of the first 5 movies which are rated as ‘G’.
select title from film where rating='G' Limit 5;

-- Find all customers whose first name starts with "a".
select * from customer where first_name Like 'a%';

-- Find all customers whose first name ends with "a".
select * from customer where first_name Like '%a';

-- Display the list of first 4 cities which start and end with ‘a'
select * from city where city Like 'a%a';

-- Find all customers whose first name have "NI" in any position. 
select * from customer where first_name Like '%NI%';

-- Find all customers whose first name have 'r' in second position
select * from customer where first_name Like '_r%';

-- Find all customers whose first name starts with "a" and are at least 5 characters in length
select * from customer where length(first_name)>=5 and first_name Like 'a%' ;
-- or
select * from customer where first_name Like 'a____%';

-- Find all customers whose first name starts with "a" and ends with "o".
select * from customer where first_name Like 'a%o';

-- Get the films with pg and pg-13 rating using IN operator
select * from film where rating in ('PG-13','PG');

-- Get the films with length between 50 to 100 using between operator
select * from film  where length between 50 and 100;

-- Get the top 50 actors using limit operator. 
select * from actor Limit 50;

-- Get the distinct film ids from inventory table. 
select distinct(film_id) from inventory;

