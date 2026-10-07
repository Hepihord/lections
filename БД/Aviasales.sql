
CREATE TABLE rate(
	ID_rate SERIAL PRIMARY KEY,
	rate_name VARCHAR(30) NOT NULL UNIQUE,
	rate_cost INT NOT NULL UNIQUE CHECK(rate_cost > 0)
);

CREATE TABLE points(
	ID_point SERIAL PRIMARY KEY,
	city VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE plane(
	ID_plane SERIAL PRIMARY KEY,
	model_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE flight(
	ID_flight SERIAL PRIMARY KEY,
	flight_number INT NOT NULL UNIQUE CHECK(flight_number > 0 ),
	depature_point_ID INT NOT NULL,
	FOREIGN KEY (depature_point_ID) REFERENCES points(ID_point),
	destination_point_ID INT NOT NULL,
	FOREIGN KEY (destination_point_ID) REFERENCES points(ID_point),
	plane_model_ID INT NOT NULL,
	FOREIGN KEY (plane_model_ID) REFERENCES plane(ID_plane)
);

CREATE TABLE employees(
	ID_employee SERIAL PRIMARY KEY,
	employee_name VARCHAR(30) NOT NULL,
	employee_surname VARCHAR(30) NOT NULL,
	employee_middle_name VARCHAR(30)
);

CREATE TABLE pasports(
	ID_pasport SERIAL PRIMARY KEY,
	series_p INT NOT NULL CHECK(series_p > 0 AND LENGTH(series_p::TEXT) = 4),
	number_p INT NOT NULL CHECK(number_p > 0 AND LENGTH(number_p::TEXT) = 6),
	UNIQUE(series_p,number_p)
);

CREATE TABLE passanger(
	ID_passanger SERIAL PRIMARY KEY,
	p_surname VARCHAR(30) NOT NULL,
	P_name VARCHAR(30) NOT NULL,
	p_middle_name VARCHAR(30),
	pasport_ID INT NOT NULL UNIQUE,
	FOREIGN KEY (pasport_ID) REFERENCES pasports(ID_pasport),
	physical_limitations BOOL
);

CREATE TABLE employees_flight(
	employee_ID INT NOT NULL, 
	FOREIGN KEY (employee_ID) REFERENCES employees(ID_employee),
	flight_ID INT NOT NULL, 
	FOREIGN KEY (flight_ID) REFERENCES flight(ID_flight),
	deal_ID INT NOT NULL UNIQUE,
	PRIMARY KEY(employee_ID,flight_ID)
);

CREATE TABLE tickets(
	ID_ticket SERIAL PRIMARY KEY,
	flight_date DATE NOT NULL CHECK(flight_date > CURRENT_DATE),
	purchase_date DATE NOT NULL CHECK(purchase_date <= CURRENT_DATE),
	employee_flight_ID INT NOT NULL,
	FOREIGN KEY (employee_flight_ID) REFERENCES employees_flight(deal_ID),
	passanger_ID INT NOT NULL UNIQUE,
	FOREIGN KEY (passanger_ID) REFERENCES passanger(ID_passanger),
	ticket_isPaid BOOL,
	animals BOOL NOT NULL
);

--------------------------------------------------------------------------------------------------------
SELECT * FROM plane;
INSERT INTO plane(model_name)
VALUES
	('Airbus A310'),
	('Boeing 737'),
	('Гавнолёт');

SELECT * FROM pasports;
INSERT INTO pasports(series_p,number_p)
VALUES
	('4623','005038');

--------------------------------------------------------------------------------------------------------

DROP TABLE tickets;
DROP TABLE employees_flight;
DROP TABLE employees;
DROP TABLE passanger;
DROP TABLE pasports;
DROP TABLE flight;
DROP TABLE plane;
DROP TABLE points;
DROP TABLE rate;