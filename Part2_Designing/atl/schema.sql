CREATE TABLE "passengers" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "age" INTEGER NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "check_ins" (
    "id" INTEGER,
    "datetime" NUMERIC NOT NULL,
    "flight_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("flight_id") REFERENCES "flights"("id")
);

CREATE TABLE "airlines" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "concourse" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "flights" (
    "id" INTEGER,
    "airline_name" TEXT NOT NULL,
    "departing_from_code" TEXT NOT NULL,
    "heading_to_code" TEXT NOT NULL,
    "departure_datetime" NUMERIC NOT NULL,
    "arrival_datetime" NUMERIC NOT NULL,
    FOREIGN KEY("airline_name") REFERENCES "airlines"("name")
);
