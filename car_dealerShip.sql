create database car_dealerShip;
use car_dealerShip;
create table Branch(
  BranchID int NOT NULL PRIMARY KEY,
  BPhone int, //maybe will set it to not null
  Address_City VARCHAR(100) NOT NULL,
  Address_State VARCHAR(50) NOT NULL,
  Address_Zipcode VARCHAR(20) NOT NULL);
