use sakila;

#Activity 1 
select actor_id,count(film_id) as film_count from film_actor
group by actor_id
order by film_count desc
Limit 1;

#Activity 2
select  customer_id,count(rental_id) as rental_count from rental
group by customer_id
order by rental_count desc
limit 5;

#Activity 3 
select  category_id,count(film_id) as film_category_count from film_category
group by category_id;

#Activity 4
select * from staff as a
inner join address as l on 
a.address_id = l.address_id;

#Activity 5
select staff_id, sum(amount) as summed_amount from payment
where payment_date > '2005-08-01' and payment_date<'2005-08-31'
group by staff_id;

#Activity 6
select title, count(*) number_of_actors from film
inner join film_actor
on film.film_id= film_actor.film_id
group by title
order by number_of_actors desc;

#Activity 7
select * from payment as a
inner join customer as l on
a.customer_id = l.customer_id
group by first_name, last_name
order by last_name;