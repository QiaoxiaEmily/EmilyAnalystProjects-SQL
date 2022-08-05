-- Mid course projects:
USE mavenmovies;
-- 1
select first_name, last_name, email, store_id
from staff

-- 2
select store_id, count(inventory_id) 
from inventory
group by store_id

-- 3
select count(customer_id), store_id
from customer
where active=1
group by store_id

-- 4
select count(email) from customer

/*
We are interested in how diverse your film offering is as a means of understanding how likely you are to
keep customers engaged in the future. Please provide a count of unique film titles you have in inventory at
each store and then provide a count of the unique categories of films you provide.


select 
store_id, film_id, count(inventory_id)
from inventory
group by store_id, film_id

select * from inventory
select * from film_category

select count(film_id), category_id
from film_category
group by category_id
*/

select 
  store_id,
   count(distinct film_id) as unique_films
from inventory
group by store_id

select 
  count(distinct film_id), category_id
from film_category
group by category_id

select count(distinct name) from category

-- 6
 select
   MIN(replacement_cost), 
   max(replacement_cost), 
   avg(replacement_cost) 
 from film
 
 
 
-- 7
select amount from payment

select max(amount), avg(amount)
from payment
 
 -- 8
 select count(rental_id), customer_id
 from rental
 group by customer_id
 order by count(rental_id) desc
 
 