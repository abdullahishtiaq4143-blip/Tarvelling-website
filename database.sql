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
INSERT INTO Destinations VALUES (1, 'Hunza Valley', 'Gilgit', 45000.00);
INSERT INTO Destinations VALUES (2, 'Fairy Meadows', 'Gilgit', 35000.00);
INSERT INTO Tourists VALUES (101, 'Ali Hamza', 'ali@email.com', 'Pakistan');

-- 3. SELECT: View the data
SELECT * FROM Destinations;

-- 4. UPDATE: Change a price
UPDATE Destinations SET Price = 40000.00 WHERE DestID = 1;

-- 5. DELETE: Remove a tourist record
DELETE FROM Tourists WHERE TouristID = 101;