CREATE TABLE "salesperson" (
  "salesperson_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50)
);

CREATE TABLE "parts" (
  "parts_id" SERIAL PRIMARY KEY,
  "item_name" VARCHAR(50),
  "cost" NUMERIC(8,2)
);

CREATE TABLE "customer" (
  "customer_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  "address" VARCHAR(100),
  "email" VARCHAR(100),
  "phone_number" VARCHAR(50),
  "billing_info" VARCHAR(100)
);

CREATE TABLE "mechanic" (
  "mechanic_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50)
);

CREATE TABLE "car" (
  "car_id" SERIAL PRIMARY KEY,
  "customer_id" INTEGER,
  "make" VARCHAR(50),
  "model" VARCHAR(50),
  "year" INTEGER,
    FOREIGN KEY ("customer_id") REFERENCES "customer"("customer_id")
);

CREATE TABLE "sales" (
  "sales_id" SERIAL PRIMARY KEY,
  "amount" NUMERIC(8,2),
  "date" DATE DEFAULT CURRENT_DATE,
  "salesperson_id" INTEGER,
  "car_id" INTEGER,
    FOREIGN KEY ("salesperson_id") REFERENCES "salesperson"("salesperson_id"),
	FOREIGN KEY ("car_id") REFERENCES "car"("car_id")
);



CREATE TABLE "service" (
  "service_id" SERIAL PRIMARY KEY,
  "service_type" VARCHAR(50),
  "parts_id" INTEGER,
  "amount" NUMERIC(8,2),
  "date" DATE DEFAULT CURRENT_DATE,
  "mechanic_id" INTEGER,
  "car_id" INTEGER,
    FOREIGN KEY ("parts_id") REFERENCES "parts"("parts_id"),
	FOREIGN KEY ("mechanic_id") REFERENCES "mechanic"("mechanic_id"),
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
    FOREIGN KEY ("customer_id") REFERENCES "customer"("customer_id"),
	FOREIGN KEY ("service_id") REFERENCES "service"("service_id")
);

