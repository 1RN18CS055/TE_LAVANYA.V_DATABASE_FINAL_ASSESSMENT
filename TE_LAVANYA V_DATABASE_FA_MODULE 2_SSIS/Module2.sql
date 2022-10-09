--------MODULE 2---------
------SSIS---------
-----EXCELTODB----------

---SOURCE TABLE-----(EXCEL FILE-HEALTH_DATA_SRC)

---------DESTINATION TABLE----(OLE DB) 
CREATE TABLE TE_FA_HEALTH_DEST 
(
    [PID] float,
    [AGE] float,
    [GENDER] nvarchar(255),
    [CATEGORY_NAME] nvarchar(255),
    [SURGERY_CODE] nvarchar(255),
    [SURGERY] nvarchar(255),
    [VILLAGE] nvarchar(255),
    [MANDAL_NAME] nvarchar(255),
    [DISTRICT_NAME] nvarchar(255),
    [HOSP_NAME] nvarchar(255),
    [HOSP_TYPE] nvarchar(255),
    [CLAIM_AMOUNT] float,
    [SURGERY_DATE] datetime,
    [DISCHARGE_DATE] datetime
) 

SELECT * FROM TE_FA_HEALTH_DEST


-------FLAT TO DB------
----SOURCE----FLAT FILE(COSUPPLY_RETAIL_DATA)

-----DESTINATION----SQL(OLE DB) 
CREATE TABLE TE_FA_COSUPPLY_RETAIL_DATA_TGT 
(
    [Type] nvarchar(255),
    [Sales per customer] float,
    [Delivery Status] nvarchar(255),
    [Category Id] float,
    [Category Name] nvarchar(255),
    [Customer City] nvarchar(255),
    [Customer Fname] nvarchar(255),
    [Customer Lname] nvarchar(255),
    [Customer Segment] nvarchar(255),
    [Department Id] float,
    [Department Name] nvarchar(255),
    [Order Id] float,
    [Order Item Quantity] float,
    [Order Status] nvarchar(255),
    [Product Name] nvarchar(255),
    [Product Price] float,
    [Shipping Mode] nvarchar(255)
) 

SELECT * FROM TE_FA_COSUPPLY_RETAIL_DATA_TGT

----------------------------------------------------------------------------------------------------------------

--------SCD TYPE 1 AND SCD TYPE 2--------
-----SOURCE TABLE-------
CREATE TABLE TE_FA_HEALTH_DEST 
(
    [PID] float,
    [AGE] float,
    [GENDER] nvarchar(255),
    [CATEGORY_NAME] nvarchar(255),
    [SURGERY_CODE] nvarchar(255),
    [SURGERY] nvarchar(255),
    [VILLAGE] nvarchar(255),
    [MANDAL_NAME] nvarchar(255),
    [DISTRICT_NAME] nvarchar(255),
    [HOSP_NAME] nvarchar(255),
    [HOSP_TYPE] nvarchar(255),
    [CLAIM_AMOUNT] float,
    [SURGERY_DATE] datetime,
    [DISCHARGE_DATE] datetime
)

ALTER TABLE TE_FA_HEALTH_DEST ADD START_DATE DATE,END_DATE DATE,STATUS VARCHAR(50) 

SELECT * FROM TE_FA_HEALTH_DEST

UPDATE TE_FA_HEALTH_DEST
SET [CATEGORY_NAME] = 'DERMATOLOGY'
WHERE [SURGERY_CODE] = 'S7.1.1.1'

UPDATE TE_FA_HEALTH_DEST
SET [CATEGORY_NAME] = 'PEDIATRICIAN'
WHERE [SURGERY_CODE] = 'S7.2.1.1'


------DESTINATION TABLE--------
CREATE TABLE TE_FA_HEALTH_SCD1DEST 
(
    [PID] float,
    [AGE] float,
    [GENDER] nvarchar(255),
    [CATEGORY_NAME] nvarchar(255),
    [SURGERY_CODE] nvarchar(255),
    [SURGERY] nvarchar(255),
    [VILLAGE] nvarchar(255),
    [MANDAL_NAME] nvarchar(255),
    [DISTRICT_NAME] nvarchar(255),
    [HOSP_NAME] nvarchar(255),
    [HOSP_TYPE] nvarchar(255),
    [CLAIM_AMOUNT] float,
    [SURGERY_DATE] datetime,
    [DISCHARGE_DATE] datetime
) 

ALTER TABLE TE_FA_HEALTH_SCD1DEST ADD START_DATE DATE,END_DATE DATE,STATUS VARCHAR(50) 

SELECT * FROM TE_FA_HEALTH_SCD1DEST

TRUNCATE TABLE TE_FA_HEALTH_SCD1DEST
-------------------------------------------------------------------------------------------------------------

-------AGGREGATE TABLE-------------
----Excel To DB------
------SOURCE-------(Excel-Cinema_Data ) 

------DESTINATION-----(OLE DB) 
CREATE TABLE TE_FA_AGGREGATE_DEST
(
    [total_sales_SUM] float,
    [ticket_price_MAX] float,
    [tickets_sold_MIN] float,
    [tickets_out_AVG] float,
    [Film_Type_GRP] nvarchar(255)
)

SELECT * FROM TE_FA_AGGREGATE_DEST

--------------------------------------------------------------------------------------------------------------
