-- 1. CREATE: Build the 3 tables
CREATE TABLE Destinations (
    DestID INT PRIMARY KEY,
    LocationName VARCHAR(100),
    Province VARCHAR(50),
    Price DECIMAL(10, 2)
);

CREATE TABLE Tourists (
    TouristID INT PRIMARY KEY,
    FullName VARCHAR(100),
    Email VARCHAR(100),
    Country VARCHAR(50)
);

CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY,
    TouristID INT,
    DestID INT,
    TravelDate DATE,
    FOREIGN KEY (TouristID) REFERENCES Tourists(TouristID),
    FOREIGN KEY (DestID) REFERENCES Destinations(DestID)
);

-- 2. INSERT: Add Pakistan Tourism data

-- Destinations
INSERT INTO Destinations VALUES (1, 'Hunza Valley', 'Gilgit', 45000.00);
INSERT INTO Destinations VALUES (2, 'Fairy Meadows', 'Gilgit', 35000.00);
INSERT INTO Destinations VALUES (3, 'Skardu', 'Gilgit-Baltistan', 50000.00);
INSERT INTO Destinations VALUES (4, 'Murree', 'Punjab', 25000.00);
INSERT INTO Destinations VALUES (5, 'Swat Valley', 'Khyber Pakhtunkhwa', 30000.00);
INSERT INTO Destinations VALUES (6, 'Lahore Fort', 'Punjab', 15000.00);
INSERT INTO Destinations VALUES (7, 'Karachi Beach', 'Sindh', 20000.00);

-- Tourists
INSERT INTO Tourists VALUES (101, 'Ali Hamza', 'ali@email.com', 'Pakistan');
INSERT INTO Tourists VALUES (102, 'Sara Khan', 'sara@email.com', 'Pakistan');
INSERT INTO Tourists VALUES (103, 'John Doe', 'john@email.com', 'USA');
INSERT INTO Tourists VALUES (104, 'Ayesha Malik', 'ayesha@email.com', 'Pakistan');
INSERT INTO Tourists VALUES (105, 'David Smith', 'david@email.com', 'UK');
INSERT INTO Tourists VALUES (106, 'Fatima Noor', 'fatima@email.com', 'Pakistan');

-- Bookings
INSERT INTO Bookings VALUES (201, 101, 1, '2026-02-15');
INSERT INTO Bookings VALUES (202, 102, 2, '2026-03-10');
INSERT INTO Bookings VALUES (203, 103, 3, '2026-04-05');
INSERT INTO Bookings VALUES (204, 104, 4, '2026-05-20');
INSERT INTO Bookings VALUES (205, 105, 5, '2026-06-15');
INSERT INTO Bookings VALUES (206, 106, 1, '2026-07-01');

-- 3. SELECT: View the data
SELECT * FROM Destinations;
SELECT * FROM Tourists;
SELECT * FROM Bookings;

-- 4. UPDATE: Change a price
UPDATE Destinations SET Price = 40000.00 WHERE DestID = 1;

-- 5. DELETE: Remove a tourist record
DELETE FROM Tourists WHERE TouristID = 101;
