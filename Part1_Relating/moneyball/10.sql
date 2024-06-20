SELECT "first_name", "last_name", "salary", "HR", "salaries"."year" FROM "salaries"
JOIN "performances" ON "performances"."player_id" = "salaries"."player_id" AND "performances"."year" = "salaries"."year"
JOIN "players" ON "players"."id" = "salaries"."player_id"
ORDER BY "salaries"."player_id", "salaries"."year" DESC, "performances"."HR" DESC,"salaries"."salary" DESC;

