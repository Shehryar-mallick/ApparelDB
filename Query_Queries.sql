-- QUERY  1
SELECT concat(Staff_FName,' ', Staff_LName) AS Name, Apt_Hourly_Rate 
FROM staff s, appointment a 
WHERE s.Staff_Apt_Level = a.Apt_Lvl_ID 
ORDER BY a.Apt_Hourly_Rate DESC;


-- QUERY  2
SELECT Concat(c.Cust_Fname, ' ', c.Cust_Lname) AS "Customer Name", o.CustOrd_Date 
FROM customer c, customerorder o 
ORDER BY CustOrd_Date DESC 
LIMIT 1 OFFSET 2;


-- QUERY 3
SELECT Str_Name,concat(Staff_FName,' ',Staff_LName) as Name,Staff_Apt_Level,Apt_hourly_rate 
FROM store s, staff st, appointment a 
WHERE s.StoreManagerID=st.Staff_ID 
AND st.Staff_Apt_Level=a.Apt_Lvl_ID 
ORDER BY Apt_hourly_rate DESC;


--QUERY 4
SELECT p.Prod_Num, p.Prod_Desc, p.Prod_TypeID, p.Prod_Size, 
SUM(o.OrdLn_Qnty) AS Total_Quantity_Sold 
FROM product p 
JOIN orderline o 
ON p.Prod_Num = o.Prod_Num 
WHERE o.OrdLn_DatePicked IS NOT NULL 
GROUP BY p.Prod_Num, p.Prod_Desc, p.Prod_TypeID, p.Prod_Size;


-QUERY 5
Select p.Prod_Num,p.Prod_Desc,pt.Prod_Type_Desc,SUM(OrdLn_Qnty) as Total_Quantity_Sold 
FROM product p,producttype pt, orderline o 
WHERE p.Prod_TypeID = pt.Prod_TypeID AND p.Prod_Num = o.Prod_Num AND o.OrdLn_DatePicked <='2024-05-20' GROUP BY p.Prod_Num 
ORDER BY p.Prod_Num, SUM(OrdLn_Qnty);



-- QUERY 6
SELECT S.STAFF_ID, CONCAT(S.STAFF_FNAME, ' ', S.STAFF_LNAME) AS 'name', COUNT(DISTINCT S1.STAFF_ID) AS '# OF STAFF' 
FROM STAFF AS S, STAFF AS S1, STORE AS STR 
WHERE S.STAFF_ID = S1.SUPVISORID AND 
STR.STOREMANAGERID = S.STAFF_ID 
GROUP BY S.STAFF_ID;


-- QUERY 7
SELECT P.PROD_NUM, P.PROD_DESC, I.INV_QTYORDERED - I.INV_QNTYONHAND AS 'SHORTAGE' 
FROM PRODUCT AS P, INVENTORY AS I 
WHERE I.INV_QTYORDERED > I.INV_QNTYONHAND
GROUP BY P.PROD_NUM;

