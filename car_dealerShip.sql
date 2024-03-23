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
);
CREATE TABLE EMPLOYEE (
    EID INT PRIMARY KEY,
    Ename VARCHAR(100),
    Ephone VARCHAR(15),
    Email VARCHAR(100),
    Dob DATE,
    /* 
    BranchID INT,
    FOREIGN KEY (BranchID) REFERENCES Branch(BranchID)
    */
);
CREATE TABLE CarRegistration (
    RegDate DATE,
    RegExDate DATE,
    LicenseNumber VARCHAR(6),
    FOREIGN KEY (LicenseNumber) REFERENCES Car(LicenseNumber)
);


CREATE TABLE Owner(
  OwnerID int NOT NULL PRIMARY KEY,
  OwnerName VARCHAR(15) NOT NULL);

CREATE TABLE Associated (
  emp_ID int,
  branch_ID int,
  licence_num VARCHAR(6) PRIMARY KEY,
  FOREIGN KEY (emp_ID) REFERENCES EMPLOYEE(EID),
  FOREIGN KEY (branch_ID) REFERENCES BRANCH(EID),
  FOREIGN KEY (licence_num) REFERENCES CAR(LicenseNumber)
);

CREATE TABLE INSURANCE (
    InsuranceID INT PRIMARY KEY,
    Type VARCHAR(100) NOT NULL ,
    InsDetails VARCHAR(100)
    LicenseNumber VARCHAR(100), 
    FOREIGN KEY (LicenseNumber) REFERENCES CAR(LicenseNumber)
);
