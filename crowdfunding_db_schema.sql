create table category
(
	category_id varchar(20) primary key,
	category varchar(20)
);

create table sub_category
(
	subcategory_id varchar(20) primary key,
	subcategory varchar(20)
);

create table contacts
(
	contact_id int primary key,
	first_name varchar(30),
	last_name varchar(30),
	email varchar(50)
);

create table campaign
(
	cf_id int primary key,
	contact_id int,
	company_name varchar(50),
	description varchar,
	goal int,
	pledged int,
	outcome varchar(20),
	backers int,
	country varchar(5),
	currency varchar(5),
	launched_date date,
	end_date date,
	category_id varchar(20),
	subcategory_id varchar(20),
	foreign key (contact_id) references contacts(contact_id),
	foreign key (category_id) references category(category_id),
	foreign key (subcategory_id) references sub_category(subcategory_id)
);