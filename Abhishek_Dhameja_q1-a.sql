select f.title as Title,c.name as Category from sakila.film f, sakila.film_category fc, sakila.category c
where f.film_id=fc.film_id
and fc.category_id=c.category_id
order by f.title asc;