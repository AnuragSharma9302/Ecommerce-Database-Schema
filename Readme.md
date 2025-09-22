# E-commerce Database Schema Project (PostgreSQL)

This repository contains the SQL scripts and schema design for a basic E-commerce database using **PostgreSQL**. The project is designed to demonstrate fundamental database concepts like table creation, defining data types, and establishing relationships using primary and foreign keys.

## Schema Overview

The database is designed to manage key entities in an e-commerce system:
- **Customers**: Stores customer information.
- **Categories**: Organizes products into different categories.
- **Products**: Contains details about each product, including its price and category.
- **Orders**: Tracks customer orders.
- **OrderItems**: A junction table that links products to orders, specifying the quantity and price for each item in an order.

## ER Diagram
The relationships between these entities are visualized in the ER diagram below.
![ER Diagram](ecommerce-er-diagram.png)

## Repository Structure
- `/sql/schema.sql`: This script contains the `CREATE TABLE` statements for all the tables in the database. It defines columns, data types, primary keys, and foreign key constraints to enforce relational integrity.
- `/sql/data.sql`: This script contains `INSERT INTO` statements to populate the database with sample data for testing and demonstration purposes.

## How to Use
1. **Database Setup**: Use a PostgreSQL server. You can interact with it using tools like `psql` or `pgAdmin`.
2. **Create Schema**: Execute the `sql/schema.sql` script to create the table structure.
3. **Populate Data**: Execute the `sql/data.sql` script to insert the sample data into the tables.
