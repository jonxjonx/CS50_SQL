CREATE TABLE "ingredients" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "price" NUMERIC NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "donuts" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "gluten_free" TEXT NOT NULL,
    "price" NUMERIC NOT NULL,
    "ingredient_id" INTEGER NOT NULL,
    PRIMARY KEY("id"),
    FOREIGN KEY("ingredient_id") REFERENCES "ingredients"("id")
);

CREATE TABLE "orders" (
    "id" INTEGER,
    "order_number" INTEGER NOT NULL,
    "donut_id" INTEGER NOT NULL,
    "customer_id" INTEGER NOT NULL,
    PRIMARY KEY("id"),
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id"),
    FOREIGN KEY("customer_id") REFERENCES "customers"("id")
);

CREATE TABLE "customers" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "history_order_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("history_order_id") REFERENCES "orders"("id")
);


