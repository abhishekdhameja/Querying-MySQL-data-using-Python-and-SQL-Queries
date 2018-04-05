select count(customer_id) as Count from
action_view
where customer_id not in(
select customer_id from horror_view);