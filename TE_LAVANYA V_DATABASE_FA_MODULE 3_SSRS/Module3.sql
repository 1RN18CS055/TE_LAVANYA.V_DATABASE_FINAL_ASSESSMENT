----------MODULE 3-----------
-----SSRS------------
----SOURCE---(EXCEL FILE-HEALTH DATA)

-----DESTINATION---
CREATE TABLE TE_FA_HEALTH_DATA_SSRS
(
    [PID] float,
    [AGE] float,
    [GENDER] nvarchar(255),
    [CASTE_NAME] nvarchar(255),
    [CATEGORY_CODE] nvarchar(255),
    [CATEGORY_NAME] nvarchar(255),
    [SURGERY_CODE] nvarchar(255),
    [SURGERY] nvarchar(255),
    [VILLAGE] nvarchar(255),
    [MANDAL_NAME] nvarchar(255),
    [DISTRICT_NAME] nvarchar(255),
    [PREAUTH_DATE] datetime,
    [PREAUTH_AMT] float,
    [CLAIM_DATE] datetime,
    [CLAIM_AMOUNT] float,
    [HOSP_NAME] nvarchar(255),
    [HOSP_TYPE] nvarchar(255),
    [HOSP_DISTRICT] nvarchar(255),
    [SURGERY_DATE] datetime,
    [DISCHARGE_DATE] datetime,
    [Mortality Y / N] nvarchar(255),
    [MORTALITY_DATE] datetime,
    [SRC_REGISTRATION] nvarchar(255)
)

SELECT * FROM TE_FA_HEALTH_DATA_SSRS


-----------DASHBOARD------
---SOURCE---Excel file(COSUPPLY_RETAIL_DATA)
---DESTINATION---SQL(OLE DB)

CREATE TABLE TE_FA_COSUPPLY_RETAIL_DATA_SSRS
(
    [Type] nvarchar(255),
    [Days for shipping (real)] float,
    [Days for shipment (scheduled)] float,
    [Benefit per order] float,
    [Sales per customer] float,
    [Delivery Status] nvarchar(255),
    [Late_delivery_risk] float,
    [Category Id] float,
    [Category Name] nvarchar(255),
    [Customer City] nvarchar(255),
    [Customer Country] nvarchar(255),
    [Customer Email] nvarchar(255),
    [Customer Fname] nvarchar(255),
    [Customer Id] float,
    [Customer Lname] nvarchar(255),
    [Customer Password] nvarchar(255),
    [Customer Segment] nvarchar(255),
    [Customer State] nvarchar(255),
    [Customer Street] nvarchar(255),
    [Customer Zipcode] float,
    [Department Id] float,
    [Department Name] nvarchar(255),
    [Latitude] float,
    [Longitude] float,
    [Market] nvarchar(255),
    [Order City] nvarchar(255),
    [Order Country] nvarchar(255),
    [Order Customer Id] float,
    [order date (DateOrders)] nvarchar(255),
    [Order Id] float,
    [Order Item Cardprod Id] float,
    [Order Item Discount] float,
    [Order Item Discount Rate] float,
    [Order Item Id] float,
    [Order Item Product Price] float,
    [Order Item Profit Ratio] float,
    [Order Item Quantity] float,
    [Sales] float,
    [Order Item Total] float,
    [Order Profit Per Order] float,
    [Order Region] nvarchar(255),
    [Order State] nvarchar(255),
    [Order Status] nvarchar(255),
    [Product Card Id] float,
    [Product Category Id] float,
    [Product Name] nvarchar(255),
    [Product Price] float,
    [shipping date (DateOrders)] nvarchar(255),
    [Shipping Mode] nvarchar(255)
)

SELECT * FROM TE_FA_COSUPPLY_RETAIL_DATA_SSRS

------------------------------------------------------------------------------------------------------------