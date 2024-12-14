drop database if exists sql_50;

create database sql_50;

use sql_50;

create table if not exists products (product_id int, low_fats enum('y', 'n'), recyclable enum('y','n'));

truncate table products;

insert into products (product_id, low_fats, recyclable) values ('0', 'y', 'n');
insert into products (product_id, low_fats, recyclable) values ('1', 'y', 'y');
insert into products (product_id, low_fats, recyclable) values ('2', 'n', 'y');
insert into products (product_id, low_fats, recyclable) values ('3', 'y', 'y');
insert into products (product_id, low_fats, recyclable) values ('4', 'n', 'n');

create table if not exists customer (id int, name varchar(25), referee_id int);

truncate table customer;

insert into customer (id, name, referee_id) values ('1', 'will', null);
insert into customer (id, name, referee_id) values ('2', 'jane', null);
insert into customer (id, name, referee_id) values ('3', 'alex', '2');
insert into customer (id, name, referee_id) values ('4', 'bill', null);
insert into customer (id, name, referee_id) values ('5', 'zack', '1');
insert into customer (id, name, referee_id) values ('6', 'mark', '2');

create table if not exists world (name varchar(255), continent varchar(255), area int, population int, gdp bigint);

truncate table world;

insert into world (name, continent, area, population, gdp) values ('afghanistan', 'asia', '652230', '25500100', '20343000000');
insert into world (name, continent, area, population, gdp) values ('albania', 'europe', '28748', '2831741', '12960000000');
insert into world (name, continent, area, population, gdp) values ('algeria', 'africa', '2381741', '37100000', '188681000000');
insert into world (name, continent, area, population, gdp) values ('andorra', 'europe', '468', '78115', '3712000000');
insert into world (name, continent, area, population, gdp) values ('angola', 'africa', '1246700', '20609294', '100990000000');

create table if not exists views (article_id int, author_id int, viewer_id int, view_date date);

truncate table views;

insert into views (article_id, author_id, viewer_id, view_date) values ('1', '3', '5', '2019-08-01');
insert into views (article_id, author_id, viewer_id, view_date) values ('1', '3', '6', '2019-08-02');
insert into views (article_id, author_id, viewer_id, view_date) values ('2', '7', '7', '2019-08-01');
insert into views (article_id, author_id, viewer_id, view_date) values ('2', '7', '6', '2019-08-02');
insert into views (article_id, author_id, viewer_id, view_date) values ('4', '7', '1', '2019-07-22');
insert into views (article_id, author_id, viewer_id, view_date) values ('3', '4', '4', '2019-07-21');
insert into views (article_id, author_id, viewer_id, view_date) values ('3', '4', '4', '2019-07-21');

create table if not exists tweets(tweet_id int, content varchar(50));

truncate table tweets;

insert into tweets (tweet_id, content) values ('1', 'let us code');
insert into tweets (tweet_id, content) values ('2', 'more than fifteen chars are here!');

create table if not exists employees (id int, name varchar(20));
create table if not exists employeeuni (id int, unique_id int);

truncate table employees;

insert into employees (id, name) values ('1', 'alice');
insert into employees (id, name) values ('7', 'bob');
insert into employees (id, name) values ('11', 'meir');
insert into employees (id, name) values ('90', 'winston');
insert into employees (id, name) values ('3', 'jonathan');

truncate table employeeuni;

insert into employeeuni (id, unique_id) values ('3', '1');
insert into employeeuni (id, unique_id) values ('11', '2');
insert into employeeuni (id, unique_id) values ('90', '3');

create table if not exists sales (sale_id int, product_id int, year int, quantity int, price int);

create table if not exists product (product_id int, product_name varchar(10));

truncate table sales;

insert into sales (sale_id, product_id, year, quantity, price) values ('1', '100', '2008', '10', '5000');

insert into sales (sale_id, product_id, year, quantity, price) values ('2', '100', '2009', '12', '5000');

insert into sales (sale_id, product_id, year, quantity, price) values ('7', '200', '2011', '15', '9000');

truncate table product;

insert into product (product_id, product_name) values ('100', 'nokia');

insert into product (product_id, product_name) values ('200', 'apple');

insert into product (product_id, product_name) values ('300', 'samsung');

create table if not exists visits(visit_id int, customer_id int);

create table if not exists transactions(transaction_id int, visit_id int, amount int);

truncate table visits;

insert into visits (visit_id, customer_id) values ('1', '23');
insert into visits (visit_id, customer_id) values ('2', '9');
insert into visits (visit_id, customer_id) values ('4', '30');
insert into visits (visit_id, customer_id) values ('5', '54');
insert into visits (visit_id, customer_id) values ('6', '96');
insert into visits (visit_id, customer_id) values ('7', '54');
insert into visits (visit_id, customer_id) values ('8', '54');

truncate table transactions;

insert into transactions (transaction_id, visit_id, amount) values ('2', '5', '310');
insert into transactions (transaction_id, visit_id, amount) values ('3', '5', '300');
insert into transactions (transaction_id, visit_id, amount) values ('9', '5', '200');
insert into transactions (transaction_id, visit_id, amount) values ('12', '1', '910');
insert into transactions (transaction_id, visit_id, amount) values ('13', '2', '970');

create table if not exists weather (id int, recorddate date, temperature int);

truncate table weather;

insert into weather (id, recorddate, temperature) values ('1', '2015-01-01', '10');
insert into weather (id, recorddate, temperature) values ('2', '2015-01-02', '25');
insert into weather (id, recorddate, temperature) values ('3', '2015-01-03', '20');
insert into weather (id, recorddate, temperature) values ('4', '2015-01-04', '30');