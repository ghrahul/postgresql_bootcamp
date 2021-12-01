create domain positive_numeric int not null check (value >0 )

create table sample (
	sample_id serial primary key,
	value_num positive_numeric
)

insert into sample (value_num) values(10);

select * from sample

insert into sample (value_num) values(-10);

create domain use_postal_code text
check (
	value ~'\d{5}$'
	or value ~'^\D{5}-\d{4}$'
)

create table addresses
(
	address_id serial primary key,
	postal_code use_postal_code
)

insert into addresses (postal_code) values ('10000')

create type address as (
	city varchar(50),
	country varchar(20)
)

create table companies (
	comp_id serial primary key,
	address address
	
)

insert into companies (address) values (row('london', 'uk'))
insert into companies (address) values (row('new york', 'usa'))

select * from companies
select (address).country from companies

-- select * from companies where (address).country == 'usa' #check

create type currency as enum ('usd', 'eur', 'gbp')
select 'usd'::currency

alter type currency add value 'chf' after 'eur'

create table stocks
(
	stock_id serial primary key,
	stock_currency currency
)

insert into stocks (stock_currency) values ('usd')

select * from stocks

insert into stocks (stock_currency) values ('usd2')

alter type currency rename to a

-- rename, change schema, add attribute



























