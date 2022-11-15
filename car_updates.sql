
SELECT *
FROM invoice
UPDATE invoice
SET "date" = '2022-08-06'
WHERE invoice_id = 5

SELECT *
FROM service
UPDATE service
SET parts_id = 5
WHERE service_id = 2
UPDATE service
SET mechanic_id = 1
WHERE service_id = 1
UPDATE service
SET car_id = 2
WHERE service_id = 1




SELECT *
FROM mechanic
INSERT INTO "mechanic"(
	first_name,
	last_name
)VALUES(
	'Luke',
	'James'
);

SELECT *
FROM invoice
UPDATE invoice
SET customer_id = 4
WHERE invoice_id = 6
UPDATE invoice
SET service_id = 9
WHERE invoice_id = 6




SELECT *
FROM car
UPDATE car
SET customer_id = 3
WHERE car_id = 4

SELECT *
FROM sales
UPDATE sales
SET salesperson_id = 1
WHERE sales_id = 1
UPDATE sales
SET salesperson_id = 2
WHERE sales_id = 2
UPDATE sales 
SET salesperson_id = 2
WHERE sales_id = 5
UPDATE sales
SET car_id = 1
WHERE sales_id = 3
UPDATE sales
SET car_id = 3
WHERE sales_id = 2
UPDATE sales
SET car_id = 2
WHERE sales_id = 1

