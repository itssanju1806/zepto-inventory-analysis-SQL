# 🛒 Zepto Inventory & Product Analysis | SQL Portfolio Project

![SQL](https://img.shields.io/badge/SQL-Server-blue?style=for-the-badge&logo=microsoftsqlserver)
![Database](https://img.shields.io/badge/Database-Microsoft%20SQL%20Server-red?style=for-the-badge)
![Tool](https://img.shields.io/badge/Tool-SSMS-lightgrey?style=for-the-badge)

## 📌 Project Overview

This project presents an end-to-end **Zepto Inventory & Product Analysis using Microsoft SQL Server**, developed to demonstrate how SQL can be used to solve real-world business problems and generate actionable insights from product and inventory data.

The analysis focuses on **product pricing, discounts, revenue potential, inventory levels, stock availability, category performance, product value, and inventory efficiency**.

The project is structured around **18 business-driven analytical questions**, with each question connected to a specific business problem and its potential business impact.

---

## 🏢 Company Overview

**Zepto** is a quick-commerce platform operating across a wide range of product categories. With a large assortment of products, effective management of **pricing, discounts, inventory availability, product value, and stock levels** is critical for maintaining customer satisfaction and maximizing revenue opportunities.

The dataset contains product-level information covering:

- Product SKU
- Product category
- Product name
- Maximum Retail Price (MRP)
- Discount percentage
- Available quantity
- Discounted selling price
- Product weight
- Out-of-stock status
- Product quantity

As the business grows, management needs to understand **pricing patterns, discount strategies, revenue potential, inventory distribution, product availability, and category-level performance** to make informed business decisions.

This SQL analysis provides a structured approach to answering these business questions and supporting data-driven decision-making.

---

## 🎯 Business Objectives

The key objectives of this project are to:

- Identify products offering the highest discounts.
- Identify high-MRP products that are currently out of stock.
- Estimate revenue potential across product categories.
- Evaluate products with high MRP and relatively low discounts.
- Identify categories offering the highest average discounts.
- Compare products based on price per gram.
- Segment products based on inventory quantity.
- Analyze total inventory weight by category.
- Identify categories holding the highest inventory quantities.
- Identify products with the highest estimated revenue potential.
- Analyze out-of-stock products across categories.
- Calculate the overall out-of-stock percentage.
- Identify products with the highest absolute discount amounts.
- Compare average MRP and selling prices across categories.
- Identify categories with the highest potential revenue.
- Identify high-inventory products with relatively low discounts.
- Analyze inventory distribution across quantity segments.
- Compare categories based on average price per gram.

---

## 🚨 Business Problems

1. Identify products offering the highest discount percentages.

2. Identify high-value products that are currently unavailable.

3. Determine the estimated revenue potential across product categories.

4. Identify high-priced products with relatively low discounts.

5. Identify categories offering the highest average discounts.

6. Compare products based on price per gram to identify better-value options.

7. Classify products based on inventory quantity levels.

8. Measure the total physical inventory weight across categories.

9. Identify categories holding the largest inventory quantities.

10. Identify products with the highest estimated revenue potential.

11. Identify categories experiencing the highest number of stock-outs.

12. Measure the proportion of products currently unavailable.

13. Identify products offering the largest absolute price reductions.

14. Compare average product pricing across categories.

15. Identify categories with the highest revenue potential from available inventory.

16. Identify products with high inventory levels but relatively low discounts.

17. Determine the distribution of products across Low, Medium, and Bulk inventory segments.

18. Compare categories based on their average price per gram.

---

## ❓ Business Questions

### 1️⃣ Product Discounts

What are the top 10 best-value products based on discount percentage?

### 2️⃣ High-MRP Products Out of Stock

What are the products with high MRP but currently out of stock?

### 3️⃣ Estimated Revenue by Category

What is the estimated revenue for each category?

### 4️⃣ High-MRP & Low-Discount Products

Which products have MRP greater than ₹500 and discount below 10%?

### 5️⃣ Top Categories by Average Discount

What are the top 5 categories offering the highest average discount percentage?

### 6️⃣ Price per Gram Analysis

What is the price per gram for products above 100g, sorted by best value?

### 7️⃣ Inventory Segmentation

How can products be grouped into Low, Medium, and Bulk inventory segments?

### 8️⃣ Total Inventory Weight

What is the total inventory weight per category?

### 9️⃣ Inventory Quantity by Category

Which product categories have the highest total inventory quantity?

### 🔟 Top Products by Estimated Revenue

What are the top 10 products generating the highest estimated revenue?

### 1️⃣1️⃣ Out-of-Stock Products by Category

Which categories have the highest number of out-of-stock products?

### 1️⃣2️⃣ Overall Out-of-Stock Percentage

What percentage of products are currently out of stock?

### 1️⃣3️⃣ Highest Discount Amount

Which products have the highest discount amount?

### 1️⃣4️⃣ Average MRP & Selling Price

What is the average MRP and discounted selling price for each category?

### 1️⃣5️⃣ Potential Revenue by Category

Which categories have the highest potential revenue from available inventory?

### 1️⃣6️⃣ High Inventory & Low Discount

Which products have high inventory quantity but relatively low discounts?

### 1️⃣7️⃣ Inventory Quantity Distribution

What is the distribution of products across different inventory quantity segments?

### 1️⃣8️⃣ Average Price per Gram by Category

Which categories have the highest average price per gram?

---

## 💼 Business Impact

1. Helps optimize promotional strategies and highlight attractive customer offers.

2. Helps prioritize replenishment and minimize potential revenue loss.

3. Supports category prioritization and revenue-focused business planning.

4. Helps evaluate pricing competitiveness and identify discount optimization opportunities.

5. Helps evaluate discount intensity and improve promotional budget allocation.

6. Supports value-for-money analysis and competitive pricing decisions.

7. Enables better stock monitoring and targeted inventory management.

8. Supports storage, handling, and logistics planning.

9. Helps optimize stock allocation and inventory planning.

10. Helps prioritize high-value products and focus sales efforts effectively.

11. Helps prioritize replenishment and reduce lost sales opportunities.

12. Provides a quick overview of inventory health and product availability.

13. Helps assess promotional effectiveness and optimize discount strategies.

14. Supports category-level pricing analysis and competitive positioning.

15. Helps prioritize high-potential categories and improve inventory allocation.

16. Helps optimize pricing and reduce the risk of inventory buildup.

17. Enables targeted inventory monitoring and more effective replenishment planning.

18. Supports category-level pricing evaluation and identification of high-value product segments.

---

## 🛠️ Tools & Technologies

| Tool / Technology | Purpose |
|---|---|
| **Microsoft SQL Server** | Database management and analysis |
| **SQL Server Management Studio (SSMS)** | SQL development environment |
| **SQL** | Data analysis and business problem-solving |
| **BULK INSERT** | Importing CSV data into SQL Server |

---

## 📂 Dataset Overview

The dataset contains **product-level inventory and pricing information** with approximately **3,732 product records**.

### Key Columns

| Column | Description |
|---|---|
| `sku_id` | Unique identifier for each product |
| `category` | Product category |
| `name` | Product name |
| `mrp` | Maximum Retail Price of the product |
| `discountPercent` | Discount percentage offered on the product |
| `availableQuantity` | Available inventory quantity |
| `discountedSellingPrice` | Selling price after applying discount |
| `weightInGms` | Product weight in grams |
| `outOfStock` | Indicates whether the product is out of stock |
| `quantity` | Product quantity measure used for inventory analysis |

---

## 🔄 Project Workflow

**Raw CSV Dataset**  
↓  
**Data Import into SQL Server**  
↓  
**Table Creation**  
↓  
**Data Loading using BULK INSERT**  
↓  
**Data Validation**  
↓  
**NULL Value Checks**  
↓  
**Business Problem Identification**  
↓  
**SQL-Based Data Analysis**  
↓  
**Business Questions 1–18**  
↓  
**Insights & Business Impact**  
↓  
**Recommendations**

---

## 🔍 SQL Analysis

```sql

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

```

### 1️⃣ Top 10 Best-Value Products

**Business Question:**  
What are the top 10 best-value products based on discount percentage?

**Analysis Approach:**

- Select unique product names and pricing information.
- Sort products by `discountPercent` in descending order.
- Use `TOP 10` to identify the products offering the highest discounts.
- Use `DISTINCT` to avoid duplicate product entries.

**Business Value:**  
Helps optimize promotional strategies and identify products offering strong customer value.

---

### 2️⃣ High-MRP Products Out of Stock

**Business Question:**  
What are the products with high MRP but currently out of stock?

**Analysis Approach:**

- Filter products based on a high MRP threshold.
- Filter products where `outOfStock = 1`.
- Identify products that may represent significant lost-sales opportunities.

**Business Value:**  
Helps prioritize replenishment for high-value products and minimize potential revenue loss.

---

### 3️⃣ Estimated Revenue by Category

**Business Question:**  
What is the estimated revenue for each category?

**Analysis Approach:**

Estimated revenue is calculated using:

`discountedSellingPrice × quantity`

- Aggregate the estimated revenue using `SUM()`.
- Group the results by `category`.
- Sort categories based on revenue potential.

**Business Value:**  
Supports category prioritization and revenue-focused business planning.

---

### 4️⃣ High-MRP & Low-Discount Products

**Business Question:**  
Which products have MRP greater than ₹500 and discount below 10%?

**Analysis Approach:**

- Filter products where `mrp > 500`.
- Apply a second condition where `discountPercent < 10`.
- Compare product pricing and discount levels.

**Business Value:**  
Helps identify potentially less competitive products and opportunities for pricing or discount optimization.

---

### 5️⃣ Top 5 Categories by Average Discount

**Business Question:**  
What are the top 5 categories offering the highest average discount percentage?

**Analysis Approach:**

- Group products by category.
- Calculate average discount using `AVG()`.
- Round the result for better readability.
- Sort categories by average discount in descending order.
- Use `TOP 5`.

**Business Value:**  
Helps evaluate discount intensity and improve promotional budget allocation.

---

### 6️⃣ Price per Gram Analysis

**Business Question:**  
What is the price per gram for products above 100g, sorted by best value?

**Analysis Approach:**

Price per gram is calculated using:

`discountedSellingPrice ÷ weightInGms`

- Filter products where weight is greater than 100 grams.
- Calculate price per gram.
- Use `ROUND()` for numerical presentation.
- Sort by price per gram.

**Business Value:**  
Supports value-for-money analysis and competitive pricing decisions.

---

### 7️⃣ Inventory Segmentation

**Business Question:**  
How can products be grouped into Low, Medium, and Bulk inventory segments?

**Analysis Approach:**

- Use `CASE WHEN` for inventory segmentation.
- Classify products based on quantity thresholds.
- Group products by inventory segment.
- Count products in each segment.

**Business Value:**  
Enables better stock monitoring and targeted inventory management.

---

### 8️⃣ Total Inventory Weight by Category

**Business Question:**  
What is the total inventory weight per category?

**Analysis Approach:**

- Calculate inventory weight using product weight and quantity.
- Aggregate total inventory weight using `SUM()`.
- Group results by category.
- Sort categories based on total inventory weight.

**Business Value:**  
Supports storage, handling, and logistics planning.

---

### 9️⃣ Inventory Quantity by Category

**Business Question:**  
Which product categories have the highest total inventory quantity?

**Analysis Approach:**

- Aggregate product quantity using `SUM()`.
- Group the results by category.
- Sort categories by total quantity in descending order.

**Business Value:**  
Helps optimize stock allocation and inventory planning.

---

### 🔟 Top 10 Products by Estimated Revenue

**Business Question:**  
What are the top 10 products generating the highest estimated revenue?

**Analysis Approach:**

Estimated revenue is calculated using:

`discountedSellingPrice × quantity`

- Calculate estimated product-level revenue.
- Sort products in descending order.
- Use `TOP 10`.

**Business Value:**  
Helps prioritize high-value products and focus sales efforts effectively.

---

### 1️⃣1️⃣ Out-of-Stock Products by Category

**Business Question:**  
Which categories have the highest number of out-of-stock products?

**Analysis Approach:**

- Filter products where `outOfStock = 1`.
- Group products by category.
- Count out-of-stock products.
- Sort categories in descending order.

**Business Value:**  
Helps prioritize category-level replenishment and reduce lost sales opportunities.

---

### 1️⃣2️⃣ Overall Out-of-Stock Percentage

**Business Question:**  
What percentage of products are currently out of stock?

**Analysis Approach:**

- Count products where `outOfStock = 1`.
- Count total products.
- Calculate the percentage using conditional aggregation.
- Use `CAST()` and `DECIMAL` formatting for accurate percentage calculation.

**Business Value:**  
Provides a quick overview of inventory health and overall product availability.

---

### 1️⃣3️⃣ Highest Discount Amount

**Business Question:**  
Which products have the highest discount amount?

**Analysis Approach:**

Discount amount is calculated using:

`MRP − discountedSellingPrice`

- Calculate the absolute discount amount.
- Sort products in descending order.
- Identify products with the largest price reductions.

**Business Value:**  
Helps assess promotional effectiveness and optimize discount strategies.

---

### 1️⃣4️⃣ Average MRP & Selling Price by Category

**Business Question:**  
What is the average MRP and discounted selling price for each category?

**Analysis Approach:**

- Group products by category.
- Calculate average MRP using `AVG(mrp)`.
- Calculate average selling price using `AVG(discountedSellingPrice)`.
- Compare pricing levels across categories.

**Business Value:**  
Supports category-level pricing analysis and competitive positioning.

---

### 1️⃣5️⃣ Potential Revenue by Category

**Business Question:**  
Which categories have the highest potential revenue from available inventory?

**Analysis Approach:**

Potential revenue is estimated using:

`discountedSellingPrice × availableQuantity`

- Calculate product-level potential revenue.
- Aggregate the value by category.
- Rank categories by potential revenue.

**Business Value:**  
Helps prioritize high-potential categories and improve inventory allocation.

---

### 1️⃣6️⃣ High Inventory & Low Discount

**Business Question:**  
Which products have high inventory quantity but relatively low discounts?

**Analysis Approach:**

- Identify products above a defined inventory threshold.
- Filter products with relatively low discount percentages.
- Compare inventory levels against promotional intensity.

**Business Value:**  
Helps optimize pricing and reduce the risk of inventory buildup.

---

### 1️⃣7️⃣ Inventory Quantity Distribution

**Business Question:**  
What is the distribution of products across different inventory quantity segments?

**Analysis Approach:**

- Use `CASE WHEN` to classify products into Low, Medium, and Bulk segments.
- Count products within each segment.
- Compare the overall distribution of inventory quantities.

**Business Value:**  
Enables targeted inventory monitoring and more effective replenishment planning.

---

### 1️⃣8️⃣ Average Price per Gram by Category

**Business Question:**  
Which categories have the highest average price per gram?

**Analysis Approach:**

- Calculate product-level price per gram.
- Aggregate the results by category.
- Calculate average price per gram.
- Rank categories in descending order.

**Business Value:**  
Supports category-level pricing evaluation and identification of high-value product segments.

---

## 🧠 SQL Concepts & Techniques Used

This project demonstrates practical application of several SQL concepts.

### Data Retrieval & Filtering

- `SELECT`
- `WHERE`
- `DISTINCT`
- `TOP`

### Aggregation

- `SUM()`
- `COUNT()`
- `AVG()`

### Grouping & Sorting

- `GROUP BY`
- `ORDER BY`

### Conditional Logic

- `CASE WHEN`

### Conditional Aggregation

Used for:

- Out-of-stock product counts
- Out-of-stock percentages
- Inventory segmentation
- Category-level analysis

### Mathematical Calculations

Used for:

- Estimated revenue
- Potential revenue
- Discount amount
- Price per gram
- Inventory weight

### Data Type Conversion & Formatting

- `CAST()`
- `DECIMAL`
- `ROUND()`

### Common Table Expressions

- `WITH` / CTEs for structured analysis and inventory segmentation.

### Data Import

- `BULK INSERT`

---

## 📊 Key Analysis Areas

### 🛍️ Product Performance

Identify high-discount products, high-revenue products, and products with high inventory levels.

### 💰 Pricing Analysis

Evaluate MRP, discounted selling price, discount percentage, absolute discount amount, and price per gram.

### 🏷️ Discount Analysis

Identify categories and products receiving the highest discounts and assess promotional intensity.

### 📦 Inventory Analysis

Analyze inventory quantities, inventory weight, inventory segmentation, and category-level stock distribution.

### 🚨 Stock Availability

Identify out-of-stock products, high-value products that are unavailable, and categories with higher stock-out levels.

### 💵 Revenue Potential

Estimate revenue at product and category levels using selling price and inventory quantity.

### 🗂️ Category Performance

Compare categories based on pricing, discounts, inventory, product value, and revenue potential.

### ⚖️ Product Value

Use price-per-gram analysis to compare products and categories on a normalized value basis.

---

## 💡 Key Insights

The analysis is designed to uncover actionable insights across the following areas:

- **Product Value:** Identify products offering the highest discounts and best price-per-gram value.
- **Pricing Strategy:** Evaluate MRP, selling prices, discount percentages, and absolute discount amounts.
- **Revenue Potential:** Identify products and categories with the highest estimated revenue potential.
- **Inventory Performance:** Analyze inventory quantities, weight, and product-level stock distribution.
- **Stock Availability:** Measure overall stock-out levels and identify categories with higher stock-outs.
- **Category Performance:** Compare categories based on revenue, inventory, pricing, discounts, and product value.
- **Inventory Efficiency:** Identify high-inventory products with relatively low discounts.
- **Inventory Segmentation:** Classify products into Low, Medium, and Bulk inventory segments.

---

## 📌 Business Recommendations

Based on the business objectives addressed through the analysis, Zepto can consider the following actions:

1. **Prioritize replenishment** for high-MRP products and categories experiencing higher stock-outs to minimize potential lost sales.

2. **Focus inventory investment** on high-revenue products and categories with strong revenue potential.

3. **Optimize discount strategies** by evaluating products and categories with exceptionally high discount percentages or discount amounts.

4. **Review high-inventory, low-discount products** and consider targeted promotions to improve inventory movement.

5. **Use price-per-gram analysis** to evaluate product value and support competitive pricing decisions.

6. **Optimize inventory allocation** by monitoring categories with high inventory quantities and physical inventory weight.

7. **Leverage inventory segmentation** to develop targeted replenishment and stock-monitoring strategies for Low, Medium, and Bulk products.

8. **Monitor stock-out percentage regularly** to maintain healthy product availability and improve customer experience.

9. **Prioritize high-potential categories** based on available inventory and estimated revenue to improve resource allocation.

10. **Continuously evaluate category-level pricing and discount patterns** to balance customer value, sales potential, and inventory efficiency.

---

## 📁 Repository Structure

    Zepto-SQL-Analysis/
    │
    ├── 📂 Dataset/
    │   └── zepto_v2.csv
    │
    ├── 📂 Reports/
    │   ├── Executive Summary.pdf
    │   └── Zepto Inventory Analysis.pptx
    │
    ├── 📂 SQL/
    │   ├── zepto_analysis_db_creation.sql
    │   ├── zepto_data_exploaration_cleaning.sql
    │   └── zepto_inventory_analysis.sql
    │
    └── 📄 README.md

---

## 🚀 Project Highlights

- Built an end-to-end **Zepto inventory and product analysis using SQL Server**.
- Imported CSV data into SQL Server using **BULK INSERT**.
- Created and validated the `zepto` database table.
- Validated the dataset using record counts and NULL-value checks.
- Defined **18 business-driven analytical questions**.
- Connected each business question with a **business problem and business impact**.
- Analyzed product discounts and pricing patterns.
- Identified high-MRP products that are out of stock.
- Estimated revenue potential by product and category.
- Analyzed average discounts across categories.
- Calculated product-level and category-level price per gram.
- Segmented products based on inventory quantity.
- Analyzed total inventory weight and quantity.
- Identified categories with higher stock-out levels.
- Calculated the overall out-of-stock percentage.
- Identified products with the highest absolute discount amounts.
- Compared average MRP and discounted selling prices across categories.
- Identified high-inventory products with relatively low discounts.
- Used SQL aggregation, conditional logic, CTEs, calculations, and data formatting.
- Maintained a strong focus on **business problem-solving and actionable business impact**.

---

## 🎯 Conclusion

This **Zepto Inventory & Product Analysis** project demonstrates how SQL can be used beyond basic querying to solve practical business problems.

By analyzing **product performance, pricing, discounts, revenue potential, inventory levels, stock availability, category performance, and product value**, the project provides a structured foundation for making data-driven decisions across **inventory management, pricing strategy, promotional planning, revenue optimization, replenishment, and operational planning**.

The project showcases practical SQL skills while maintaining a strong focus on **business problem-solving, analytical thinking, and actionable business impact**.

---

## 👨‍💻 About the Project

**Project Type:** SQL Portfolio Project  
**Domain:** Quick Commerce / Retail & Inventory Analytics  
**Database:** Microsoft SQL Server  
**Environment:** SQL Server Management Studio (SSMS)  
**Analysis Type:** Business & Exploratory Data Analysis

---

## 👨‍💻 About Me

**Sanjay Singh**  
Data Analyst | SQL | Excel | Power BI | Python

I am building a portfolio of practical data analytics projects focused on solving business problems through **data analysis, visualization, and actionable insights**.

This project represents my hands-on experience in using **SQL to analyze product and inventory data and answer real-world business questions**.

---

## ⭐ If you found this project useful, feel free to explore the repository and review the SQL analysis.

If you found this project helpful or interesting:

⭐ **Star this repository**  
🍴 **Fork the repository**  
💼 **Connect with me on LinkedIn**  
📂 **Explore my other Data Analytics projects**

---

## 📬 Let's Connect

**Sanjay Singh**

📧 Email: singhsanjay846@gmail.com

💼 LinkedIn: www.linkedin.com/in/sanjay-singh-509aa7135

🐙 GitHub: https://github.com/itssanju1806

I'm always open to connecting with fellow data enthusiasts, analysts, recruiters, and professionals working in the analytics space.

**Thanks for visiting this project!** 🚀
