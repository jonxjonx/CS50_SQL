WITH least_expensive_hits AS (
    SELECT "first_name", "last_name" FROM "performances"
    JOIN "salaries" ON "salaries"."player_id" = "performances"."player_id" AND "salaries"."year" = "performances"."year"
    JOIN "players" ON "players"."id" = "performances"."player_id"
    WHERE "performances"."year" = 2001 AND "H" != 0
    ORDER BY ("salaries"."salary"/"H") LIMIT 10
),
least_expensive_rbi AS (
    SELECT "first_name", "last_name" FROM "performances"
    JOIN "salaries" ON "salaries"."player_id" = "performances"."player_id" AND "salaries"."year" = "performances"."year"
    JOIN "players" ON "players"."id" = "performances"."player_id"
    WHERE "performances"."year" = 2001 AND "RBI" != 0
    ORDER BY ("salaries"."salary"/"RBI") LIMIT 10
)
SELECT * FROM least_expensive_hits
INTERSECT
SELECT * FROM least_expensive_rbi
ORDER BY "last_name";

