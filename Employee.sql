create table if not exists Department (
id serial primary key,
name varchar (70) not null
);

create table if not exists Employee (
id serial primary key,
name varchar (70) not null,
age integer check (age > 0),
department_id integer NOT NULL references Department(id),
boss_id integer NOT NULL references Employee(id)
);