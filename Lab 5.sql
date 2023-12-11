use sakila;

-- 1
-- Drop column picture
alter table staff
drop column picture;

-- 2
-- Add new person (Tammy Sanders)
insert into customer (store_id, first_name, last_name, email, address_id, active, create_date, last_update)
values (1, 'Tammy', 'Sanders', 'tammy.sanders@example.com', 1, 1, current_timestamp, current_timestamp);

-- 3
-- Get customer_id for Charlotte Hunter
select customer_id from customer
where first_name = 'Charlotte' and last_name = 'Hunter';

-- Get staff_id for Mike Hillyer
select staff_id from staff
where first_name = 'Mike' and last_name = 'Hillyer';

-- Get inventory_id and film_id for "Academy Dinosaur"
select inventory_id, film_id from inventory
where film_id = (select film_id from film where title = 'Academy Dinosaur') and store_id = 1;

-- 4
-- Check for non-active users
select * into non_active_users from customer where active = 0;

-- Delete non active users from the customer table
delete from customer where active = 0;
