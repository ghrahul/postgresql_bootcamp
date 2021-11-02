create table customers (
	customer_id serial primary key,
	first_name varchar(50),
	last_name varchar(50),
	email varchar(150),
	age int
);

select * from customers

insert into customers(first_name, last_name, email, age)
values ('Adnan', 'Waheed', 'a@b.com', 40);

select * from customers;

insert into customers(first_name, last_name)
values ('Adnan', 'Waheed'),
('Jhon', 'adams'),
('Linda', 'x');

insert into customers (first_name)
values
('Bill''O Sullivan')

insert into customers (first_name)
values ('Joseph') returning *;

insert into customers (first_name)
values ('Joseph') returning customer_id;

select * from customers;

update customers
set email='a@b.com'
where customer_id = 1;

update customers
set 
email='a@4.com',
age = 30
where customer_id = 1;

update customers
set 
email='a@4.com',
age = 30
where customer_id = 1
returning *;

update customers
set 
is_enable='Y';

delete from customers where customer_id=4;

delete from customers;

select * from customers;

create table t_tags(
	id serial primary key,
	tag text unique,
	update_date timestamp default now()
);

select * from t_tags;

insert into t_tags (tag) values
('Pen'),
('Pencil')

insert into t_tags (tag) 
values ('Pen')
on conflict (tag)
do
	nothing;
	
insert into t_tags (tag) 
values ('Pen')
on conflict (tag)
do
	update set
		tag = excluded.tag,
		update_date=now();
		
		
insert into t_tags (tag) 
values ('Pen')
on conflict (tag)
do
	update set
		tag = excluded.tag || '1',
		update_date=now();


select * from demo_sorting order by num nulls last;

-- if you use a column aliases in select clause then you
-- cannot use column aliases inside where clause
-- concat function takes care of null
























