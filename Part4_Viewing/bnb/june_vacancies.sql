CREATE VIEW "june_vacancies" AS
SELECT "listings"."id", "property_type", "host_name", COUNT("listing_id") AS "days_vacant" FROM "availabilities"
JOIN "listings" ON "listings"."id" = "availabilities"."listing_id" WHERE "date" LIKE '2023-06%' AND "available" = 'TRUE' GROUP BY "listing_id";
