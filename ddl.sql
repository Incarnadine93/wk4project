-- CREATE SALESPERSON TABLE
CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    f_name VARCHAR(50),
    l_name VARCHAR(50)
)
-- CREATE CUSTOMER TABLE
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(200)
)

-- CREATE CAR TABLE
CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(50),
    new BIT,
    price NUMERIC(10,2)
)

-- CREATE INVOICE TABLE
CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    date DATE,
    car_id INTEGER NOT NULL,
    salesperson_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (car_id) REFERENCES car(car_id)
)

-- CREATE MECHANIC TABLE
CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    nick_name VARCHAR(50),
    service_id INTEGER NOT NULL,
    FOREIGN KEY (service_id) REFERENCES service(service_id)
)

-- CREATE SERVICE TABLE
CREATE TABLE service(
    service_id SERIAL PRIMARY KEY,
    date DATE,
    type VARCHAR(100),
    cost NUMERIC(10,2),
    car_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (car_id) REFERENCES car(car_id)
)

-- adding foreign key line to :
ALTER TABLE invoice
ADD FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id);

ALTER TABLE invoice
ADD FOREIGN KEY (customer_id) REFERENCES customer(customer_id);

ALTER TABLE service
ADD FOREIGN KEY (customer_id) REFERENCES customer(customer_id);




