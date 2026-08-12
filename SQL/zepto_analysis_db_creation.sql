drop table if exists zepto;

DROP TABLE IF EXISTS zepto;

CREATE TABLE zepto (
    sku_id INT IDENTITY(1,1) PRIMARY KEY,
    category VARCHAR(120),
    name VARCHAR(50) NOT NULL,
    mrp NUMERIC(8,2),
    discountPercent NUMERIC(5,2),
    availableQuantity INT,
    discountedSellingPrice NUMERIC(8,2),
    weightInGms INT,
    outOfStock BIT,
    quantity INT
);

SELECT * FROM zepto;

ALTER TABLE zepto
ALTER COLUMN name VARCHAR(150) NOT NULL;

-- USING BULK INSERT FOR IMPORTING DATA INTO THE TABLE --

-- Creating a temporary table to convert the True/False to 1/0, and then insert into your actual table.
-- Because our CSV has True/False in outOfStock while SQL Server BIT expects 0/1, It is not recommended to insert directly into dbo.zepto. --

DROP TABLE IF EXISTS zepto_staging;

CREATE TABLE zepto_staging (
    category VARCHAR(120),
    name VARCHAR(150),
    mrp NUMERIC(8,2),
    discountPercent NUMERIC(5,2),
    availableQuantity INT,
    discountedSellingPrice NUMERIC(8,2),
    weightInGms INT,
    outOfStock VARCHAR(10),
    quantity INT
);

BULK INSERT zepto_staging
FROM 'G:\DA Projects\SQL Projects\Zepto Inventory Analysis\Dataset\zepto_v2.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    TABLOCK
);

SELECT COUNT(*) AS Total_Rows
FROM zepto_staging;

SELECT TOP 10 *
FROM zepto_staging;

-- Inserting into our actual zepto table AND converting True/False to SQL Server's BIT values:-- 

INSERT INTO zepto (
    category,
    name,
    mrp,
    discountPercent,
    availableQuantity,
    discountedSellingPrice,
    weightInGms,
    outOfStock,
    quantity
)
SELECT
    category,
    name,
    mrp,
    discountPercent,
    availableQuantity,
    discountedSellingPrice,
    weightInGms,
    CASE
        WHEN LOWER(outOfStock) = 'true' THEN 1
        WHEN LOWER(outOfStock) = 'false' THEN 0
        ELSE NULL
    END,
    quantity
FROM zepto_staging;

SELECT COUNT(*) AS Total_Rows
FROM zepto;

SELECT TOP 10 *
FROM zepto
ORDER BY sku_id;

-- Total number of records
SELECT COUNT(*) AS Total_Records
FROM zepto;

-- Check for NULL values
SELECT
    COUNT(*) AS Total_Records,
    SUM(CASE WHEN category IS NULL THEN 1 ELSE 0 END) AS Null_Category,
    SUM(CASE WHEN name IS NULL THEN 1 ELSE 0 END) AS Null_Name,
    SUM(CASE WHEN mrp IS NULL THEN 1 ELSE 0 END) AS Null_MRP,
    SUM(CASE WHEN discountPercent IS NULL THEN 1 ELSE 0 END) AS Null_Discount,
    SUM(CASE WHEN availableQuantity IS NULL THEN 1 ELSE 0 END) AS Null_AvailableQuantity,
    SUM(CASE WHEN discountedSellingPrice IS NULL THEN 1 ELSE 0 END) AS Null_SellingPrice,
    SUM(CASE WHEN weightInGms IS NULL THEN 1 ELSE 0 END) AS Null_Weight,
    SUM(CASE WHEN outOfStock IS NULL THEN 1 ELSE 0 END) AS Null_OutOfStock,
    SUM(CASE WHEN quantity IS NULL THEN 1 ELSE 0 END) AS Null_Quantity
FROM zepto;