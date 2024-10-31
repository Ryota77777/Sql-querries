-- Запрос 1: Вывести уникальные номера договоров из таблицы ТД
SELECT DISTINCT contract_number
FROM TD;

-- Запрос 2: Вывести таблицу ТД, только с оборудованием
SELECT *
FROM TD
WHERE service = 'Оборудование';

-- Запрос 3: Вывести все ТД, которые входят в пакет
SELECT t.contract_number, t.package_reference AS "Код ТД Пакета", t.td_code AS "Код ТД", t.service AS "Услуга"
FROM TD t
WHERE t.package_reference IS NOT NULL;

-- Запрос 4: Вывести всю таблицу ТД с E-mail абонента
SELECT t.*, e.email
FROM TD t
LEFT JOIN Email e ON t.contract_number = e.contract_number;

-- Запрос 5: Вывести только тех абонентов, у которых нет E-mail
SELECT t.contract_number, t.td_code, t.service
FROM TD t
LEFT JOIN Email e ON t.contract_number = e.contract_number
WHERE e.email IS NULL;

-- Запрос 6: Вывести таблицу ТД с действующими услугами
SELECT contract_number,
       ARRAY_AGG(td_code) AS td_codes,
       ARRAY_AGG(service) AS services
FROM TD
WHERE deleted = false
GROUP BY contract_number;

-- Пример создания временной таблицы
WITH temporary_table AS (
    SELECT contract_number, td_code, service
    FROM TD
    WHERE deleted = false
)
SELECT * FROM temporary_table;

-- Запрос с использованием CTE
WITH active_packages AS (
    SELECT contract_number, td_code, service
    FROM TD
    WHERE deleted = false
)
SELECT * 
FROM active_packages
WHERE service = 'ВЛ';
