-- Question 1: How many actors there with last name 'Walhberg'?
select last_name 
from actor 
where last_name like 'W__%berg';

-- Question 2: How many payments were made between $3.99 and $5.99?
select count(amount) 
from payment 
where amount between 3.99 and 5.99;

-- Question 3: What film does the store have the most of?
select film_id, count(film_id) 
from inventory 
group by film_id 
order by count(film_id) desc; 

-- Question 4: How many customers have the last name 'William'?
select count(last_name)
from customer
where last_name like 'William';

-- Question 5: What store employee sold the most rentals?
select count(rental_id)
from rental 
group by staff_id 
order by staff_id asc;

-- Question 6: How many different district names are there?
select count(distinct district)
from address;

-- Question 7: What film has the most actors?
select film_id, count(actor_id)
from film_actor 
group by film_id 
order by count(actor_id) desc;

-- Question 8: From store_id 1, how many customers have a last name ending with 'es'?
select count(last_name) 
from customer 
where store_id = 1 and last_name like '%es';

-- Question 9: How many payments amounts(4.99, 5.99, etc.)had a number of rentals above 250 for customers with ids between 380 and 430?
select amount, count(rental_id)
from payment
where customer_id between 380 and 430
group by amount 
having count(rental_id) > 250;

-- Question 10: Within the film table, how many ratings categories are there? and what rating has the most movies total?
select rating, count(rating) 
from film
group by rating 