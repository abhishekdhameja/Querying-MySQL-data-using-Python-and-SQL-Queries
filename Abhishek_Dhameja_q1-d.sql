select c.name as Category from sakila.film f, sakila.film_category fc, sakila.category c
where f.film_id=fc.film_id
and fc.category_id=c.category_id
group by c.name
having count(f.title)=(
select max(b.count) from(
select c.name as Category,count(f.title) as count from sakila.film f, sakila.film_category fc, sakila.category c
where f.film_id=fc.film_id
and fc.category_id=c.category_id
group by name) b);