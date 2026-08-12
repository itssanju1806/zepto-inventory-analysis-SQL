
-- Data Exploaration AND Cleaning -- 

-- 🔎 Data Exploration --

-- Count of Rows -- 

SELECT COUNT(*) FROM zepto;

--	Sample data -- 

SELECT TOP 10 * FROM zepto;

-- Check for NULL values -- 

SELECT * 
FROM zepto
WHERE category is NULL
OR
name is NULL
OR
mrp is NULL
OR
discountPercent is NULL
OR
availableQuantity is NULL
OR
discountedSellingPrice is NULL
OR
weightInGms is NULL
OR
outOfStock is NULL
OR
quantity is NULL;

-- Different product categories -- 

SELECT DISTINCT category
FROM zepto
ORDER BY category ASC;

-- Products in stock vs out of stock (0-Available,1-Out of Stock) -- 

SELECT outOfStock, COUNT(sku_id),
	    CASE 
        WHEN outofStock = 0 THEN 'Available'
        ELSE 'Out of Stock'
    END AS InventoryStatus
FROM zepto
GROUP BY outOfStock;

-- Product names present multiple times --

SELECT name, COUNT(sku_id) AS 'Number of SKU'
FROM zepto
GROUP BY name
HAVING COUNT(sku_id) > 1
ORDER BY COUNT(sku_id) DESC;

-- 🧹 Data Cleaning -- 

-- Products with Price = 0 -- 

SELECT * 
FROM zepto
WHERE mrp = 0 OR discountedSellingPrice = 0;

DELETE 
FROM zepto
WHERE mrp = 0;

-- Convert paise to rupees -- 

UPDATE zepto
SET mrp = mrp/100.0,
discountedSellingPrice = discountedSellingPrice/100.0;

select Top 100 * from zepto;