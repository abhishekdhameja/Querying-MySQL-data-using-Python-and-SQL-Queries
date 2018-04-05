select count(c.customer_id) as Count from customer c,
(select distinct(customer_id) from rental
where inventory_id in(
select inventory_id from inventory
where film_id in(
select film_id from film_category
where category_id=(
select category_id from category where name='Action'
)))) b
where c.customer_id=b.customer_id
and c.active=true;