select a.Category, a.count as 'Number of Films' from
(
select c.name as Category,count(f.title) as count from sakila.film f, sakila.film_category fc, sakila.category c
where f.film_id=fc.film_id
and fc.category_id=c.category_id
group by c.name) a
where a.count>=60
order by a.count desc;