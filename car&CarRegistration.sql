CREATE TABLE Car (
    LicenseNumber VARCHAR(6) PRIMARY KEY,
    Price DECIMAL(10,2),
    Make VARCHAR(10),
    Year YEAR,
    Model VARCHAR(49)
);

CREATE TABLE CarRegistration (
    RegDate DATE,
    RegExDate DATE,
    LicenseNumber VARCHAR(6),
    FOREIGN KEY (LicenseNumber) REFERENCES Car(LicenseNumber)
);
