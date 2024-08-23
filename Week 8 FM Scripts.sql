USE farmers_market_db;
CREATE TABLE Farmers (
    farmer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL
);
CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL,
    farmer_id INT,
    FOREIGN KEY (farmer_id) REFERENCES Farmers(farmer_id)
);

CREATE TABLE Buyers (
    buyer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL
);

INSERT INTO Farmers (name, email, password, location) VALUES
('John Doe', 'john@example.com', 'password123', 'Nairobi'),
('Jane Smith', 'jane@example.com', 'password123', 'Mombasa'),
('Samuel Brown', 'samuel@example.com', 'password123', 'Kisumu'),
('Grace Green', 'grace@example.com', 'password123', 'Nakuru'),
('Michael White', 'michael@example.com', 'password123', 'Naivasha'),
('Emily Davis', 'emily@example.com', 'password123', 'Thika'),
('David Wilson', 'david@example.com', 'password123', 'Eldoret'),
('Sarah Thompson', 'sarah@example.com', 'password123', 'Machakos'),
('James Taylor', 'james@example.com', 'password123', 'Nyeri'),
('Sophia Moore', 'sophia@example.com', 'password123', 'Kakamega');

INSERT INTO Products (name, price, quantity, farmer_id) VALUES
('Tomatoes', 50.00, 100, 1),
('Maize', 20.00, 200, 2),
('Potatoes', 30.00, 150, 3),
('Carrots', 40.00, 120, 1),
('Cabbages', 25.00, 180, 4),
('Onions', 35.00, 140, 5),
('Spinach', 15.00, 160, 6),
('Kales', 10.00, 130, 7),
('Bananas', 55.00, 90, 8),
('Mangoes', 70.00, 110, 9),
('Oranges', 60.00, 100, 10);

INSERT INTO Buyers (name, email, password, location) VALUES
('Alice Johnson', 'alice@example.com', 'password123', 'Nairobi'),
('Bob Williams', 'bob@example.com', 'password123', 'Nakuru'),
('Chris Evans', 'chris@example.com', 'password123', 'Eldoret'),
('Daniel Martin', 'daniel@example.com', 'password123', 'Mombasa'),
('Eva Garcia', 'eva@example.com', 'password123', 'Kisumu'),
('Frank Brown', 'frank@example.com', 'password123', 'Nyeri'),
('Grace Harris', 'graceh@example.com', 'password123', 'Machakos'),
('Henry Clark', 'henry@example.com', 'password123', 'Nairobi'),
('Isabella Lewis', 'isabella@example.com', 'password123', 'Kakamega'),
('Jack Robinson', 'jack@example.com', 'password123', 'Thika');

SELECT * FROM Farmers;
SELECT * FROM Products;
SELECT * FROM Buyers;

-- Delete rows with NULL values in the Farmers table
DELETE FROM Farmers WHERE name IS NULL OR email IS NULL OR password IS NULL OR location IS NULL;

-- Delete rows with NULL values in the Products table
DELETE FROM Products WHERE name IS NULL OR price IS NULL OR quantity IS NULL OR farmer_id IS NULL;

-- Delete rows with NULL values in the Buyers table
DELETE FROM Buyers WHERE name IS NULL OR email IS NULL OR password IS NULL OR location IS NULL;

SELECT * FROM Farmers;
SELECT * FROM Products;
