
-- *** The Lost Letter ***

-- used to find id of the address to which the package was sent to
SELECT * FROM "addresses" WHERE "address" LIKE '2_F%street%'; -- 2 Finnigan Street
SELECT "id" FROM "addresses" WHERE "address" = '2 Finnigan Street';

-- used to find id of the address to which the package was from
SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue';

-- used to find package id using from_address_id and to_address_id
SELECT "id" FROM "packages" WHERE "to_address_id" = (SELECT "id" FROM "addresses" WHERE "address" = '2 Finnigan Street')
                            AND "from_address_id" = (SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue');

-- used to check whether package was picked up and dropped off and their respective timestamps
SELECT * FROM "scans" WHERE "package_id" = (SELECT "id" FROM "packages" WHERE "to_address_id" = (SELECT "id" FROM "addresses" WHERE "address" = '2 Finnigan Street')
                                                                       AND "from_address_id" = (SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue'));
-- since it has been dropped off, get the address and type of address
SELECT "address", "type" FROM "addresses" WHERE "id" = (SELECT "id" FROM "addresses" WHERE "address" = '2 Finnigan Street');


-- *** The Devious Delivery ***

-- get the content of package with no address
SELECT "contents" FROM "packages" WHERE "from_address_id" IS NULL;

-- used to check where package was picked up and dropped off and their respective timestamps
SELECT * FROM "scans" WHERE "package_id" = (SELECT "id" FROM "packages" WHERE "from_address_id" IS NULL);

-- since it has been dropped off, get the address id
SELECT "address_id" FROM "scans" WHERE "action" = 'Drop' AND "id" = 30140;

-- use the address id to find type of address
SELECT "type" FROM "addresses" WHERE "id" = (SELECT "address_id" FROM "scans" WHERE "action" = 'Drop' AND "id" = 30140);


-- *** The Forgotten Gift ***

-- used to find id of the address to which the package was from
SELECT "id" FROM "addresses" WHERE "address" = '109 Tileston Street';

-- used to find id of the address to which the package was sent to
SELECT "id" FROM "addresses" WHERE "address" = '728 Maple Place';

-- used to find the package id and content of the package
SELECT "id", "contents" FROM "packages" WHERE "from_address_id" = (SELECT "id" FROM "addresses" WHERE "address" = '109 Tileston Street')
                        AND "to_address_id" = (SELECT "id" FROM "addresses" WHERE "address" = '728 Maple Place');

-- another driver picked up the package after it has been dropped off
SELECT * FROM "scans" WHERE "package_id" = (SELECT "id" FROM "packages" WHERE "from_address_id" = (SELECT "id" FROM "addresses" WHERE "address" = '109 Tileston Street')
                        AND "to_address_id" = (SELECT "id" FROM "addresses" WHERE "address" = '728 Maple Place'));

-- used to find name of the driver
SELECT "name" FROM "drivers" WHERE "id" = 17;

