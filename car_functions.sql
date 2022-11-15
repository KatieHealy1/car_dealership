CREATE FUNCTION add_customer(
  _first_name VARCHAR(50),
  _last_name VARCHAR(50),
  _address VARCHAR(100),
  _email VARCHAR(100),
  _phone_number VARCHAR(50),
  _billing_info VARCHAR(100)
)
RETURNS void
AS 
$MAIN$
BEGIN
	INSERT INTO customer(first_name, last_name, address, email, phone_number, billing_info)
	VALUES(_first_name, _last_name, _address, _email, _phone_number, _billing_info);
	
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_customer('Mike', 'Jones', '4532 Clark St', 'mike.jones@gmail.com', '773-256-5326', '3263 4325 4212 432');
SELECT add_customer('Nicole', 'Foy', '2626 Armitage Ave', 'email@gmail.com', '815-296-6754', '5234 4268 3214 6432');



CREATE FUNCTION add_car(
  _customer_id INTEGER,
  _make VARCHAR(50),
  _model VARCHAR(50),
  _year INTEGER
)
RETURNS void
AS 
$MAIN$
BEGIN
	INSERT INTO car(customer_id, make, model, "year")
	VALUES(_customer_id, _make, _model, _year);
	
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_car('3','Chevy','Impala', 2008);
SELECT add_car('1','Toyota','RAV 4', 2022);

CREATE FUNCTION add_salesperson(
  _first_name VARCHAR(50),
  _last_name VARCHAR(50)
)
RETURNS void
AS 
$MAIN$
BEGIN
	INSERT INTO salesperson(first_name, last_name)
	VALUES(_first_name, _last_name);
	
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_salesperson('Joan','Jones');
SELECT add_salesperson('Michael','Scott');


