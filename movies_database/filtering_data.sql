select 
*
from movies
fetch first 1 row only

select 
*
from movies
fetch first row only

select 
*
from movies
fetch first 5 row only

select
*
from movies
order by movie_length desc
fetch first 5 row only

select
*
from directors
order by date_of_birth asc
fetch first 5 row only

select
*
from actors
where gender='F'
order by date_of_birth desc
fetch first 5 row only

select
*
from movies
order by movie_length desc
fetch first 5 row only
offset 5

select
*
from actors
where 
	date_of_birth between '1991-10-01' and '1995-12-31'
order by date_of_birth

select 
* from movies
where
	movie_length not between 100 and 200
order by movie_length

select 'hello' like 'hello'
select 'hello' like 'h%'
select 'hello' like '%e%'
select 'hello' like 'hell%'
select 'hello' like '%ll'

select 'hello' like '_ello'
select 'hello' like '__ll_'
select 'hello' like '%ll_'

select * from actors
where first_name like 'A%'
order by first_name

select * from actors
where first_name ilike '%Tim%'

select * from actors
where first_name like '%tim%'

select 'Hello' || 'World' as new_string
select 'Hello' || ' ' || 'World' as new_string
select concat(first_name, ' ', last_name) as actor_name from actors
select concat_ws(', ', first_name, last_name) as actor_name from actors
select concat_ws(' | ', first_name, last_name) as actor_name from actors









