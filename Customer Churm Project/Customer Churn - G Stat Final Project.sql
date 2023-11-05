
--Skills used: Joins, CTE's, Temp Tables, Windows Functions, Aggregate Functions, Creating Views, Converting Data Types

USE [G-Academy ]
GO


-- Churned users by category, and the usage of services out of the groups' total 
SELECT Churn_Category,
	   COUNT(*) AS 'Total Customers',
	   CAST(SUM(CASE WHEN Internet_Service = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*) AS DECIMAL (5,4))	     AS 'Total Internet Users',
	   CAST(SUM(CASE WHEN Online_Security = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*)	AS DECIMAL (5,4))	     AS 'Online Security Users',
	   CAST(SUM(CASE WHEN Online_Backup = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*) AS DECIMAL (5,4))          AS 'Online Backup Users',
	   CAST(SUM(CASE WHEN Device_Protection_Plan = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*) AS DECIMAL (5,4)) AS 'DPP Users',
	   CAST(SUM(CASE WHEN Premium_Tech_Support = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*) AS DECIMAL (5,4))   AS 'PT Support Users',
	   CAST(SUM(CASE WHEN Streaming_Movies = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*) AS DECIMAL (5,4))	     AS 'Movie Stream Users',
	   CAST(SUM(CASE WHEN Streaming_Music = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*) AS DECIMAL (5,4))	     AS 'Music Stream Users',
	   CAST(SUM(CASE WHEN Streaming_TV = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*) AS DECIMAL (5,4))           AS 'TV Stream Users',
	   CAST(SUM(CASE WHEN Unlimited_Data = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*) AS DECIMAL (5,4))         AS 'UL Data Users',
	   CAST(SUM(CASE WHEN Paperless_Billing = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*) AS DECIMAL (5,4))      AS 'Paperless Billing Users'
FROM [Telecom _Customer_Churm]
WHERE Customer_Status = 'Churned'
GROUP BY Churn_Category
ORDER BY [Total Customers] DESC

-- Churned users by category and reason, and the usage of services out of the groups' total 
SELECT Churn_Category, Churn_Reason,
	   COUNT(*) AS 'Total Customers',
	   CAST(SUM(CASE WHEN Internet_Service = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*) AS DECIMAL (5,4))	     AS 'Total Internet Users',
	   CAST(SUM(CASE WHEN Online_Security = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*)	AS DECIMAL (5,4))	     AS 'Online Security Users',
	   CAST(SUM(CASE WHEN Online_Backup = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*) AS DECIMAL (5,4))          AS 'Online Backup Users',
	   CAST(SUM(CASE WHEN Device_Protection_Plan = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*) AS DECIMAL (5,4)) AS 'DPP Users',
	   CAST(SUM(CASE WHEN Premium_Tech_Support = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*) AS DECIMAL (5,4))   AS 'PT Support Users',
	   CAST(SUM(CASE WHEN Streaming_Movies = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*) AS DECIMAL (5,4))	     AS 'Movie Stream Users',
	   CAST(SUM(CASE WHEN Streaming_Music = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*) AS DECIMAL (5,4))	     AS 'Music Stream Users',
	   CAST(SUM(CASE WHEN Streaming_TV = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*) AS DECIMAL (5,4))           AS 'TV Stream Users',
	   CAST(SUM(CASE WHEN Unlimited_Data = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*) AS DECIMAL (5,4))         AS 'UL Data Users',
	   CAST(SUM(CASE WHEN Paperless_Billing = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*) AS DECIMAL (5,4))      AS 'Paperless Billing Users'
FROM [Telecom _Customer_Churm]
WHERE Customer_Status = 'Churned'
GROUP BY Churn_Category, Churn_Reason
ORDER BY Churn_Category, [Total Customers] DESC

-- General information for beggining slide
SELECT COUNT(*) AS 'Total Customers',
	   SUM(Total_Revenue) AS 'Total Revenue'
FROM [Telecom _Customer_Churm]

-- Churned users by category, and the usage of services out of the groups' total including statistics

;WITH CTE AS (
SELECT Churn_Category,
	   COUNT(*) AS 'Total Customers',
	   CAST(SUM(CASE WHEN Internet_Service = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*) AS DECIMAL (5,4))	     AS 'Total Internet Users',
	   CAST(SUM(CASE WHEN Online_Security = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*)	AS DECIMAL (5,4))	     AS 'Online Security Users',
	   CAST(SUM(CASE WHEN Online_Backup = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*) AS DECIMAL (5,4))          AS 'Online Backup Users',
	   CAST(SUM(CASE WHEN Device_Protection_Plan = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*) AS DECIMAL (5,4)) AS 'DPP Users',
	   CAST(SUM(CASE WHEN Premium_Tech_Support = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*) AS DECIMAL (5,4))   AS 'PT Support Users',
	   CAST(SUM(CASE WHEN Streaming_Movies = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*) AS DECIMAL (5,4))	     AS 'Movie Stream Users',
	   CAST(SUM(CASE WHEN Streaming_Music = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*) AS DECIMAL (5,4))	     AS 'Music Stream Users',
	   CAST(SUM(CASE WHEN Streaming_TV = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*) AS DECIMAL (5,4))           AS 'TV Stream Users',
	   CAST(SUM(CASE WHEN Unlimited_Data = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*) AS DECIMAL (5,4))         AS 'UL Data Users',
	   CAST(SUM(CASE WHEN Paperless_Billing = 'YES' THEN 1 ELSE 0 END)*1.0 / COUNT(*) AS DECIMAL (5,4))      AS 'Paperless Billing Users',
	   MIN(Tenure_in_Months) AS 'Min Tenure',
	   MAX(Tenure_in_Months) AS 'Max Tenure',
	   AVG(Tenure_in_Months) AS 'AVG Tenure'
FROM [Telecom _Customer_Churm]
WHERE Customer_Status = 'Churned'
GROUP BY Churn_Category),

CTE_MEDIAN AS (
SELECT DISTINCT Churn_Category,PERCENTILE_CONT(0.5) 
        WITHIN GROUP (ORDER BY Tenure_in_Months DESC) 
        OVER (PARTITION BY Churn_Category)
        AS 'Median Tenure'
FROM [Telecom _Customer_Churm]
			  )

SELECT CTE.*, CTE_MEDIAN.[Median Tenure]
FROM CTE
LEFT JOIN CTE_MEDIAN
ON CTE.Churn_Category = CTE_MEDIAN.Churn_Category
ORDER BY CTE.[Total Customers] DESC

/* Understanding users tendency to churn is between 9 to 11.5 months, and most churned users did not have the important cover services (Online Security, Online Back, Device Protection Plan and Premium Tech Support),
   A forecast formula is proposed, so there is enough time to propose these services for "about to churn" customers
   Assumptions: 
   1. No customer retention system to propose offers in order to retain customers
   2. The median churn across churn categories ranges between 9 to 11.5 months of memmbership
   3. There are four key services that influence churn, that most churned customers did not have:
	  - Online Security
	  - Online Back
	  - Device Protection Plan
	  - Premium Tech Support */

SELECT Customer_ID, Age, Married, Tenure_in_Months,
ISNULL(Online_Security,'No')         AS Online_Security,
ISNULL(Online_Backup,'No')           AS Online_Backup,
ISNULL(Device_Protection_Plan, 'No') AS Device_Protection_Plan,
ISNULL(Premium_Tech_Support, 'No')   AS Premium_Tech_Support,
Customer_Status,
Churn_Category,
CASE WHEN Tenure_in_Months >= 6
        AND
        (ISNULL(Online_Security,'No') = 'No' OR ISNULL(Online_Backup,'No') = 'No' OR  ISNULL(Device_Protection_Plan, 'No') = 'No' OR ISNULL(Premium_Tech_Support, 'No') = 'No')
		THEN 'Yes'
		ELSE 'No'
END AS 'About to Churn?'
FROM [Telecom _Customer_Churm]

-- How many customers are about to churn? and how accurate is the formula

;WITH CTE AS (
			  SELECT Customer_ID, Age, Married, Tenure_in_Months,
			  ISNULL(Online_Security,'No')         AS Online_Security,
			  ISNULL(Online_Backup,'No')           AS Online_Backup,
			  ISNULL(Device_Protection_Plan, 'No') AS Device_Protection_Plan,
			  ISNULL(Premium_Tech_Support, 'No')   AS Premium_Tech_Support,
			  Customer_Status,
			  Churn_Category,
			  CASE WHEN Tenure_in_Months >= 6
       			   AND
       			   (ISNULL(Online_Security,'No') = 'No' OR ISNULL(Online_Backup,'No') = 'No' OR  ISNULL(Device_Protection_Plan, 'No') = 'No' OR ISNULL(Premium_Tech_Support, 'No') = 'No')
				   THEN 'Yes'
				   ELSE 'No'
		      END AS 'About to Churn?'
			  FROM [Telecom _Customer_Churm]
			  )
-- Learning about different attributes of customers who slipped the formula
SELECT Tenure_in_Months,
		CASE WHEN Age BETWEEN 19 AND 25 THEN '19-25'
			 WHEN Age BETWEEN 26 AND 33 THEN '26-33'
			 WHEN Age BETWEEN 34 AND 41 THEN '34-41'
			 WHEN Age BETWEEN 42 AND 49 THEN '42-49'
			 WHEN AGE BETWEEN 50 AND 57 THEN '50-57'
			 WHEN Age BETWEEN 58 AND 65 THEN '58-65'
			 WHEN Age >= 66 THEN '66+'
		END AS 'Age Group',
		COUNT(*) 'Churned customers who slipped the formula',
		SUM(COUNT(*)) OVER(ORDER BY Tenure_in_Months, CASE WHEN Age BETWEEN 19 AND 25 THEN '19-25'
													  	 WHEN Age BETWEEN 26 AND 33 THEN '26-33'
													  	 WHEN Age BETWEEN 34 AND 41 THEN '34-41'
													  	 WHEN Age BETWEEN 42 AND 49 THEN '42-49'
													  	 WHEN AGE BETWEEN 50 AND 57 THEN '50-57'
													  	 WHEN Age BETWEEN 58 AND 65 THEN '58-65'
													  	 WHEN Age >= 66 THEN '66+'
													  END) AS 'Rolling Count'
FROM CTE
WHERE [About to Churn?] = 'No' AND Customer_Status = 'Churned' --AND Online_Security ='YES' AND Online_Backup = 'YES' AND Device_Protection_Plan = 'YES' AND Premium_Tech_Support = 'YES'
GROUP BY Tenure_in_Months,
		 		CASE WHEN Age BETWEEN 19 AND 25 THEN '19-25'
			 WHEN Age BETWEEN 26 AND 33 THEN '26-33'
			 WHEN Age BETWEEN 34 AND 41 THEN '34-41'
			 WHEN Age BETWEEN 42 AND 49 THEN '42-49'
			 WHEN AGE BETWEEN 50 AND 57 THEN '50-57'
			 WHEN Age BETWEEN 58 AND 65 THEN '58-65'
			 WHEN Age >= 66 THEN '66+'
		END
ORDER BY Tenure_in_Months, [Age Group]

-- 744 Customers in a wide range of age groups slip the formula due to  leaving in less than 6 months of membership

;WITH CTE AS (
			  SELECT Customer_ID, Age, Married, Tenure_in_Months,
			  ISNULL(Online_Security,'No')         AS Online_Security,
			  ISNULL(Online_Backup,'No')           AS Online_Backup,
			  ISNULL(Device_Protection_Plan, 'No') AS Device_Protection_Plan,
			  ISNULL(Premium_Tech_Support, 'No')   AS Premium_Tech_Support,
			  Customer_Status,
			  Churn_Category,
			  CASE WHEN Tenure_in_Months >= 6
       			   AND
       			   (ISNULL(Online_Security,'No') = 'No' OR ISNULL(Online_Backup,'No') = 'No' OR  ISNULL(Device_Protection_Plan, 'No') = 'No' OR ISNULL(Premium_Tech_Support, 'No') = 'No')
				   THEN 'Yes'
				   ELSE 'No'
		      END AS 'About to Churn?'
			  FROM [Telecom _Customer_Churm]
			  )

SELECT Churn_Category,
		COUNT(*) 'Churned customers who slipped the formula',
		SUM(COUNT(*)) OVER(ORDER BY Churn_Category) AS 'Rolling Count'
FROM CTE
WHERE [About to Churn?] = 'No' AND Customer_Status = 'Churned' AND Tenure_in_Months < 6 --AND Online_Security ='YES' AND Online_Backup = 'YES' AND Device_Protection_Plan = 'YES' AND Premium_Tech_Support = 'YES'
GROUP BY Churn_Category
ORDER BY Churn_Category

-- Conclusion: new members should receive a discount offer for DPP and PT Support for 6 months, later on making another offer then will be regulated every

-- Total churned

;WITH CTE AS (
			  SELECT Customer_ID, Age, Married, Tenure_in_Months,
			  ISNULL(Online_Security,'No')         AS Online_Security,
			  ISNULL(Online_Backup,'No')           AS Online_Backup,
			  ISNULL(Device_Protection_Plan, 'No') AS Device_Protection_Plan,
			  ISNULL(Premium_Tech_Support, 'No')   AS Premium_Tech_Support,
			  Customer_Status,
			  Churn_Category,
			  CASE WHEN Tenure_in_Months >= 6
       			   AND
       			   (ISNULL(Online_Security,'No') = 'No' OR ISNULL(Online_Backup,'No') = 'No' OR  ISNULL(Device_Protection_Plan, 'No') = 'No' OR ISNULL(Premium_Tech_Support, 'No') = 'No')
				   THEN 'Yes'
				   ELSE 'No'
		      END AS 'About to Churn?'
			  FROM [Telecom _Customer_Churm]
			  )

SELECT Customer_Status, [About to Churn?] ,COUNT(*) AS 'Total Customers'
FROM CTE
GROUP BY Customer_Status, [About to Churn?]

-- Out of 1,869 Churned customers, the formula could not detect 768 of them, due to canceling membership in less than 6 months
-- Conclusion: new members should receive a discount offer for DPP and PT Support for 6 months, later on making another offer then will be regulated every

-- Out of the remaining customers, 4,113 are detected as "About to churn"

