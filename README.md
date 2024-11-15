# Airbnb_Project_DBMS

Welcome to the Airbnb Database project! This project demonstrates the structure of a relational database designed for an Airbnb-style application. The database includes several tables to manage clients, hosts, listings, rooms, reservations, payments, reviews, and amenities.

## Features

This database schema supports key features of an Airbnb platform:
1. **Clients**: Information about users booking rooms (guests).
2. **Hosts**: Information about individuals listing properties for rent.
3. **Rooms**: Details about rooms available for reservation.
4. **Reservations**: Booking information for rooms.
5. **Payments**: Payment details for each reservation.
6. **Listings**: Information about properties available for rent, linked to hosts.
7. **Amenities**: Details about the features and categories of properties.
8. **Reviews**: Ratings and comments made by clients about specific listings.

## Database Structure

The database includes the following tables:

### 1. `Clients`
Stores information about the clients (guests) who are using the platform.
- `clients_id` (Primary Key): Unique identifier for each client.
- `c_name`: Client's name.
- `phone`: Client's phone number.
- `email`: Client's email address.
- `address`: Client's address.

### 2. `Hostc`
Stores information about hosts (property owners).
- `host_id` (Primary Key): Unique identifier for each host.
- `h_name`: Host's name.
- `phone`: Host's phone number.
- `email`: Host's email address.
- `address`: Host's address.

### 3. `Room`
Stores information about individual rooms available for rent.
- `room_id` (Primary Key): Unique identifier for each room.
- `clients_id` (Foreign Key): References the `Clients` table to associate a room with a client.
- `r_price`: Price of the room.
- `r_description`: Description of the room.

### 4. `Reservation`
Stores information about reservations made for rooms.
- `reservation_id` (Primary Key): Unique identifier for each reservation.
- `room_id` (Foreign Key): References the `Room` table to associate a reservation with a specific room.
- `price`: Price of the reservation.
- `check_in`: Check-in date for the reservation.
- `check_out`: Check-out date for the reservation.

### 5. `Payment`
Stores payment information for each reservation.
- `payment_id` (Primary Key): Unique identifier for each payment.
- `reservation_id` (Foreign Key): References the `Reservation` table.
- `pricing`: Payment amount.
- `payment_type`: Type of payment (e.g., debit, cash, credit).

### 6. `Listing`
Stores information about property listings from hosts.
- `listing_id` (Primary Key): Unique identifier for each listing.
- `host_id` (Foreign Key): References the `Hostc` table to associate a listing with a host.
- `l_name`: Name of the listing.

### 7. `Amenities`
Stores details about the amenities available in each listing.
- `listing_id` (Foreign Key): References the `Listing` table to associate amenities with a listing.
- `property_type`: Type of property (e.g., 1BHK, 2BHK).
- `bed_type`: Type of bed (e.g., king, queen).
- `room_type`: Type of room (e.g., bedroom, living room).
- `category`: Classification of the listing (e.g., A, B, S).

### 8. `Review`
Stores reviews left by clients about specific listings.
- `review_id` (Primary Key): Unique identifier for each review.
- `clients_id` (Foreign Key): References the `Clients` table.
- `listing_id` (Foreign Key): References the `Listing` table.
- `rating`: Rating given by the client (e.g., 3 star, 4 star).
- `comments`: Additional comments from the client.

## Sample Data

The database is pre-populated with some sample data for testing purposes. The sample data includes:
- **Clients**: Three clients with details such as name, phone number, email, and address.
- **Hosts**: Three hosts with details like name, phone number, email, and address.
- **Rooms**: Three rooms with descriptions and prices.
- **Reservations**: Three reservations with check-in/check-out dates and prices.
- **Payments**: Three payment records for different reservation types.
- **Listings**: Three listings associated with hosts.
- **Amenities**: Three records for the amenities of each listing.
- **Reviews**: Three reviews from clients on different listings.

## SQL Queries

The following queries are used to interact with the database:

1. **Select All Data from Tables**:
   - `SELECT * FROM Clients`
   - `SELECT * FROM Hostc`
   - `SELECT * FROM Room`
   - `SELECT * FROM Reservation`
   - `SELECT * FROM Amenities`
   - `SELECT * FROM Payment`
   - `SELECT * FROM Listing`
   - `SELECT * FROM Review`

## Getting Started

### Prerequisites

To get started with this project, you will need:
- MySQL or any compatible relational database management system (RDBMS).
- A MySQL client (e.g., MySQL Workbench, phpMyAdmin, or command-line interface) to run the SQL queries.

### Installation

1. Clone this repository to your local machine:
   ```bash
   git clone https://github.com/yourusername/airbnb-database.git
   ```
   
2. Open the project folder and execute the SQL script to create the database and tables:
   ```bash
   mysql -u username -p < airbnb.sql
   ```

3. Use the database:
   ```sql
   USE Airbnb;
   ```

4. You can now run the queries to interact with the database.

## Contributing

If you would like to contribute to this project, feel free to open an issue or submit a pull request. Please make sure to follow the coding standards and provide clear documentation for any changes you make.

## Contact

For any questions or suggestions, feel free to contact the project maintainer.

## Author

- **Muhammad Furqan Nasir**


