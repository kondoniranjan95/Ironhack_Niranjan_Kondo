use sakila;

select title from sakila.film;
select * from sakila.film;
#select * from sakila.language;


# Finding how many stores the company has
select * from sakila.store;
select count(store_id) from sakila.store;

# Find out how many employees staff does the company have?
select first_name from sakila.staff;
select count(staff_id) from sakila.staff;
select first_name from sakila.staff;


select film_id, language_id from film as language;




