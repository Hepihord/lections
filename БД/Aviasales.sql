
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

INSERT INTO rate(rate_name, rate_cost)
VALUES
        ("Суперэконом",10000),
        ("Эконом",17500),
        ("Бюджет",20000),
        ("Стандарт",25000),
        ("Бизнес",50000);

INSERT INTO points(city)
VALUES
        ("Москва"),
        ("Новосибирск"),
        ("Санкт-Петербург"),
        ("Краснодар"),
        ("Казань"),
        ("Уфа"),
        ("Пхукет"),
        ("Велана"),
        ("Стамбул"),
        ("Дубай"),
        ("Абу-Даби"),
        ("Измир");

INSERT INTO plane(model_name)
VALUES
        ("Boeing 737"),
        ("Airbus A330-800"),
        ("Airbus A350-1000"),
        ("Boeing 777");

INSERT INTO flight(flight_number, depature_point_ID, destination_point_ID, plane_model_ID)
VALUES
        (40465,1,7,1),
        (53140,2,8,2),
        (43722,3,9,3),
        (89491,4,10,4),
        (69691,1,11,2),
        (23446,6,12,2),
        (67890,3,9,3);

INSERT INTO employees(employee_name, employee_surname, employee_middle_name)
VALUES
        ("Попов","Дмитрий","Иванович"),
        ("Осипов","Иван","Павлович"),
        ("Гусева","Алиса","Владимировна");

INSERT INTO pasports(series_p,number_p)
VALUES
        (4751,849540),
        (4778,409975),
        (4818,930232),
        (4590,168351),
        (4745,698113),
        (4452,973110),
        (4724,280628),
        (4314,126288),
        (4860,237718),
        (4047,571182);



INSERT INTO passanger(p_surname, p_name, p_middle_name, passport_ID, physical_limitations)
VALUES
        ("Щербакова","Екатерина","Александровна",1,"Нет"),
        ("Тихомирова","Виктория","Даниловна",2,"Нет"),
        ("Киселева","Анна","Максимовна",3,"Нет"),
        ("Агеева","Василиса","Дмитриевна",4,"Да"),
        ("Галкин","Руслан","Данилович",5,"Нет"),
        ("Горячев","Адам","Михайлович",6,"Нет"),
        ("Куликов","Владислав","Алексеевич",7,"Нет"),
        ("Столяров","Ярослав","Михайлович",8,"Да"),
        ("Виноградов","Михаил","Никитич",9,"Нет"),
        ("Лебедева","Вера","Андреевна",10,"Нет");

DELETE FROM passanger
WHERE physical_limitations = "Да";

UPDATE passanger
SET p_name = "Алефтина"
WHERE p_name = "Василиса";

INSERT INTO employees_flight(employee_ID, flight_ID)
VALUES
        (1,1),
        (3,1),
        (4,1),
        (2,1),
        (2,2),
        (1,3),
        (5,3),
        (6,3),
        (7,3);

INSERT INTO tickets(flight_date, purchase_date, employee_flight_ID, passanger_ID, ticket_isPaid, animals)
VALUES
        (1,"05-05-2026","05-05-2026",1,1,"Да","Нет"),
        (2,"23-09-2026","24-08-2026",2,2,"Да","Нет"),
        (3,"15-10-2026","23-09-2026",3,3,"Нет","Нет"),
        (4,"15-03-2026","09-03-2026",4,4,"Да","Нет"),
        (5,"05-05-2026","05-05-2026",5,5,"Да","НЕт"),
        (6,"04-09-2026","15-07-2026",6,6,"Да","Нет"),
        (7,"05-05-2026","04-05-2026",7,7,"Да","Нет"),
        (8,"21-08-2026","03-06-2026",8,8,"Нет","Нет"),
        (9,"15-10-2026","29-08-2026",9,9,"Да","Да"),
        (10,"23-09-2026","08-08-2026",10,10,"Да","Нет");

DROP TABLE tickets;
DROP TABLE employees_flight;
DROP TABLE employees;
DROP TABLE passanger;
DROP TABLE pasports;
DROP TABLE flight;
DROP TABLE plane;
DROP TABLE points;
DROP TABLE rate;