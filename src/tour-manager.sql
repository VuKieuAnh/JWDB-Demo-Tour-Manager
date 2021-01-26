create database TravelService;
use TravelService;
create table City
(
    city_id int auto_increment primary key ,
    city_name nvarchar(255) not null
);
create table Customer
(
    customer_id int auto_increment primary key ,
    name nvarchar(255) not null,
    id_number int not null ,
    birth_year int
);
alter table Customer add column city_id int null ;
create table TourOrder (
                           order_id int auto_increment primary key ,
                           tour_id int not null,
                           customer_id int not null ,
                           status nvarchar(255) null
);
create table Tour
(
    tour_id int auto_increment primary key ,
    tour_code varchar(255) not null ,
    type_id int not null,
    price double not null ,
    start_date date not null ,
    end_date date not null
);
create table TourType
(
    tour_type_id int primary key auto_increment,
    type_code varchar(255),
    type_name varchar(255)
);
create table TouristLocation
(
    tourist_location_id int auto_increment primary key ,
    location_name nvarchar(255) not null ,
    average_price double not null ,
    city_id nvarchar(255) not null,
    description nvarchar(500) null
);
create table TourLocationDetail
(
    location_detail_id  int primary key auto_increment,
    tour_id  int not null ,
    tourist_location_id int not null ,
    foreign key (tour_id) references Tour(tour_id),
    foreign key (tourist_location_id) references  TouristLocation(tourist_location_id)
);
alter table Customer add foreign key (city_id) references City(city_id);
alter table TourOrder add foreign key (customer_id) references Customer(customer_id);
alter table TourOrder add foreign key (tour_id) references Tour(tour_id);
alter table Tour add foreign key (type_id) references TourType(tour_type_id);
alter table TouristLocation modify city_id int not null;
alter table TouristLocation add foreign key (city_id) references City(city_id);

# thêm dữ liệu

INSERT INTO TravelService.City (city_id, city_name) VALUES (1, 'Ha Noi');
INSERT INTO TravelService.City (city_id, city_name) VALUES (2, 'Ho Chi Minh');
INSERT INTO TravelService.City (city_id, city_name) VALUES (3, 'Vinh');
INSERT INTO TravelService.City (city_id, city_name) VALUES (4, 'Da Nang');
INSERT INTO TravelService.City (city_id, city_name) VALUES (5, 'Hue');
INSERT INTO TravelService.Customer (customer_id, name, id_number, birth_year, city_id) VALUES (1, 'Dung', 2000000, 2000, 1);
INSERT INTO TravelService.Customer (customer_id, name, id_number, birth_year, city_id) VALUES (2, 'Dung1', 2000000, 2000, 2);
INSERT INTO TravelService.Customer (customer_id, name, id_number, birth_year, city_id) VALUES (3, 'Dung2', 2000000, 2000, 3);
INSERT INTO TravelService.Customer (customer_id, name, id_number, birth_year, city_id) VALUES (4, 'Dung3', 2000000, 2000, 4);
INSERT INTO TravelService.Customer (customer_id, name, id_number, birth_year, city_id) VALUES (5, 'Dung5', 2000000, 2000, 5);
INSERT INTO TravelService.Customer (customer_id, name, id_number, birth_year, city_id) VALUES (6, 'Dung6', 2000000, 2000, 5);
INSERT INTO TravelService.Customer (customer_id, name, id_number, birth_year, city_id) VALUES (7, 'Dung7', 2000000, 2000, 2);
INSERT INTO TravelService.Customer (customer_id, name, id_number, birth_year, city_id) VALUES (8, 'Dung8', 2000000, 2000, 3);
INSERT INTO TravelService.Customer (customer_id, name, id_number, birth_year, city_id) VALUES (9, 'Dung9', 2000000, 2000, 1);
INSERT INTO TravelService.Customer (customer_id, name, id_number, birth_year, city_id) VALUES (10, 'Dung10', 2000000, 2000, 4);
INSERT INTO TravelService.Tour (tour_id, tour_code, type_id, price, start_date, end_date) VALUES (1, 'T1', 1, 2121, '2020-03-01', '2020-03-20');
INSERT INTO TravelService.Tour (tour_id, tour_code, type_id, price, start_date, end_date) VALUES (2, 'T2', 2, 21211, '2020-03-21', '2020-05-20');
INSERT INTO TravelService.Tour (tour_id, tour_code, type_id, price, start_date, end_date) VALUES (3, 'T3', 1, 2121, '2020-03-01', '2020-06-20');
INSERT INTO TravelService.Tour (tour_id, tour_code, type_id, price, start_date, end_date) VALUES (4, 'T4', 1, 2121, '2020-03-11', '2020-08-20');
INSERT INTO TravelService.Tour (tour_id, tour_code, type_id, price, start_date, end_date) VALUES (5, 'T5', 1, 2121, '2020-03-01', '2021-03-20');
INSERT INTO TravelService.Tour (tour_id, tour_code, type_id, price, start_date, end_date) VALUES (6, 'T6', 2, 21121, '2020-01-01', '2022-03-20');
INSERT INTO TravelService.Tour (tour_id, tour_code, type_id, price, start_date, end_date) VALUES (7, 'T7', 2, 21121, '2020-01-01', '2020-04-29');
INSERT INTO TravelService.Tour (tour_id, tour_code, type_id, price, start_date, end_date) VALUES (8, 'T8', 2, 21121, '2020-01-01', '2020-03-20');
INSERT INTO TravelService.Tour (tour_id, tour_code, type_id, price, start_date, end_date) VALUES (9, 'T9', 2, 21121, '2019-03-01', '2020-04-30');
INSERT INTO TravelService.Tour (tour_id, tour_code, type_id, price, start_date, end_date) VALUES (10, 'T10', 1, 2121, '2020-03-01', '2020-03-20');
INSERT INTO TravelService.TourLocationDetail (location_detail_id, tour_id, tourist_location_id) VALUES (1, 1, 1);
INSERT INTO TravelService.TourLocationDetail (location_detail_id, tour_id, tourist_location_id) VALUES (2, 2, 2);
INSERT INTO TravelService.TourLocationDetail (location_detail_id, tour_id, tourist_location_id) VALUES (3, 3, 3);
INSERT INTO TravelService.TourLocationDetail (location_detail_id, tour_id, tourist_location_id) VALUES (4, 4, 4);
INSERT INTO TravelService.TourLocationDetail (location_detail_id, tour_id, tourist_location_id) VALUES (5, 5, 5);
INSERT INTO TravelService.TourLocationDetail (location_detail_id, tour_id, tourist_location_id) VALUES (6, 6, 1);
INSERT INTO TravelService.TourLocationDetail (location_detail_id, tour_id, tourist_location_id) VALUES (7, 7, 2);
INSERT INTO TravelService.TourLocationDetail (location_detail_id, tour_id, tourist_location_id) VALUES (8, 8, 3);
INSERT INTO TravelService.TourLocationDetail (location_detail_id, tour_id, tourist_location_id) VALUES (9, 9, 4);
INSERT INTO TravelService.TourLocationDetail (location_detail_id, tour_id, tourist_location_id) VALUES (10, 10, 5);
INSERT INTO TravelService.TourOrder (order_id, tour_id, customer_id, status) VALUES (1, 1, 1, 'a');
INSERT INTO TravelService.TourOrder (order_id, tour_id, customer_id, status) VALUES (2, 2, 2, 'a');
INSERT INTO TravelService.TourOrder (order_id, tour_id, customer_id, status) VALUES (3, 7, 3, 'a');
INSERT INTO TravelService.TourOrder (order_id, tour_id, customer_id, status) VALUES (4, 4, 5, 'a');
INSERT INTO TravelService.TourOrder (order_id, tour_id, customer_id, status) VALUES (5, 5, 4, 'a');
INSERT INTO TravelService.TourOrder (order_id, tour_id, customer_id, status) VALUES (6, 6, 6, 'a');
INSERT INTO TravelService.TourOrder (order_id, tour_id, customer_id, status) VALUES (7, 7, 7, 'aa');
INSERT INTO TravelService.TourOrder (order_id, tour_id, customer_id, status) VALUES (8, 8, 8, 'a');
INSERT INTO TravelService.TourOrder (order_id, tour_id, customer_id, status) VALUES (9, 8, 9, 'a');
INSERT INTO TravelService.TourOrder (order_id, tour_id, customer_id, status) VALUES (10, 9, 10, 'a');
INSERT INTO TravelService.TourType (tour_type_id, type_code, type_name) VALUES (1, 'giare', 'Gia re');
INSERT INTO TravelService.TourType (tour_type_id, type_code, type_name) VALUES (2, 'giadat', 'Gia dat');
INSERT INTO TravelService.TouristLocation (tourist_location_id, location_name, average_price, city_id, description) VALUES (1, 'Pho Co', 2999, 1, 'a');
INSERT INTO TravelService.TouristLocation (tourist_location_id, location_name, average_price, city_id, description) VALUES (2, 'Pho Co2', 2999, 1, 'a');
INSERT INTO TravelService.TouristLocation (tourist_location_id, location_name, average_price, city_id, description) VALUES (3, 'Pho Co3', 2999, 3, 'a');
INSERT INTO TravelService.TouristLocation (tourist_location_id, location_name, average_price, city_id, description) VALUES (4, 'Pho Co4', 2999, 4, 'a');
INSERT INTO TravelService.TouristLocation (tourist_location_id, location_name, average_price, city_id, description) VALUES (5, 'Pho Co5', 2999, 5, 'a');

# loc cac yeu cau

select city_name,count(city_name) 'number of tour' from Tour
                                                            join TourLocationDetail TLD on Tour.tour_id = TLD.tour_id
                                                            join TouristLocation TL on TLD.tourist_location_id = TL.tourist_location_id
                                                            join City C on TL.city_id = C.city_id group by city_name;
select count(start_date) 'Number of tour begin in 3-2020' from Tour where (month(start_date) = '03');
select * from Tour where (month(start_date)=3);
select count(end_date) 'Number of tour end in 4-2020' from Tour where (month(end_date) = '04');