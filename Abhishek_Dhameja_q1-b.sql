select c.name as Category,count(f.title) as 'Number of Films' from sakila.film f, sakila.film_category fc, sakila.category c
where f.film_id=fc.film_id
and fc.category_id=c.category_id
group by name
order by c.name asc;