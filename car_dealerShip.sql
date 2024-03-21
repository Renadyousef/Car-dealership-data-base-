create database car_dealerShip;
use car_dealerShip;
create table Branch(
  BranchID int NOT NULL PRIMARY KEY,
  BPhone int, //maybe will set it to not null
  Address_City VARCHAR(100) NOT NULL,
  Address_State VARCHAR(50) NOT NULL,
  Address_Zipcode VARCHAR(20) NOT NULL);
CREATE TABLE Car
    LicenseNumber VARCHAR(6) PRIMARY KEY,
    Price DECIMAL(10,2),
    Make VARCHAR(10),
    Year YEAR,
    Model VARCHAR(49),
    InsuranceID INT,
    FOREIGN KEY (InsuranceID) REFERENCES Insurance(InsuranceID)
);
