create database Airbnb;use Airbnb;create table Clients(
clients_id int not null primary key,
c_name varchar(50),
phone varchar(50),
email varchar(50),
address varchar(50)
)
insert into Clients(clients_id, c_name, phone, email, address)
values(1, 'rafay', '93161015292', 'rafay039@gmail.com', 'H.No.873, Sector 1D Orangi 
Karachi');
insert into Clients(clients_id, c_name, phone, email, address)
values(2, 'huzaifa', '93456271504', 'huzaifa@gmail.com', 'H.No.420, Sector 6 Bufferzone 
Karachi');
insert into Clients(clients_id, c_name, phone, email, address)
values(3, 'furqan', '9315601701', 'furqan@gmail.com', 'H.No.987, Sector 4F 
Nazimabad Karachi');

create table Hostc(
host_id int not null primary key,
h_name varchar(50),
phone varchar(50),
email varchar(50),
address varchar(50)
);insert into Hostc(host_id, h_name, phone, email, address)
values(10, 'javeria', '933322548', 'javeria@gmail.com', 'H.No.111, Sector 6 
Bufferzone Karachi');
insert into Hostc(host_id, h_name, phone, email, address)
values(20, 'shehroz', '93458241301', 'shehroz@gmail.com', 'H.No.222, Block 8 Gulshan 
Karachi');
insert into Hostc(host_id, h_name, phone, email, address)
values(30, 'zaid', '9341201945', 'zaid.khan@gmail.com', 'H.No.777, Sector 8 
Bufferzone Karachi');create table Room(
room_id int not null primary key,
clients_id int foreign key references Clients(clients_id),
r_price int,
r_description varchar(255)
);
insert into Room(room_id, r_price, r_description)
values(100, 3500, 'The ideal spot for entertaining large groups');
insert into Room(room_id, r_price, r_description)
values(200, 4000, 'Perfect for the sunrise and sunset, views from the terrace look out to 
the south and west');
insert into Room(room_id, r_price, r_description)
values(300, 5000, 'Floor to ceiling windows, large openings to the terrace, and 
simplistic decorations let the natural beauty of the ocean environment fully immerse the 
indoor living space');create table Reservation(
reservation_id int not null primary key,
room_id int foreign key references Room(room_id),
price int,
check_in varchar(50),
check_out varchar(50)
);insert into Reservation(reservation_id, price, check_in, check_out)
values(1, 3500, 2023-01-31, 2023-02-31);
insert into Reservation(reservation_id, price, check_in, check_out)
values(2, 4000, 2023-01-31, 2023-03-31);
insert into Reservation(reservation_id, price, check_in, check_out)
values(3, 5000, 2023-01-31, 2023-02-15);create table Payment(
payment_id int not null primary key,
reservation_id int foreign key references Reservation(reservation_id),
pricing int,
payment_type varchar(50)
);insert into Payment(payment_id, pricing, payment_type)
values(11, 3500, 'debit');
insert into Payment(payment_id, pricing, payment_type)
values(22, 4000, 'cash');
insert into Payment(payment_id, pricing, payment_type)
values(33, 5000, 'credit');create table Listing(
listing_id int not null primary key,
host_id int foreign key references Hostc(host_id),
l_name varchar(50)
);insert into Listing(listing_id, host_id, l_name)
values(1, 10, 'zaid'),
(2, 20, 'asad'),(3, 30, 'musab');create table Amenities(
listing_id int foreign key references Listing(listing_id),
property_type varchar(50),
bed_type varchar(50),
room_type varchar(50),
category varchar(50));insert into Amenities(listing_id, property_type, bed_type, room_type, category)
values(1, '1bhk', 'single', 'bedroom', 'B');
insert into Amenities(listing_id, property_type, bed_type, room_type, category)
values(2, '2bhk', 'king', 'bed_livingroom', 'A');
insert into Amenities(listing_id, property_type, bed_type, room_type, category)
values(3, '4bhk', 'queen', 'bed_livingroom', 'S');create table Review(
review_id int not null primary key,
clients_id int foreign key references Clients(clients_id),
listing_id int foreign key references Listing(listing_id),
rating varchar(50),
comments varchar(50)
);insert into Review(review_id, clients_id, listing_id, rating, comments)
values(101, 1, 1, '3 star', 'Average');
insert into Review(review_id, clients_id, listing_id, rating, comments)
values(102, 2, 2, '4 star', 'Good');
insert into Review(review_id, clients_id, listing_id, rating, comments)
values(103, 3, 3, '5 star', 'Excellant');select * from Clients
select * from Hostc
select * from Room
select * from Reservation
select * from Amenities
select * from Payment
select * from Listing
select * from Review

