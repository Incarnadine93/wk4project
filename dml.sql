-- do we need separate files? no.

-- INSERT INTO customer() VALUES 

INSERT INTO customer(
    first_name,
    last_name,
    email
) VALUES (
    'Raphael',
    'Red',
    'Muscle@tmnt.com'
), (
    'Leonardo',
    'Blue',
    'Leader@tmnt.com'
), (
    'Michaelangelo',
    'Orange',
    'Pizza@tmnt.com'
), (
    'Donatello',
    'Purple',
    'Brains@tmnt.com'
)

INSERT INTO salesperson(
    f_name,
    l_name
) VALUES (
    'Master',
    'Splinter'
), (
    'April',
    'Oneil'
), (
    'Arnold',
    'Jones'
)

INSERT INTO car(
    make, 
    model,
    new,
    price
) VALUES (
    'Toyota',
    'MR2',
    '1',
    '10000'
), (
    'Miata',
    'RX-7',
    '0',
    '15000'
), (
    'Honda',
    'S2000',
    '0',
    '20000'
), (
    'Hyundai',
    'Veloster',
    '1',
    '18000'
)

INSERT INTO mechanic(
    nick_name,
    service_id 
) VALUES (
    'Bebop',
    3
), (
    'Rocksteady',
    4
)


INSERT INTO invoice(
    date, 
    car_id,
    salesperson_id,
    customer_id
) VALUES (
    '2007-06-06',
    1,
    1,
    1
), (
    '2015-07-13',
    2,
    2,
    2
), (
    '2015-07-13',
    2,
    1,
    3
), (
    '2021-04-08',
    3,
    2,
    4
)

INSERT INTO service(
    date,
    type,
    cost,
    car_id,
    customer_id 
) VALUES (
    '2022-03-09',
    'Oil Change',
    50.00,
    1,
    1
), (
    '2021-07-26',
    'Infotainment',
    500.00,
    2,
    2
)
