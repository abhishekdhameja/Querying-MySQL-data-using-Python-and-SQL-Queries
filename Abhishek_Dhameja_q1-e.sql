select concat(a.first_name,' ',a.last_name) as Name
 from actor a
 where a.actor_id in(
select actor_id
from film_actor
group by actor_id
having count(film_id)>1
 )
 order by Name asc;