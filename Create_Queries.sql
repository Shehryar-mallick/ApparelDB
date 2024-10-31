CREATE Database if not exists ASTARFASHION;

USE ASTARFASHION;

CREATE TABLE if not exists CUSTOMER (
Cust_Number	INT  PRIMARY KEY AUTO_INCREMENT,
Cust_Fname	VARCHAR(30),
Cust_Lname	VARCHAR(30),
Cust_Phone 	CHAR(10),
Cust_Email 	VARCHAR(60)
)Engine=innodb;

CREATE TABLE if not exists APPOINTMENT (
Apt_Lvl_ID	CHAR(2) PRIMARY KEY,
Apt_Lvl_Desc	VARCHAR(40),
Apt_Hourly_Rate	DECIMAL(5,2)
)Engine=innodb;

CREATE TABLE if not exists ORDERMODE (
Order_ModeID	CHAR(1) PRIMARY KEY,
Order_Mode_Desc	VARCHAR(10)
)Engine=innodb;

CREATE TABLE if not exists PRODUCTTYPE (
Prod_TypeID	INT PRIMARY KEY AUTO_INCREMENT,
Prod_Type_Desc	VARCHAR(40)
)Engine=innodb;

CREATE TABLE if not exists PRODUCT(
Prod_Num	INT PRIMARY KEY AUTO_INCREMENT,
Prod_Desc	VARCHAR(50),
Prod_Size	VARCHAR(10),
Prod_Price	DECIMAL(5,2),
Price_discount DECIMAL(4,2),
Prod_TypeID INT,
FOREIGN KEY (Prod_TypeID) REFERENCES PRODUCTTYPE(Prod_TypeID)
)Engine=innodb;

CREATE TABLE if not exists STAFF (
Staff_ID	INT PRIMARY KEY AUTO_INCREMENT,
Staff_FName	VARCHAR(30),
Staff_LName	VARCHAR(30),
Staff_Phone	CHAR(10),
Staff_DoB	DATE ,
Staff_StartDate	DATE,
Staff_Apt_Level	CHAR(2),
Store_ID INT,
SupvisorID INT,
FOREIGN KEY (Staff_Apt_Level) REFERENCES APPOINTMENT(Apt_Lvl_ID)
)Engine=innodb;


CREATE TABLE if not exists STORE (
Str_Num	INT PRIMARY KEY AUTO_INCREMENT,
Str_Name	VARCHAR(50),
Str_Phone	CHAR(10),
Str_Email	VARCHAR(40),
StoreManagerID	INT
)Engine=innodb;

ALTER TABLE STAFF ADD FOREIGN KEY (Store_ID) REFERENCES STORE(Str_Num);
ALTER TABLE STAFF ADD FOREIGN KEY (SupvisorID) REFERENCES STAFF(Staff_ID);
ALTER TABLE STORE ADD FOREIGN KEY (StoreManagerID) REFERENCES STAFF(Staff_ID);


CREATE TABLE if not exists INVENTORY(
Prod_Num	INT,
Str_Num		INT,
Inv_QntyOnHand	INT,
Inv_QtyOrdered	INT,
PRIMARY KEY (Prod_Num, Str_Num),
FOREIGN KEY (Prod_Num) REFERENCES PRODUCT(Prod_Num),
FOREIGN KEY (Str_Num) REFERENCES STORE(Str_Num)
)Engine=innodb;

CREATE TABLE if not exists CUSTOMERORDER (
CustOrd_ID		INT PRIMARY KEY AUTO_INCREMENT,
CustOrd_Date	DATE,
CustOrd_Mode	CHAR(1),
Cust_Number 	INT,
Str_Num 		INT,
FOREIGN KEY (CustOrd_Mode) REFERENCES ORDERMODE(Order_ModeID),
FOREIGN KEY (Cust_Number)REFERENCES CUSTOMER(Cust_Number),
FOREIGN KEY (Str_Num) REFERENCES STORE(Str_Num)
)Engine=innodb;


CREATE TABLE if not exists ORDERLINE(
CustOrd_ID			INT  ,
Prod_Num			INT  ,
OrdLn_DateArrived	DATE,
OrdLn_DatePicked	DATE,
OrdLn_Qnty			INT,
PRIMARY KEY (CustOrd_ID, Prod_Num),
FOREIGN KEY (CustOrd_ID) REFERENCES CUSTOMERORDER(CustOrd_ID),
FOREIGN KEY (Prod_NuM) REFERENCES PRODUCT(Prod_Num)
)Engine=innodb;




