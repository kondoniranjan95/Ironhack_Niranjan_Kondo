use sakila;

# How many copies of the film Hunchback Impossible exist in the inventory system?
select title, count(inventory_id)
from film as film
inner join inventory as inv 
on film.film_id = inv.film_id
where title = "Hunchback Impossible";

#List all films whose length is longer than the average of all the films.
select * from film 
where (
select avg(length) as avg FROM film
);

# Use subqueries to display all actors who appear in the film Alone Trip.
select first_name, last_name
from actor
where actor_id IN
(
select actor_id
from film_actor
where film_id IN 
(
select film_id
from film
where title = 'Alone Trip'
));

# Sales have been lagging among young families, and you wish to target all family movies for a promotion. 
#Identify all movies categorized as family films.
select title, description from film 
where film_id in
(
select film_id from film_category
where category_id in
(
select category_id from category
where name = "Family"
));

# Get name and email from customers from Canada using subqueries. Do the same with joins. Note that to create a join, 
#you will have to identify the correct tables with their primary keys and foreign keys, that will help you get the relevant information.
select cus.first_name, cus.last_name, cus.email 
from customer cus
inner join address a 
on (cus.address_id = a.address_id);


# Which are films starred by the most prolific actor? Most prolific actor is defined as the actor that 
#has acted in the most number of films. First you will have to find the most prolific actor and then use that actor_id to find the different films that he/she starred.
select count(film_actor.actor_id) as no_film, first_name, last_name 
from actor 
inner join film_actor 
on actor.actor_id = film_actor.actor_id
group by film_actor.actor_id ;

#Films rented by most profitable customer. You can use the customer table and payment table to find the most profitable customer ie the customer that has 
#made the largest sum of payments
select
customer_id,count(rental_id) AS no_rentals
from rental
group by customer_id
order by no_rentals desc
limit 5
;

#Customers who spent more than the average payments.




