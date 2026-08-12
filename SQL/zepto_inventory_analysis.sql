
-- SOLVING BUSINESS QUESTIONS ( DATA ANALYSIS) --

-- Q1. Find the top 10 best-value products based on the discount percentage. --

SELECT DISTINCT TOP 10 name, mrp, discountPercent
FROM zepto
ORDER BY discountPercent DESC;

-- Business Problem: Identify products offering the highest discounts. -- 
-- Business Impact: Supports promotional planning and customer value optimization.--

-- Q2.What are the Products with High MRP but Out of Stock --

SELECT DISTINCT name, mrp
FROM zepto
WHERE outOfStock = 1 and mrp > 300     --- NOTE : 1 = TRUE AND 0 = FALSE --- 
ORDER BY mrp DESC;

-- Business Problem: Identify high-value products with inventory gaps. --
-- Business Impact: Helps prioritize replenishment and minimize lost sales. --

-- Q3.Calculate Estimated Revenue for each category -- 

SELECT category, 
FORMAT(SUM(discountedSellingPrice * availableQuantity),'C0','en-IN') AS Revenue
FROM zepto
GROUP BY category
ORDER BY SUM(discountedSellingPrice * availableQuantity) DESC;

-- Business Problem: Measure revenue potential across product categories. --
-- Business Impact: Supports category prioritization and sales planning. -- 

-- Q4. Find all products where MRP is greater than ₹500 and discount is less than 10%. -- 

SELECT DISTINCT name, mrp, discountPercent
FROM zepto
WHERE mrp > 500 AND discountPercent < 10
ORDER BY mrp DESC, discountPercent DESC;

-- Business Problem: Identify products priced above ₹500 with discounts below 10%. --
-- Business Impact: Helps evaluate pricing competitiveness and discount strategy. --

-- Q5. Identify the top 5 categories offering the highest average discount percentage. -- 

SELECT DISTINCT TOP 5 category,
CAST(ROUND(AVG(discountPercent),2) AS DECIMAL(10,2)) AS avg_discount_percent
FROM zepto
GROUP BY category
ORDER BY avg_discount_percent DESC;

-- Business Problem: Identify categories with the highest average discounts. --
-- Business Impact: Helps optimize promotional strategies and discount allocation. --

-- Q6. Find the price per gram for products above 100g and sort by best value.--

SELECT DISTINCT
    name,
    discountedSellingPrice,
    weightInGms,
    CAST(
        ROUND(
            CAST(discountedSellingPrice AS DECIMAL(10,2)) / NULLIF(weightInGms, 0),
            2
        ) AS DECIMAL(10,2)
    ) AS price_per_gm
FROM zepto
WHERE weightInGms > 100
ORDER BY price_per_gm ASC;

-- Business Problem: Compare product value based on price per gram. --
-- Business Impact: Identifies cost-effective products and supports pricing analysis.-- 

-- Q7.Group the products into categories like Low, Medium, Bulk. --

SELECT DISTINCT name, weightInGms,
CASE 
    WHEN weightInGms < 1000 THEN 'Low'
    WHEN weightInGms < 5000 THEN 'Medium'
    ELSE 'BULK'
    END AS weight_category
FROM zepto;

-- Business Problem: Segment products based on available quantity. --
-- Business Impact: Improves inventory monitoring and replenishment planning. --

-- Q8.What is the Total Inventory Weight Per Category --

SELECT category, SUM(weightInGms * availableQuantity) AS total_weight
FROM zepto
GROUP BY category
ORDER BY total_weight DESC;

-- Business Problem: Measure inventory weight across categories. --
-- Business Impact: Supports storage, handling, and logistics planning. --

-- Q9. Which product categories have the highest total inventory quantity? -- 

SELECT category,
SUM(availableQuantity) AS total_inventory_quantity
FROM zepto 
GROUP BY category
ORDER BY total_inventory_quantity DESC;

-- Business Problem: Identify categories holding the largest inventory quantities. --
-- Business Impact: Supports inventory planning and efficient stock allocation. --

-- Q10. What are the top 10 products generating the highest estimated revenue? --

SELECT TOP 10 name, availableQuantity, discountedSellingPrice,
CAST(availableQuantity * discountedSellingPrice AS DECIMAL(10,2)) AS estimated_revenue
FROM zepto
ORDER BY estimated_revenue DESC;

-- Business Problem: Identify products with the highest estimated revenue potential. --
-- Business Impact: Helps prioritize high-value products and optimize sales strategies. --

-- Q11. Which categories have the highest number of out-of-stock products? -- 

SELECT category,
COUNT(outOfStock) AS out_of_stock_products
FROM zepto
WHERE outOfStock = 1
GROUP BY category
ORDER BY out_of_stock_products DESC;

-- Business Problem: Identify categories experiencing the most stock-outs. --
-- Business Impact: Helps prioritize replenishment and reduce potential lost sales. --

-- Q12. What percentage of products are currently out of stock? --

SELECT
    COUNT(CASE WHEN outOfStock = 1 THEN 1 END) AS out_of_stock_products,
    COUNT(*) AS total_products,
    CAST(
        100.0 * COUNT(CASE WHEN outOfStock = 1 THEN 1 END) / COUNT(*)
        AS DECIMAL(10,2)
    ) AS out_of_stock_percentage
FROM zepto;

-- Business Problem: Measure the proportion of products currently unavailable. --
-- Business Impact: Provides a quick view of inventory health and availability. --

-- Q13. Which products have the highest discount amount (MRP − discounted selling price)? --

SELECT TOP 10
    name,
    category,
    mrp,
    discountedSellingPrice,
    CAST(
        mrp - discountedSellingPrice
        AS DECIMAL(10,2)
    ) AS discount_amount
FROM zepto
ORDER BY discount_amount DESC;

-- Business Problem: Identify products offering the largest absolute price reductions. --
-- Business Impact: Helps evaluate promotional effectiveness and discount strategy. --

-- Q14. What is the average MRP and discounted selling price for each category? --

SELECT category,
CAST(
AVG(mrp) AS DECIMAL(10,2)
) AS avg_mrp,
CAST(
AVG(discountedSellingPrice) AS DECIMAL(10,2)
) AS avg_discounted_SP
FROM zepto
GROUP BY category
ORDER BY avg_mrp DESC;

-- Business Problem: Compare average pricing across product categories. --
-- Business Impact: Supports category-level pricing and competitive analysis. --

-- Q15. Which categories have the highest potential revenue from currently available inventory? --

SELECT
    category,
    SUM(availableQuantity) AS total_available_quantity,
    CAST(
        SUM(discountedSellingPrice * availableQuantity)
        AS DECIMAL(14,2)
    ) AS potential_revenue
FROM zepto
WHERE outOfStock = 0
GROUP BY category
ORDER BY potential_revenue DESC;

-- Business Problem: Identify categories with the highest revenue potential from available stock. --
-- Business Impact: Helps prioritize high-potential categories and inventory allocation. --

-- Q16. Which products have high inventory quantity but relatively low discounts? -- 

SELECT
    name, category, availableQuantity, discountPercent
FROM zepto
WHERE availableQuantity > (
    SELECT AVG(availableQuantity)
    FROM zepto
)
AND discountPercent < (
    SELECT AVG(discountPercent)
    FROM zepto
)
ORDER BY availableQuantity DESC;

-- Business Problem: Identify products with high stock levels but relatively low discounts. --
-- Business Impact: Helps optimize pricing and reduce potential inventory buildup. --

-- Q17. What is the distribution of products across different inventory quantity segments? -- 

WITH inventory_segments AS (
    SELECT
        CASE
            WHEN quantity <= 10 THEN 'Low'
            WHEN quantity <= 50 THEN 'Medium'
            ELSE 'Bulk'
        END AS inventory_segment
    FROM zepto
)
SELECT
    inventory_segment,
    COUNT(*) AS product_count
FROM inventory_segments
GROUP BY inventory_segment
ORDER BY
    CASE inventory_segment
        WHEN 'Low' THEN 1
        WHEN 'Medium' THEN 2
        WHEN 'Bulk' THEN 3
    END;

-- Business Problem: Classify products into Low, Medium, and Bulk inventory segments. --
-- Business Impact: Enables better stock monitoring and targeted replenishment planning. --

-- Q18. Which categories have the highest average price per gram? -- 

SELECT
    category,
    CAST(
        AVG(
            CAST(discountedSellingPrice AS DECIMAL(10,2))
            / NULLIF(weightInGms, 0)
        )
        AS DECIMAL(10,2)
    ) AS avg_price_per_gram
FROM zepto
WHERE weightInGms > 100
GROUP BY category
ORDER BY avg_price_per_gram DESC;

-- Business Problem: Compare product value across categories using price per gram. --
-- Business Impact: Supports pricing evaluation and identification of high-value categories. --