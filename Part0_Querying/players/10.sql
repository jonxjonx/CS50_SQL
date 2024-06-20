SELECT "first_name", "last_name", "weight", ROUND(AVG("weight"),2) AS "Avg Weight" FROM "players" WHERE "first_name" = 'Joe' ORDER BY "first_name", "last_name";
