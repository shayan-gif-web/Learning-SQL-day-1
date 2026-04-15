CREATE TABLE customers (
  customer_id  INTEGER,
  name         TEXT,
  city         TEXT,
  country      TEXT,
  age          INTEGER,
  signup_date  TEXT,
  plan         TEXT,
  total_spent  REAL
);
--putting values in table
INSERT INTO customers VALUES
(1,  'Ali Hassan',      'Karachi',   'Pakistan', 28, '2023-01-15', 'Pro',   4200.00),
(2,  'Sara Ahmed',      'Lahore',    'Pakistan', 34, '2023-03-22', 'Basic', 980.50),
(3,  'James Carter',    'London',    'UK',       41, '2022-11-08', 'Pro',   8750.00),
(4,  'Priya Sharma',    'Mumbai',    'India',    25, '2024-01-30', 'Basic', 320.00),
(5,  'Omar Farooq',     'Islamabad', 'Pakistan', 30, '2023-07-14', 'Pro',   6100.00),
(6,  'Liu Wei',         'Beijing',   'China',    38, '2022-09-01', 'Enterprise', 22000.00),
(7,  'Ana Souza',       'Sao Paulo', 'Brazil',   29, '2023-05-19', 'Basic', 750.00),
(8,  'Nina Petrov',     'Moscow',    'Russia',   45, '2022-12-03', 'Pro',   5400.00),
(9,  'Zain Malik',      'Lahore',    'Pakistan', 22, '2024-02-10', 'Basic', 150.00),
(10, 'Emma Wilson',     'New York',  'USA',      36, '2023-08-27', 'Enterprise', 18500.00);

SELECT * FROM customers;

SELECT name, city, total_spent FROM customers
WHERE country='Pakistan'
LIMIT 5;
-- basic select
SELECT name, plan, total_spent FROM customers;
-- filter with plan
SELECT name, city FROM customers WHERE plan='Pro';
--numeric filter
SELECT name, country, total_spent FROM customers WHERE total_spent > 5000;
-- multiple conditions
SELECT name, city, age FROM customers WHERE country='Pakistan' AND age < 30;
--alaises & limit
SELECT name, total_spent AS revenue FROM customers 
LIMIT 3;
-- business reports 
SELECT name, country, plan, total_spent AS lifetime_value 
FROM customers
WHERE total_spent > 1000 AND plan != 'Basic'
LIMIT 5;
