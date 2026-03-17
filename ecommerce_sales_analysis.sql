-- =====================================
-- E-COMMERCE SALES ANALYSIS PROJECT
-- =====================================

-- 1. TOTAL ORDERS
SELECT COUNT(*) AS total_orders
FROM amazon_sale_report;

-- 2. TOTAL REVENUE
SELECT ROUND(SUM(Amount), 2) AS total_revenue
FROM amazon_sale_report;

-- 3. ORDERS BY STATUS
SELECT Status, COUNT(*) AS total_orders
FROM amazon_sale_report
GROUP BY Status
ORDER BY total_orders DESC;

-- 4. SALES BY TOP 5 STATES
SELECT `ship-state`, ROUND(SUM(Amount), 2) AS total_sales
FROM amazon_sale_report
GROUP BY `ship-state
ORDER BY total_sales DESC
LIMIT 5;

-- 5. TOP 10 SELLING PRODUCTS
SELECT Style, COUNT(*) AS total_orders
FROM amazon_sale_report
GROUP BY Style
ORDER BY total_orders DESC
LIMIT 10;

-- 6. SALES BY FULFILLMENT TYPE
SELECT Fulfilment, COUNT(*) AS total_orders
FROM amazon_sale_report
GROUP BY Fulfilment;