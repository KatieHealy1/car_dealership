INSERT INTO "parts"(
	item_name,
	"cost"
)VALUES(
	'Battery',
	200
);
INSERT INTO "parts"(
	item_name,
	"cost"
)VALUES(
	'Tire',
	300
);


INSERT INTO "service"(
	service_type,
	amount
)VALUES(
	'Oil Change',
	60.00
);
INSERT INTO "service"(
	service_type,
	amount
)VALUES(
	'Tire',
	300.00
);

INSERT INTO "mechanic"(
	first_name,
	last_name
)VALUES(
	'Dave',
	'Smith'
);

INSERT INTO "invoice"(
	total_amount,
	tax,
	sales_id
)VALUES(
	34.99,
	2.50,
	1
);
INSERT INTO "invoice"(
	total_amount,
	tax,
	sales_id
)VALUES(
	300,
	2.50,
	2
);


INSERT INTO "customer"(
	first_name,
	last_name,
	address,
	email,
	phone_number,
	billing_info
)VALUES(
	'Barb',
	'Jones',
	'123 Main St',
	'bjones@email.com',
	'312-333-5321',
	'1234 5678 2345 123'
);

INSERT INTO "car"(
	make,
	model,
	"year"
)VALUES(
	'Ford',
	'Bronco',
	2020
);

INSERT INTO "sales"(
	amount
)VALUES(
	53432.00
);

INSERT INTO "salesperson"(
	first_name,
	last_name
)VALUES(
	'John',
	'Doe'
);