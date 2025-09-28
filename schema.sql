-- E-commerce Database Schema for PostgreSQL
-- Author: Anurag Sharma
-- Date: 2025-09-22

-- Table: Customers
-- Stores customer information
CREATE TABLE Customers (
    CustomerID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255),
    City VARCHAR(50),
    Country VARCHAR(50),
    RegistrationDate TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Table: Categories
-- Stores product categories
CREATE TABLE Categories (
    CategoryID SERIAL PRIMARY KEY,
    CategoryName VARCHAR(50) NOT NULL UNIQUE,
    Description TEXT
);

-- Table: Products
-- Stores product information
CREATE TABLE Products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Description TEXT,
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT NOT NULL,
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

-- Table: Orders
-- Stores customer order information
CREATE TABLE Orders (
    OrderID SERIAL PRIMARY KEY,
    CustomerID INT,
    OrderDate TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    Status VARCHAR(20) DEFAULT 'Pending',
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Table: OrderItems
-- A junction table linking Products and Orders
CREATE TABLE OrderItems (
    OrderItemID SERIAL PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT NOT NULL,
    Subtotal DECIMAL(10, 2) NOT NULL, -- (Quantity * Product.Price)
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID) ON DELETE CASCADE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
