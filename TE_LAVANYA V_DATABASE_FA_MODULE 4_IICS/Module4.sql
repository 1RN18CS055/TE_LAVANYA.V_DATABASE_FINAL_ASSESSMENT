----------MODULE 4------------
------IICS------------
---EXCELTODB----SOURCE-(HEALTH_DATA_IICS)
----DESTINATION----
CREATE TABLE TE_FA_HEALTH_SRC_IICS 
(
    [PID] float,
    [AGE] float,
    [GENDER] nvarchar(255),
    [CATEGORY_NAME] nvarchar(255),
    [SURGERY_CODE] nvarchar(255),
    [DISTRICT_NAME] nvarchar(255),
    [PREAUTH_AMT] float,
    [CLAIM_AMOUNT] float,
    [HOSP_NAME] nvarchar(255),
    [SURGERY_DATE] datetime,
    [DISCHARGE_DATE] datetime
)

SELECT * FROM TE_FA_HEALTH_SRC_IICS

------SOURCE TABLE---SQL (HEALTH_DATA_IICS)
CREATE TABLE TE_FA_HEALTH_SRC_IICS 
(
    [PID] float,
    [AGE] float,
    [GENDER] nvarchar(255),
    [CATEGORY_NAME] nvarchar(255),
    [SURGERY_CODE] nvarchar(255),
    [DISTRICT_NAME] nvarchar(255),
    [PREAUTH_AMT] float,
    [CLAIM_AMOUNT] float,
    [HOSP_NAME] nvarchar(255),
    [SURGERY_DATE] datetime,
    [DISCHARGE_DATE] datetime
)

SELECT * FROM TE_FA_HEALTH_SRC_IICS

-----DESTINATION TABLE-------------SQL

SELECT * FROM TE_FA_HEALTH_TGT_IICS

-------------------------------------------------------------------------------------------------------------
--------AGGREGATE TRANSFORMATION-------------
------SOURCE TABLE------SQL

SELECT * FROM TE_FA_HEALTH_SRC_IICS


---------DESTINATION TABLE-----SQL

SELECT * FROM TE_FA_HEALTH_TGT_AGGR 

---------------------------------------------------------------------------------------------------------------

-------DATA REPLICATION TASK---------
----SOURCE----SQL(lavanya database) 
SELECT * FROM TE_FA_HEALTH_TGT_IICS

------DESTINATION----SQL(dlithe database)
SELECT * FROM LV_TE_FA_HEALTH_TGT_IICS
---------------------------------------------------------------------------------------------------------------
---------IICS SCD1-------
---SOURCE----(HEALTH_DATA)

CREATE TABLE TE_FA_HEALTH_SCD1_SRC
(
PID float,
CATEGORY_NAME nvarchar(255),
HOSP_NAME nvarchar(255),
PREAUTH_AMT float,
CLAIM_AMOUNT float
) 

UPDATE TE_FA_HEALTH_SCD1_SRC
SET CATEGORY_NAME = 'DERMATOLOGY'
WHERE PID = '2'

INSERT INTO TE_FA_HEALTH_SCD1_SRC VALUES(1,'NEPHROLOGY','Rims Govt. General Hospital, Srikakulam',12500,11000)
INSERT INTO TE_FA_HEALTH_SCD1_SRC VALUES(2,'NEPHROLOGY','Rims Govt. General Hospital, Srikakulam',12500,11000)
INSERT INTO TE_FA_HEALTH_SCD1_SRC VALUES(3,'NEPHROLOGY','Rims Govt. General Hospital, Srikakulam',12500,11000)
INSERT INTO TE_FA_HEALTH_SCD1_SRC VALUES(4,'NEPHROLOGY','Rims Govt. General Hospital, Srikakulam',12500,11000)
INSERT INTO TE_FA_HEALTH_SCD1_SRC VALUES(5,'NEPHROLOGY','Rims Govt. General Hospital, Srikakulam',12500,11000)
INSERT INTO TE_FA_HEALTH_SCD1_SRC VALUES(6,'NEPHROLOGY','Rims Govt. General Hospital, Srikakulam',12500,11000)
INSERT INTO TE_FA_HEALTH_SCD1_SRC VALUES(7,'CARDIAC AND CARDIOTHORACIC SURGERY','Karumuri Hospital',40000,115846)
INSERT INTO TE_FA_HEALTH_SCD1_SRC VALUES(8,'CARDIAC AND CARDIOTHORACIC SURGERY','Karumuri Hospital',40000,115846)
INSERT INTO TE_FA_HEALTH_SCD1_SRC VALUES(9,'CARDIOLOGY','Karumuri Hospital',30000,30000)
INSERT INTO TE_FA_HEALTH_SCD1_SRC VALUES(10,'CARDIOLOGY','Karumuri Hospital',40000,40000)
INSERT INTO TE_FA_HEALTH_SCD1_SRC VALUES(11,'PEDIATRICS','Area Hospital Cheerala',35000,25000)
INSERT INTO TE_FA_HEALTH_SCD1_SRC VALUES(12,'ORTHOPEDIC  SURGERY AND PROCEDURES','7 STAR SUPER SPECIALITY HOSPITAL',34114,34114) 

SELECT * FROM TE_FA_HEALTH_SCD1_SRC

-----DESTINATION------
CREATE TABLE TE_FA_HEALTH_SCD1_TGT
(
patient_key FLOAT,
patient_id float,
catg_name nvarchar(255),
hospital_name nvarchar(255),
Checksum  nvarchar(255)
) 


SELECT * FROM TE_FA_HEALTH_SCD1_TGT 

---------------------------------------------------------------------------------------------------------------

---------IICS SCD2-------
---SOURCE----(HEALTH_DATA)

CREATE TABLE TE_FA_HEALTH_SCD2_SRC
(
PID float,
CATEGORY_NAME nvarchar(255),
HOSP_NAME nvarchar(255),
PREAUTH_AMT float,
CLAIM_AMOUNT float
) 

UPDATE TE_FA_HEALTH_SCD2_SRC
SET CATEGORY_NAME = 'ONCOLOGY'
WHERE PID = '11'

INSERT INTO TE_FA_HEALTH_SCD2_SRC VALUES(1,'NEPHROLOGY','Rims Govt. General Hospital, Srikakulam',12500,11000)
INSERT INTO TE_FA_HEALTH_SCD2_SRC VALUES(2,'NEPHROLOGY','Rims Govt. General Hospital, Srikakulam',12500,11000)
INSERT INTO TE_FA_HEALTH_SCD2_SRC VALUES(3,'NEPHROLOGY','Rims Govt. General Hospital, Srikakulam',12500,11000)
INSERT INTO TE_FA_HEALTH_SCD2_SRC VALUES(4,'NEPHROLOGY','Rims Govt. General Hospital, Srikakulam',12500,11000)
INSERT INTO TE_FA_HEALTH_SCD2_SRC VALUES(5,'NEPHROLOGY','Rims Govt. General Hospital, Srikakulam',12500,11000)
INSERT INTO TE_FA_HEALTH_SCD2_SRC VALUES(6,'NEPHROLOGY','Rims Govt. General Hospital, Srikakulam',12500,11000)
INSERT INTO TE_FA_HEALTH_SCD2_SRC VALUES(7,'CARDIAC AND CARDIOTHORACIC SURGERY','Karumuri Hospital',40000,115846)
INSERT INTO TE_FA_HEALTH_SCD2_SRC VALUES(8,'CARDIAC AND CARDIOTHORACIC SURGERY','Karumuri Hospital',40000,115846)
INSERT INTO TE_FA_HEALTH_SCD2_SRC VALUES(9,'CARDIOLOGY','Karumuri Hospital',30000,30000)
INSERT INTO TE_FA_HEALTH_SCD2_SRC VALUES(10,'CARDIOLOGY','Karumuri Hospital',40000,40000)
INSERT INTO TE_FA_HEALTH_SCD2_SRC VALUES(11,'PEDIATRICS','Area Hospital Cheerala',35000,25000)
INSERT INTO TE_FA_HEALTH_SCD2_SRC VALUES(12,'ORTHOPEDIC  SURGERY AND PROCEDURES','7 STAR SUPER SPECIALITY HOSPITAL',34114,34114) 

SELECT * FROM TE_FA_HEALTH_SCD2_SRC

TRUNCATE TABLE TE_FA_HEALTH_SCD2_SRC

-----DESTINATION------
CREATE TABLE TE_FA_HEALTH_SCD2_TGT
(
patient_key FLOAT,
patient_id float,
catg_name nvarchar(255),
hospital_name nvarchar(255),
start_date DATE,
end_date DATE,
Checksum  nvarchar(255)
) 



SELECT * FROM TE_FA_HEALTH_SCD2_TGT

TRUNCATE TABLE TE_FA_HEALTH_SCD2_TGT