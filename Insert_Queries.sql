-- Inserting records into CUSTOMER table
INSERT INTO CUSTOMER (Cust_Number, Cust_FName, Cust_LName, Cust_Phone, Cust_Email)
VALUES 
    (12,'Alice', 'Johnson', '0737123456', 'alice.johnson@example.com'),
    (13,'Benjamin', 'Smith', '0737234567', 'ben.smith@example.com'),
    (14,'Charlotte', 'Garcia', '0737345678', 'charlotte.garcia@example.com'),
    (15,'David', 'Brown', '0737456789', 'david.brown@example.com'),
    (16,'Emma', 'Martinez', '0737567890', 'emma.martinez@example.com');



-- Inserting records into ORDERMODE table
INSERT INTO ORDERMODE (Order_ModeID, Order_Mode_Desc)
VALUES 
    ('O', 'Online'),
    ('I', 'In store');


-- Inserting records into PRODUCTTYPE table
INSERT INTO PRODUCTTYPE (Prod_TypeID, Prod_Type_Desc)
VALUES 
    (1, 'T-shirt'),
    (2, 'Jeans'),
    (3, 'Dress'),
    (4, 'Jacket'),
    (5, 'Shoes');


-- Inserting records into APPOINTMENT table
INSERT INTO APPOINTMENT (Apt_Lvl_ID, Apt_Lvl_Desc, Apt_Hourly_Rate)
VALUES 
    ('M1', 'Senior Manager', 150.00),
    ('M2', 'Manager', 120.00),
    ('S1', 'Supervisor', 100.00),
    ('S2', 'Senior Sales', 80.00),
    ('T1', 'Team Lead', 65.00),
    ('T2', 'Team Member', 50.00);

-- Inserting records into PRODUCT table
INSERT INTO PRODUCT (Prod_Num, Prod_Desc, Prod_Size, Prod_Price, Price_discount, Prod_TypeID)
VALUES 
    (1, 'Blue T-shirt', 'Large', 30.00, 3.00, 1),
    (2, 'Black Jeans', 'Medium', 50.00, 5.00, 2),
    (3, 'Red Dress', 'Small', 80.00, 8.00, 3),
    (4, 'Leather Jacket', 'XL', 120.00, 12.00, 4),
    (5, 'Sneakers', '10', 70.00, 7.00, 5);



-- Inserting records into STORE table
INSERT INTO STORE (Str_Num, Str_Name, Str_Phone, Str_Email, StoreManagerID)
VALUES 
    (1, 'Trendy Threads Brisbane', '0737654321', 'info@trendythreadsbrisbane.com', NULL),
    (2, 'Chic Boutique Sydney', '0737765432', 'contact@chicboutiquesydney.com', NULL),
    (3, 'Urban Style Melbourne', '0737876543', 'info@urbanstylemelbourne.com', NULL),
    (4, 'Elegant Attire Perth', '0737987654', 'elegantattireperth@gmail.com', NULL),
    (5, 'Fashion Hub Adelaide', '0737098765', 'contact@fashionhubadelaide.com', NULL);



-- Inserting records into CUSTOMERORDER table
INSERT INTO CUSTOMERORDER (CustOrd_ID, CustOrd_Date, CustOrd_Mode, Cust_Number, Str_Num)
VALUES 
    (1, '2024-05-14', 'O', 12, 1),
    (2, '2024-05-14', 'I', 13, 2),
    (3, '2024-05-14', 'O', 14, 3),
    (4, '2024-05-14', 'I', 15, 4),
    (5, '2024-05-14', 'O', 16, 5);



-- Inserting records into INVENTORY table
INSERT INTO INVENTORY (Prod_Num, Str_Num, Inv_QntyOnHand, Inv_QtyOrdered)
VALUES 
    (1, 1, 100, 10),
    (2, 2, 150, 20),
    (3, 3, 200, 15),
    (4, 4, 120, 12),
    (5, 5, 180, 18);


-- Inserting records into ORDERLINE table
INSERT INTO ORDERLINE (CustOrd_ID, Prod_Num, OrdLn_DateArrived, OrdLn_DatePicked, OrdLn_Qnty)
VALUES 
    (1, 1, '2024-05-14', '2024-05-15', 2),
    (2, 2, '2024-05-14', '2024-05-16', 3),
    (3, 3, '2024-05-14', '2024-05-17', 4),
    (4, 4, '2024-05-14', '2024-05-18', 5),
    (5, 5, '2024-05-14', '2024-05-19', 6);



-- Inserting records into STAFF table
INSERT INTO STAFF (Staff_ID, Staff_FName, Staff_LName, Staff_Phone, Staff_DoB, Staff_StartDate, Staff_Apt_Level, Store_ID, SupvisorID)
VALUES 
    (1, 'Oliver', 'Taylor', '0737123456', '1985-05-12', '2019-01-01', 'M1', 1, NULL),
    (2, 'Sophia', 'Chen', '0737234567', '1990-08-21', '2020-02-01', 'M2', 2, 1),
    (3, 'Ethan', 'Rodriguez', '0737345678', '1993-11-05', '2020-03-15', 'S1', 3, 2),
    (4, 'Ava', 'Nguyen', '0737456789', '1992-07-18', '2018-06-01', 'S2', 4, 1),
    (5, 'Noah', 'Wang', '0737567890', '1988-12-30', '2017-04-01', 'T1', 5, 3);



-- Updating the managerID in the store table 
UPDATE store
SET StoreManagerID = 1
WHERE Str_Num = 1;

UPDATE store
SET StoreManagerID = 1
WHERE Str_Num = 2;

UPDATE store
SET StoreManagerID = 2
WHERE Str_Num = 3;

UPDATE store
SET StoreManagerID = 2
WHERE Str_Num = 4;

UPDATE store
SET StoreManagerID = 3
WHERE Str_Num = 5;

-- Insert query for final query
INSERT INTO INVENTORY (Prod_Num, Str_Num, Inv_QntyOnHand, Inv_QtyOrdered) VALUES (2, 1, 50, 150), (3, 2, 10, 200), (2, 4, 20, 100);










