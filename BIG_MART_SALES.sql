

#CREATE A DATABASE
CREATE DATABASE BIGMARTSALES;

#USE THE DATABASE
USE BIGMARTSALES;

#LOAD THE DATASET
SELECT * FROM BIG_MART; -- Item_Identifier, Item_Weight, Item_Fat_Content, Item_Visibility, Item_Type, Item_MRP, Outlet_Identifier, 
-- Outlet_Establishment_Year, Outlet_Size, Outlet_Location_Type, Outlet_Type, Item_Outlet_Sales

# [SQL Analysis on Big Mart Sales Dataset.]

# 1) WRITE a sql query to show all Item_Identifier.
SELECT Item_Identifier FROM BIG_MART;

# 2) WRITE a sql query to show count of total Item_Identifier.
SELECT COUNT(Item_Identifier) FROM BIG_MART;

# 3) WRITE a sql query to show maximum Item Weight.
SELECT MAX(Item_Weight) FROM BIG_MART;

# 4) WRITE a query to show minimun Item Weight.
SELECT MIN(Item_Weight) FROM BIG_MART;


# 5) WRITE a query to show average Item_Weight.
select ROUND(AVG(Item_Weight),2) FROM BIG_MART;


# 6) WRITE a query to show count OF Item_Fat_Content WHERE Item_Fat_Content IS Low Fat.
SELECT COUNT(Item_Fat_Content) FROM BIG_MART WHERE Item_Fat_Content = 'Low Fat';


# 7) WRITE a query to show count OF Item_Fat_Content WHERE Item_Fat_Content IS Regular.
SELECT COUNT(Item_Fat_Content) FROM BIG_MART WHERE Item_Fat_Content = 'Regular';

# 8) WRITE a query TO show maximum Item_MRP.
SELECT MAX(ITEM_MRP) FROM BIG_MART;

# 9) WRITE a query TO show minimum Item_MRP.
SELECT MIN(ITEM_MRP) FROM BIG_MART;

# 10) WRITE a query to show Item_Identifier , Item_Fat_Content,Item_Type,Item_MRP and Item_MRP is greater than 200.
SELECT Item_Identifier , Item_Fat_Content , Item_Type , Item_MRP FROM BIG_MART WHERE Item_MRP>200;

# 11) WRITE a query to show maximum Item_MRP WHERE Item_Fat_Content IS Low Fat.
SELECT MAX(ITEM_MRP) FROM BIG_MART WHERE Item_Fat_Content = 'Low Fat';

# 12) WRITE a query to show minimum Item_MRP AND Item_Fat_Content IS Low Fat.
SELECT MIN(ITEM_MRP) FROM BIG_MART WHERE Item_Fat_Content = 'Low Fat';

# 13) WRITE a query to show ALL DATA WHERE item MRP IS BETWEEN 50 TO 100.
SELECT * FROM BIG_MART WHERE ITEM_MRP BETWEEN 50 AND 100;

# 14) WRITE a query to show ALL UNIQUE value Item_Fat_Content.
SELECT DISTINCT(ITEM_FAT_CONTENT) FROM BIG_MART;

# 15) WRITE a query to show ALL UNIQUE value Item_Type.
SELECT DISTINCT(ITEM_TYPE) FROM BIG_MART;

# 16) WRITE a query to show ALL DATA IN descending ORDER BY Item MRP.
SELECT * FROM BIG_MART 
ORDER BY ITEM_MRP DESC;

# 17) WRITE a query to show ALL DATA IN ascending ORDER BY Item_Outlet_Sales.
SELECT * FROM BIG_MART 
ORDER BY ITEM_OUTLET_SALES ASC;

# 18) WRITE a query to show ALL DATA IN ascending BY Item_Type.
SELECT  * FROM BIG_MART 
ORDER BY ITEM_TYPE ASC;

# 19) WRITE a query to show DATA OF item_type dairy & Meat.
SELECT * FROM BIG_MART 
WHERE ITEM_TYPE IN ('dairy' , 'Meat') ;

# 20) WRITE a query to show ALL UNIQUE value OF Outlet_Size.
SELECT DISTINCT(OUTLET_SIZE) FROM BIG_MART;

# 21) WRITE a query to show ALL UNIQUE value OF Outlet_Location_Type.
SELECT DISTINCT(Outlet_Location_Type) FROM BIG_MART;

# 22) WRITE a query to show ALL UNIQUE value OF Outlet_Type.
SELECT DISTINCT(Outlet_Type) FROM BIG_MART;

# 23) WRITE a query to show count NO. OF item BY Item_Type AND ordered it IN descending.
SELECT ITEM_TYPE,COUNT(ITEM_TYPE) FROM BIG_MART
GROUP BY 1
ORDER BY 2 DESC;

# 24) WRITE a query to show count NO. OF item BY Outlet_Size AND ordered it IN ascending.
SELECT OUTLET_SIZE,COUNT(OUTLET_SIZE) FROM BIG_MART
GROUP BY 1
ORDER BY 2 ASC;

# 25) WRITE a query TO  show  count NO. OF item BY Outlet_Establishment_Year AND ordered it IN ascening.
SELECT  Outlet_Establishment_Year,COUNT(Outlet_Establishment_Year) FROM BIG_MART
GROUP BY 1
ORDER BY 2 ASC;

# 26) WRITE a query to show count NO. OF item BY Outlet_Type AND ordered it IN descending.
SELECT Outlet_Type,COUNT(Outlet_Type) FROM BIG_MART
GROUP BY 1
ORDER BY 2 DESC;

# 27) WRITE a query to show count of item BY Outlet_Location_Type AND ordered it IN descending.
SELECT Outlet_Location_Type,COUNT(Outlet_Location_Type) FROM BIG_MART
GROUP BY 1
ORDER BY 2 DESC;

# 28) WRITE a query to show maximum MRP BY Item_Type.
SELECT ITEM_TYPE,MAX(ITEM_MRP) FROM BIG_MART
GROUP BY 1;

# 29) WRITE a query to show minimum MRP BY Item_Type.
SELECT ITEM_TYPE,MIN(ITEM_MRP) FROM BIG_MART
GROUP BY 1;

# 30) WRITE a query to show minimum MRP BY Outlet_Establishment_Year AND ordered it IN descending.
SELECT Outlet_Establishment_Year,MIN(ITEM_MRP) FROM BIG_MART
GROUP BY 1
ORDER BY 1 DESC;

# 31) WRITE a query to show maximum MRP BY Outlet_Establishment_Year AND ordered IN descending.
SELECT Outlet_Establishment_Year,MAX(ITEM_MRP) FROM BIG_MART
GROUP BY 1
ORDER BY 1 DESC;

# 32) WRITE a query to show average MRP BY Outlet_Size AND ordered IN descending.
SELECT Outlet_Size , ROUND(AVG(ITEM_MRP),2) FROM BIG_MART
GROUP BY 1 
ORDER BY 1 DESC;

# 33) WRITE a query to show average MRP BY Outlet_Size AND ordered IN descending.
SELECT Outlet_Size , ROUND(AVG(ITEM_MRP),2) FROM BIG_MART
GROUP BY 1 
ORDER BY 1 DESC;

# 34) WRITE a query to show Average MRP BY Outlet_Type AND ordered IN ascending.
SELECT Outlet_TYPE , ROUND(AVG(ITEM_MRP),2) FROM BIG_MART
GROUP BY 1 
ORDER BY 1 ASC;

# 35) WRITE a query to show maximum MRP BY Outlet_Type AND ordered IN ascending.
SELECT Outlet_TYPE , MAX(ITEM_MRP) FROM BIG_MART
GROUP BY 1 
ORDER BY 2 ASC; 

# 36) WRITE a query to show maximum Item_Weight BY Item_Type AND ordered IN descending.
SELECT ITEM_TYPE , MAX(ITEM_WEIGHT) FROM BIG_MART
GROUP BY 1 
ORDER BY 2 DESC;  

# 37) WRITE a query to show maximum Item_Weight BY Outlet_Establishment_Year AND ordered IN ascending.
SELECT Outlet_Establishment_Year , MAX(Item_Weight) FROM BIG_MART
GROUP BY 1 
ORDER BY 2 ASC;

# 38) WRITE a query to show minimum Item_Weight BY Outlet_Type AND ordered IN descending.
SELECT OUTLET_TYPE , MIN(ITEM_WEIGHT) FROM BIG_MART 
GROUP BY 1 
ORDER BY 2 DESC ;

# 39) WRITE a query to show average Item_Weight BY Outlet_Location_Type ORDER BY descending.
SELECT OUTLET_LOCATION_TYPE , AVG(ITEM_WEIGHT) FROM BIG_MART 
GROUP BY 1 
ORDER BY 1 DESC;

# 40) WRITE a query to show maximum Item_Outlet_Sales BY Item_Type.
SELECT ITEM_TYPE , MAX(ITEM_OUTLET_SALES) FROM BIG_MART 
GROUP BY 1 ;

# 41) WRITE a query to show minimum Item_Outlet_Sales BY Item_Type.
SELECT ITEM_TYPE , MIN(ITEM_OUTLET_SALES) FROM BIG_MART 
GROUP BY 1 ;

# 42) WRITE a query to show minimum Item_Outlet_Sales BY Outlet_Establishment_Year ORDER BY descending.
SELECT  Outlet_Establishment_Year, MIN(ITEM_OUTLET_SALES) FROM BIG_MART
GROUP BY 1 
ORDER BY 2 DESC;

# 43) WRITE a query to show maximum Item_Outlet_Sales BY Outlet_Establishment_Year ordered BY descending.
SELECT  Outlet_Establishment_Year, MAX(ITEM_OUTLET_SALES) FROM BIG_MART
GROUP BY 1 
ORDER BY 2 DESC;

# 44) WRITE a query to show average Item_Outlet_Sales BY Outlet_Size AND ORDER it descending.
SELECT OUTLET_SIZE, AVG(ITEM_OUTLET_SALES) FROM BIG_MART
GROUP BY 1 
ORDER BY 2 DESC;

# 45) WRITE a query to show average Item_Outlet_Sales BY Outlet_Size.
SELECT OUTLET_SIZE, AVG(ITEM_OUTLET_SALES) FROM BIG_MART
GROUP BY 1 ;

# 46) WRITE a query to show average Item_Outlet_Sales BY Outlet_Type AND ordered IN ascending.
SELECT OUTLET_SIZE, AVG(ITEM_OUTLET_SALES) FROM BIG_MART
GROUP BY 1 
ORDER BY 2 ASC;

# 47) WRITE a query to show maximum Item_Outlet_Sales BY Outlet_Type AND ordered IN ascending.
SELECT OUTLET_TYPE, MAX(ITEM_OUTLET_SALES) FROM BIG_MART
GROUP BY 1 
ORDER BY 2 ASC;

# 48) WRITE a query to show total Item_Outlet_Sales BY Outlet_Establishment_Year AND ORDER it descending.
SELECT Outlet_Establishment_Year,ROUND(SUM(Item_Outlet_Sales),2) FROM BIG_MART
GROUP BY 1
ORDER BY 2 DESC;

# 49) WRITE a query to show total Item_Outlet_Sales BY Item_Type AND ORDER it descending.
SELECT Item_Type,ROUND(SUM(Item_Outlet_Sales),2) FROM BIG_MART
GROUP BY 1
ORDER BY 2 DESC;

# 50) WRITE a query to show total Item_Outlet_Sales BY Outlet_Location_Type AND ORDER it descending.
SELECT Outlet_Location_Type,ROUND(SUM(Item_Outlet_Sales),2) FROM BIG_MART
GROUP BY 1
ORDER BY 2 DESC;

# 51) WRITE a query to show total Item_Outlet_Sales BY Item_Fat_Content AND ORDER it descending.
SELECT Item_Fat_Content,ROUND(SUM(Item_Outlet_Sales),2) FROM BIG_MART
GROUP BY 1
ORDER BY 2 DESC;

# 52) WRITE a query to show maximum Item_Visibility BY Item_Type AND ORDER it descending.
SELECT Item_TYPE,MAX(Item_Visibility) FROM BIG_MART
GROUP BY 1
ORDER BY 2 DESC;

# 53) WRITE a query to show Minimum Item_Visibility BY Item_Type AND ORDER it descending.
SELECT Item_TYPE,MIN(Item_Visibility) FROM BIG_MART
GROUP BY 1
ORDER BY 2 DESC;

# 54) WRITE a query to show total Item_Outlet_Sales BY Item_Type but ONLY WHERE Outlet_Location_Type IS Tier 1.
SELECT Item_Type , ROUND(SUM(Item_Outlet_Sales),3) FROM BIG_MART
WHERE Outlet_Location_Type = 'Tier 1'
GROUP BY 1 ;

# 55) WRITE a query to show total Item_Outlet_Sales BY Item_Type WHERE Item_Fat_Content IS ONLY Low Fat & LF.
SELECT Item_Type , Item_Fat_Content,SUM(Item_Outlet_Sales) FROM BIG_MART 
WHERE Item_Fat_Content IN ('Low Fat' , 'LF')
GROUP BY 1 ,2 ;