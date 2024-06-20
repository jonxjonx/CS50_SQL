CREATE VIEW "frequently_reviewed" AS
SELECT "listings"."id", "property_type", "host_name", COUNT("reviews"."listing_id") AS "reviews" FROM "reviews"
JOIN "listings" ON "listings"."id" = "reviews"."listing_id" GROUP BY "listing_id" ORDER BY "reviews" DESC, "property_type", "host_name" LIMIT 100;
