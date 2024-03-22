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
