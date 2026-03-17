-- E-COMMERCE SALES ANALYSIS PROJECT

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

-- 4. TOP 5 STATES
SELECT `ship-state`, ROUND(SUM(Amount),2) AS total_sales
FROM amazon_sale_report
GROUP BY `ship-state`
ORDER BY total_sales DESC
LIMIT 5;

-- 5. TOP 10 PRODUCTS
SELECT Style, COUNT(*) AS total_orders
FROM amazon_sale_report
GROUP BY Style
ORDER BY total_orders DESC
LIMIT 10;

-- 6. SALES BY FULFILLMENT
SELECT Fulfillment, COUNT(*) AS total_orders
FROM amazon_sale_report
GROUP BY Fulfillment;

-- 7. HIGH VS LOW VALUE ORDERS
SELECT 
  CASE 
    WHEN Amount > 1000 THEN 'High Value'
    ELSE 'Low Value'
  END AS order_type,
  COUNT(*) AS total_orders
FROM amazon_sale_report
GROUP BY order_type;

-- 8. TOP STATE (SUBQUERY)
SELECT `ship-state`, total_orders
FROM (
    SELECT `ship-state`, COUNT(*) AS total_orders
    FROM amazon_sale_report
    GROUP BY `ship-state`
) AS state_orders
ORDER BY total_orders DESC
LIMIT 1;
