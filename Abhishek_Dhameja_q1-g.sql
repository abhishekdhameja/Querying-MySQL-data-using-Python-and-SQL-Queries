select count(customer_id) as Count from(
select distinct(customer_id) from rental
where inventory_id in(
select inventory_id from inventory
where film_id in(
select film_id from film_category
where category_id=(
select category_id from category where name='Action'
)))) t1
where customer_id not in(
select distinct(customer_id) from rental
where inventory_id in(
select inventory_id from inventory
where film_id in(
select film_id from film_category
where category_id=(
select category_id from category where name='Horror'
))));