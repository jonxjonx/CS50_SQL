SELECT "name", "per_pupil_expenditure" FROM "districts" JOIN "expenditures" ON "districts"."id" = "expenditures"."district_id"
WHERE "state" LIKE '%a%' AND "pupils" > (SELECT AVG(pupils) FROM "expenditures");
