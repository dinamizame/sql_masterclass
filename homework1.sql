SELECT firstname, lastname,
SUBSTRING(firstname, 1, 1) +
SUBSTRING(LastName, 1, 1) AS Initial2
FROM sql_masterclass.users
limit 10;
