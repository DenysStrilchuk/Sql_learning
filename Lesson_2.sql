use denys;
show tables;
-- 1.Вибрати усіх клієнтів, чиє ім'я має менше ніж 6 символів.
select * from client where length(FirstName) < 6;
-- 2.Вибрати львівські відділення банку.
select * from department where DepartmentCity = 'Lviv';
-- 3.Вибрати клієнтів з вищою освітою та посортувати по прізвищу.
select * from client where Education = 'high' order by LastName;
-- 4.Виконати сортування у зворотньому порядку над таблицею Заявка і вивести 5 останніх елементів.
select * from application order by idApplication desc limit 5;
-- 5.Вивести усіх клієнтів, чиє прізвище закінчується на OV чи OVA.
select * from client where LastName like '%OV' or LastName like '%OVA';
-- 6.Вивести клієнтів банку, які обслуговуються київськими відділеннями.
select c.* from client c join department d on c.Department_idDepartment = d.idDepartment where d.DepartmentCity = 'Kyiv';
-- 7.Знайти унікальні імена клієнтів.
select distinct FirstName from client;
-- 8.Вивести дані про клієнтів, які мають кредит більше ніж на 5000 гривень.
SELECT c.*
FROM client c
         JOIN application a ON c.idClient = a.Client_idClient
         JOIN department d ON c.Department_idDepartment = d.idDepartment
WHERE a.Sum > 5000 and Currency = 'Gryvnia';

-- 9.Порахувати кількість клієнтів усіх відділень та лише львівських відділень.
select count(*) as totalClients from client;
select count(*) as lvivClients from client c
                                        join department d on d.idDepartment = c.Department_idDepartment
where d.DepartmentCity = 'Lviv';
-- 10.Знайти кредити, які мають найбільшу суму для кожного клієнта окремо.
select * from client c
                  join department d on c.Department_idDepartment = d.idDepartment
                  join application a on d.idDepartment = a.Client_idClient
where CreditState = 'not returned';
-- 11. Визначити кількість заявок на крдеит для кожного клієнта.
SELECT
    c.idClient,
    COUNT(a.idApplication) AS NumberOfApplications
FROM
    client c
        LEFT JOIN application a ON c.idClient = a.Client_idClient
GROUP BY
    c.idClient;
-- 12. Визначити найбільший та найменший кредити.
select max(Sum) as maxSum from application;
select min(Sum) as minSum from application;
-- 13. Порахувати кількість кредитів для клієнтів,які мають вищу освіту.

-- 14. Вивести дані про клієнта, в якого середня сума кредитів найвища.
--
-- 15. Вивести відділення, яке видало в кредити найбільше грошей
--
-- 16. Вивести відділення, яке видало найбільший кредит.
--
-- 17. Усім клієнтам, які мають вищу освіту, встановити усі їхні кредити у розмірі 6000 грн.
--
-- 18. Усіх клієнтів київських відділень пересилити до Києва.
--
-- 19. Видалити усі кредити, які є повернені.
--
-- 20. Видалити кредити клієнтів, в яких друга літера прізвища є голосною.
--
-- 21.Знайти львівські відділення, які видали кредитів на загальну суму більше ніж 5000
--
-- 22.Знайти клієнтів, які повністю погасили кредити на суму більше ніж 5000
--
-- 23.Знайти максимальний неповернений кредит.
--
-- 24.Знайти клієнта, сума кредиту якого найменша
--
-- 25.Знайти кредити, сума яких більша за середнє значення усіх кредитів
--
-- 26. Знайти клієнтів, які є з того самого міста, що і клієнт, який взяв найбільшу кількість кредитів
--
-- 27. Місто клієнта з найбільшою кількістю кредитів




