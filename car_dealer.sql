CREATE TABLE "customer" (
  "customer_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  "address" VARCHAR(100),
  "email" VARCHAR(100),
  "phone_number" VARCHAR(50),
  "billing_info" VARCHAR(100)
);

CREATE TABLE "parts" (
  "parts_id" SERIAL PRIMARY KEY,
  "item_name" VARCHAR(50),
  "cost" NUMERIC(8,2)
);

CREATE TABLE "salesperson" (
  "salesperson_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  "car_id" INTEGER
);

CREATE TABLE "mechanic" (
  "mechanic_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  "car_id" INTEGER
);

CREATE TABLE "service" (
  "service_id" SERIAL PRIMARY KEY,
  "service_type" VARCHAR(50),
  "parts_id" INTEGER,
  "amount" NUMERIC(8,2),
  "date" DATE,
  "mechanic_id" INTEGER,
    FOREIGN KEY ("parts_id") REFERENCES "parts"("parts_id")
);


CREATE TABLE "car" (
  "car_id" SERIAL PRIMARY KEY,
  "customer_id" INTEGER,
  "make" VARCHAR(50),
  "model" VARCHAR(50),
  "year" INTEGER,
    FOREIGN KEY ("car_id") REFERENCES "car"("car_id")
);

CREATE TABLE "invoice" (
  "invoice_id" SERIAL PRIMARY KEY,
  "customer_id" INTEGER,
  "service_id" INTEGER,
  "total_amount" NUMERIC(8,2),
  "date" DATE DEFAULT CURRENT_DATE,
  "tax" NUMERIC(8,2),
  "sales_id" INTEGER,
    FOREIGN KEY ("customer_id") REFERENCES "customer"("customer_id")
);


CREATE TABLE "sales" (
  "sales_id" SERIAL PRIMARY KEY,
  "amount" NUMERIC(8,2),
  "date" DATE,
  "salesperson" INTEGER,
    FOREIGN KEY ("salesperson") REFERENCES "salesperson"("salesperson_id")
);

