-- Sales Data Analysis SQL Script

-- 1. Top 5 सबसे अधिक बिक्री करने वाले प्रोडक्ट्स
SELECT Product, SUM(Sales) AS Total_Sales 
FROM SalesData 
GROUP BY Product 
ORDER BY Total_Sales DESC 
LIMIT 5;

-- 2. सबसे ज्यादा Revenue देने वाले ग्राहक
SELECT Customer_Name, SUM(Sales) AS Total_Revenue 
FROM SalesData 
GROUP BY Customer_Name 
ORDER BY Total_Revenue DESC 
LIMIT 5;

-- 3. पिछले 6 महीनों का ट्रेंड एनालिसिस
SELECT strftime('%Y-%m', Order_Date) AS Month, SUM(Sales) AS Monthly_Sales 
FROM SalesData 
WHERE Order_Date >= date('now', '-6 months')
GROUP BY Month
ORDER BY Month;

-- 4. Region-wise Sales Distribution
SELECT Region, SUM(Sales) AS Total_Sales 
FROM SalesData 
GROUP BY Region 
ORDER BY Total_Sales DESC;
