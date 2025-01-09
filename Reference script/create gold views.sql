--create view calender

CREATE VIEW gold.calender
AS
SELECT
   *
FROM OPENROWSET
         (
            BULK'https://awstoragedatalake123456.dfs.core.windows.net/silver/AdventureWorks_Calendar',
            FORMAT = 'PARQUET'
         ) as query1 


--create view customers

CREATE VIEW gold.customers
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://awstoragedatalake123456.dfs.core.windows.net/silver/AdventureWorks_Customers/',
            FORMAT = 'PARQUET'
        ) as query2


--create view products

CREATE VIEW gold.products
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://awstoragedatalake123456.dfs.core.windows.net/silver/AdventureWorks_Products/',
            FORMAT = 'PARQUET'
        ) as query3


-- create view returns

CREATE VIEW gold.returns
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://awstoragedatalake123456.dfs.core.windows.net/silver/AdventureWorks_Returns/',
            FORMAT = 'PARQUET'
        ) as query4

-- create view sales

CREATE VIEW gold.sales
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://awstoragedatalake123456.dfs.core.windows.net/silver/AdventureWorks_Sales/',
            FORMAT = 'PARQUET'
        ) as query5

--create view product subcategories

CREATE VIEW gold.subcat
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://awstoragedatalake123456.dfs.core.windows.net/silver/AdventureWorks_Subcategories/',
            FORMAT = 'PARQUET'
        ) as query6

--create view territories

CREATE VIEW gold.territories
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://awstoragedatalake123456.dfs.core.windows.net/silver/AdventureWorks_Territories/',
            FORMAT = 'PARQUET'
        ) as query7

