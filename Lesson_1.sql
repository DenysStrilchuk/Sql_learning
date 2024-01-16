use denys;
show tables;
select * from cars;

select * from cars where year > 2000;
select * from cars where year < 2015;
select * from cars where year between 2008 and 2010;
select * from cars where year  not between 2008 and 2010;
select * from cars where year = price;

select * from cars where model = 'bmw' and year  < 2014;
select * from cars where model = 'audi' and year > 2014;
select * from cars limit 5;
select * from cars order by id desc limit 5;

select avg(price) as avgPrice from  cars where model = 'KIA';
select model, avg(price) as avgPrice from cars group by model;
select model, count(*) as sumAllModels from cars group by model;
select model, count(*) as modelCount from cars group by model order by modelCount limit 1;

select * from cars where substring(model, 2, 1) = 'a' and substring(model, length(model) -  1, 1) = 'a';
select * from cars where length(model) > 8;

select * from cars where price > (select avg(price) from cars);






