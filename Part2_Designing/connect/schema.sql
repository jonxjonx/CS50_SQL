CREATE TABLE "users" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "username" TEXT NOT NULL,
    "password" NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "schools" (
    "id" INTEGER,
    "name" TEXT,
    "type" TEXT,
    "location" TEXT,
    "year" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE "companies" (
    "id" INTEGER,
    "name" TEXT,
    "industry" TEXT,
    "location" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "connections_people" (
    "id" INTEGER,
    "user_id" INTEGER,
    FOREIGN KEY("user_id") REFERENCES "users"("id")
);

CREATE TABLE "connections_schools" (
    "id" INTEGER,
    "user_id" INTEGER,
    "school_id" INTEGER,
    "start_date" NUMERIC,
    "end_date" NUMERIC,
    "degree_type" TEXT,
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("school_id") REFERENCES "schools"("id")
);

CREATE TABLE "connections_companies" (
    "id" INTEGER,
    "user_id" INTEGER,
    "companies_id" INTEGER,
    "start_date" NUMERIC,
    "end_date" NUMERIC,
    "title" TEXT,
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("companies_id") REFERENCES "companies"("id")
);
