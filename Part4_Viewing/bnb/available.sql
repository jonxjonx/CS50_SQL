CREATE VIEW "available" AS
SELECT "listings"."id", "property_type", "host_name", "date" FROM "availabilities"
JOIN "listings" ON "listings"."id" = "availabilities"."listing_id" WHERE "availabilities"."available" = 'TRUE';
