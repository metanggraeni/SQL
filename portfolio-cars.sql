SELECT * FROM cars.car_dekho;
use cars;

-- READ DATA --
SELECT * FROM car_dekho;

-- Total Cars : to get a count of total records --
SELECT count(*) AS total_cars FROM car_dekho;

-- Total cars that will be available in 2023 --
SELECT count(*) AS total_cars_2023 FROM car_dekho WHERE year = 2023;

-- Total cars available in 2022, 2021, 2020 --
SELECT count(*) AS total_cars_2022 FROM car_dekho WHERE year = 2022;
SELECT count(*) AS total_cars_2021 FROM car_dekho WHERE year = 2021;
SELECT count(*) AS total_cars_2020 FROM car_dekho WHERE year = 2020;
SELECT count(*) AS total_cars_in3years FROM car_dekho WHERE year in (2020, 2021, 2022) group by year;

-- Total all cars by years --
SELECT count(*) FROM car_dekho group by year;

-- Total diesel car available in 2020 --
SELECT count(*) AS diesel_car_2020 FROM car_dekho where year = 2020 and fuel = 'Diesel';

-- Total petrol cars available in 2020 --
SELECT count(*) AS petrol_car_2020 FROM car_Dekho where year = 2020 and fuel = 'Petrol';

-- Total all fuel car (diesel, petrol, CNG) available by all year --
SELECT year, count(*) AS total_car_petrol_allyear FROM car_dekho where fuel = "Petrol" group by year;
SELECT year, count(*) AS total_car_diesel_allyear FROM car_dekho where fuel = "Diesel" group by year;
SELECT year, count(*) AS total_car_cng_allyear FROM car_dekho where fuel = "CNG" group by year;

-- Year that had more than 100 cars --
SELECT year, count(*) AS year_more_than100cars FROM car_dekho group by year having count(*)>100; 

-- Cars count details between 2015 to 2023 --
SELECT count(*) FROM car_dekho where year between 2015 and 2023;

-- Cars details between 2015 to 2023 --
SELECT * FROM car_dekho where year between 2015 and 2023;

-- END --
