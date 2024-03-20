CREATE TABLE INSURANCE (
    InsuranceID INT PRIMARY KEY,
    Type VARCHAR(100) NOT NULL ,
    InsDetails VARCHAR(100)
    LicenseNumber VARCHAR(100), 
    FOREIGN KEY (LicenseNumber) REFERENCES CAR(LicenseNumber)
);

