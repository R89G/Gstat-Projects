use [G-Academy ]
go

--Customers
select *
from(
select Married,Gender,Customer_ID
from [Telecom _Customer_Churm] ) tbl
PIVOT (count(Customer_ID) FOR Gender IN ([Male],[female])) AS PVT 

----Avg Monthly Charge
select *
from(
select Married,Gender,Monthly_Charge
from [Telecom _Customer_Churm] ) tbl
PIVOT (avg(Monthly_Charge) FOR married IN ([Yes],[No])) AS PVT 

--age group_contract
;with cte as(select married,count(*) as Total_Customers,gender,[Contract],
	count(case when Age <=26 then '19-26' end) as '19_26_group',
	count(case when age between 27 and 34 then '27-34' end) as '27_34_group',
	count( case when age between 35 and 42 then '35-42' end) as '35_42_group',
	count(case when age between 43 and 50 then '43-50' end) '43_50_group', 
	count(case when age between 51 and 61 then '51-61' end) '51_61_group',
	count(case when age > 61 then 62 end) as '62_Abv_Group'
from [Telecom _Customer_Churm]
group by married,Gender,[Contract])
select *,sum(Total_Customers) over (partition by [contract]) as contract_group
from cte
order by 11 desc,4,2 desc


----Internet Service		
select Internet_Service,count(Internet_Service)as Internet_services,
count(Internet_Service)*1.0/(select count(*) from [Telecom _Customer_Churm]),
cast(avg(Tenure_in_Months)as dec(4,2)) as Avg_Months_Tenure,
cast(avg(Monthly_Charge)as dec(4,2)) as Avg_Monthly_charge, 
cast(avg(Total_Revenue) as int)as Avg_Revenue
,cast(avg(Tenure_in_Months)*avg(Monthly_Charge) * count(*) as int)as total_group_charge_value
,cast(avg(Tenure_in_Months)*avg(Monthly_Charge)as int) as Avg_Customer_Value,
sum(case when [Customer_Status] like 'churned' then 1 else 0 end) as 'customers_churn',
format(sum(case when [Customer_Status] like 'churned' then 1.0 else 0 end)*1.0/count(*),'P') as chrun_rate
,avg(Tenure_in_Months)*avg(Monthly_Charge) * sum(case when [Customer_Status] like 'churned' then 1 else 0 end) as 'Total_churn_value'
from [Telecom _Customer_Churm] 
group by Internet_Service

----for customers with internet service
select Married,
count(*) as total_customers_group,
avg(Tenure_in_Months) as Avg_Months_Tenure,
avg(Monthly_Charge) as Avg_Monthly_charge, 
avg(Total_Revenue) as Avg_Revenue
,avg(Tenure_in_Months)*avg(Monthly_Charge) * count(*) as total_group_charge_value
,avg(Tenure_in_Months)*avg(Monthly_Charge) as Avg_Customer_Value,
sum(case when [Customer_Status] like 'churned' then 1 else 0 end) as 'customers_churn',
format(sum(case when [Customer_Status] like 'churned' then 1.0 else 0 end)*1.0/count(*),'P') as chrun_rate
,avg(Tenure_in_Months)*avg(Monthly_Charge) * sum(case when [Customer_Status] like 'churned' then 1 else 0 end) as 'Total_churn_value'
from [Telecom _Customer_Churm]
where Internet_Service in ('yes')
group by Married




--Stream Service
select Streaming_Movies,Streaming_Music,Streaming_TV,
count(case when Streaming_Movies ='Yes' or Streaming_Music ='Yes' or Streaming_TV= 'Yes' then 1 end) as 'Stream Service',
cast(avg(Tenure_in_Months)as dec(4,2)) as Avg_Months_Tenure,
cast(avg(Monthly_Charge)as dec(4,2)) as Avg_Monthly_charge, 
cast(avg(Total_Revenue) as int)as Avg_Revenue
,cast(avg(Tenure_in_Months)*avg(Monthly_Charge) * count(*) as int)as total_group_charge_value
,cast(avg(Tenure_in_Months)*avg(Monthly_Charge)as int) as Avg_Customer_Value,
sum(case when [Customer_Status] like 'churned' then 1 else 0 end) as 'customers_churn',
format(sum(case when [Customer_Status] like 'churned' then 1.0 else 0 end)*1.0/count(*),'P') as chrun_rate
from [Telecom _Customer_Churm] 
where Streaming_Movies = 'Yes' or Streaming_Music = 'Yes' or Streaming_TV='Yes'
group by Streaming_Movies,Streaming_Music,Streaming_TV


----for customers with internet service

SELECT Married,
COUNT(*) AS 'Total_customers',
AVG(Tenure_in_Months) AS 'Avg_Months_Tenure',
AVG(Monthly_Charge) AS 'Avg_Monthly_Charge', 
AVG(Tenure_in_Months)*AVG(Monthly_Charge) AS 'Avg_Customer_Value',
AVG(Tenure_in_Months)*AVG(Monthly_Charge)*COUNT(*) AS 'Avg_Group_Charge_Value',
SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1 ELSE 0 END) AS 'Customers_Churn',
FORMAT(SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1 ELSE 0 END)*1.0/COUNT(*),'P') AS 'Churn_rate',
AVG(Tenure_in_Months)*AVG(Monthly_Charge)*SUM(CASE WHEN [Customer_Status] LIKE 'churned' THEN 1 ELSE 0 END) AS 'Total_churn_value'
FROM [Telecom _Customer_Churm]
WHERE Internet_Service = 'Yes'
GROUP BY Married

-- Service Analysis
;WITH CTE AS (
SELECT CASE WHEN Paperless_Billing = 'Yes' THEN 'Paperless Billing Yes' WHEN Paperless_Billing ='No' THEN 'Papaerless Billing No' END AS 'Service',
COUNT(*) AS 'Total Customers',
FORMAT(COUNT(CASE WHEN Paperless_Billing IN ('Yes','No') THEN 1 END)*1.0/
(SELECT COUNT(CASE WHEN Paperless_Billing IN ('Yes','No') THEN 1 END)
FROM [Telecom _Customer_Churm]),'P') AS 'Customer PCT',
CAST(AVG(Tenure_in_Months) AS DEC(4,2)) AS 'Avg Months Tenure',
CAST(AVG(Monthly_Charge) AS DEC(4,2)) AS 'Avg Monthly Charge', 
CAST(AVG(Tenure_in_Months)*AVG(Monthly_Charge) AS INT) AS 'Avg Customer Value',
CAST(AVG(Tenure_in_Months)*AVG(Monthly_Charge) * COUNT(*) AS INT) AS 'Avg Group Charge',
SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1 ELSE 0 END) AS 'Customers Churn',
FORMAT(SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1.0 ELSE 0 END)*1.0/COUNT(*),'P') AS 'Churn Rate',
AVG(Tenure_in_Months)*AVG(Monthly_Charge) * SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1 ELSE 0 END) AS 'Total churn value'
FROM [Telecom _Customer_Churm] 
WHERE Paperless_Billing IS NOT NULL
GROUP BY Paperless_Billing),

CTEA AS (
SELECT CASE WHEN Unlimited_Data = 'Yes' THEN 'Unlimited Data Yes' WHEN Unlimited_Data ='No' THEN 'Unlimited Data No' END AS 'Service',
COUNT(*) AS 'Total Customers',
FORMAT(COUNT(CASE WHEN Unlimited_Data IN ('Yes','No') THEN 1 END)*1.0/
(SELECT COUNT(CASE WHEN Unlimited_Data IN ('Yes','No') THEN 1 END)
FROM [Telecom _Customer_Churm]),'P') AS 'Customer PCT',
CAST(AVG(Tenure_in_Months) AS DEC(4,2)) AS 'Avg Months Tenure',
CAST(AVG(Monthly_Charge) AS DEC(4,2)) AS 'Avg Monthly Charge', 
CAST(AVG(Tenure_in_Months)*AVG(Monthly_Charge) AS INT) AS 'Avg Customer Value',
CAST(AVG(Tenure_in_Months)*AVG(Monthly_Charge) * COUNT(*) AS INT) AS 'Avg Group Charge',
SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1 ELSE 0 END) AS 'Customers Churn',
FORMAT(SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1.0 ELSE 0 END)*1.0/COUNT(*),'P') AS 'Churn Rate',
AVG(Tenure_in_Months)*AVG(Monthly_Charge) * SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1 ELSE 0 END) AS 'Total churn value'
FROM [Telecom _Customer_Churm] 
WHERE Unlimited_Data IS NOT NULL
GROUP BY Unlimited_Data),

CTEB AS (
SELECT CASE WHEN Internet_Service = 'Yes' THEN 'Internet Service Yes' WHEN Internet_Service ='No' THEN 'Internet Service No' END AS 'Service',
COUNT(*) AS 'Total Customers',
FORMAT(COUNT(CASE WHEN Internet_Service IN ('Yes','No') THEN 1 END)*1.0/
(SELECT COUNT(CASE WHEN Internet_Service IN ('Yes','No') THEN 1 END)
FROM [Telecom _Customer_Churm]),'P') AS 'Customer PCT',
CAST(AVG(Tenure_in_Months) AS DEC(4,2)) AS 'Avg Months Tenure',
CAST(AVG(Monthly_Charge) AS DEC(4,2)) AS 'Avg Monthly Charge', 
CAST(AVG(Tenure_in_Months)*AVG(Monthly_Charge) AS INT) AS 'Avg Customer Value',
CAST(AVG(Tenure_in_Months)*AVG(Monthly_Charge) * COUNT(*) AS INT) AS 'Avg Group Charge',
SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1 ELSE 0 END) AS 'Customers Churn',
FORMAT(SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1.0 ELSE 0 END)*1.0/COUNT(*),'P') AS 'Churn Rate',
AVG(Tenure_in_Months)*AVG(Monthly_Charge) * SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1 ELSE 0 END) AS 'Total churn value'
FROM [Telecom _Customer_Churm] 
WHERE Internet_Service IS NOT NULL
GROUP BY Internet_Service),

CTEC AS (
SELECT CASE WHEN Premium_Tech_Support = 'Yes' THEN 'Premium Tech Support Yes' WHEN Premium_Tech_Support ='No' THEN 'Premium Tech Support No' END AS 'Service',
COUNT(*) AS 'Total Customers',
FORMAT(COUNT(CASE WHEN Premium_Tech_Support IN ('Yes','No') THEN 1 END)*1.0/
(SELECT COUNT(CASE WHEN Premium_Tech_Support IN ('Yes','No') THEN 1 END)
FROM [Telecom _Customer_Churm]),'P') AS 'Customer PCT',
CAST(AVG(Tenure_in_Months) AS DEC(4,2)) AS 'Avg Months Tenure',
CAST(AVG(Monthly_Charge) AS DEC(4,2)) AS 'Avg Monthly Charge', 
CAST(AVG(Tenure_in_Months)*AVG(Monthly_Charge) AS INT) AS 'Avg Customer Value',
CAST(AVG(Tenure_in_Months)*AVG(Monthly_Charge) * COUNT(*) AS INT) AS 'Avg Group Charge',
SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1 ELSE 0 END) AS 'Customers Churn',
FORMAT(SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1.0 ELSE 0 END)*1.0/COUNT(*),'P') AS 'Churn Rate',
AVG(Tenure_in_Months)*AVG(Monthly_Charge) * SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1 ELSE 0 END) AS 'Total churn value'
FROM [Telecom _Customer_Churm] 
WHERE Premium_Tech_Support IS NOT NULL
GROUP BY Premium_Tech_Support),

CTED AS (
SELECT CASE WHEN Device_Protection_Plan = 'Yes' THEN 'Device Protection Plan Yes' WHEN Device_Protection_Plan ='No' THEN 'Device Protection Plan No' END AS 'Service',
COUNT(*) AS 'Total Customers',
FORMAT(COUNT(CASE WHEN Device_Protection_Plan IN ('Yes','No') THEN 1 END)*1.0/
(SELECT COUNT(CASE WHEN Device_Protection_Plan IN ('Yes','No') THEN 1 END)
FROM [Telecom _Customer_Churm]),'P') AS 'Customer PCT',
CAST(AVG(Tenure_in_Months) AS DEC(4,2)) AS 'Avg Months Tenure',
CAST(AVG(Monthly_Charge) AS DEC(4,2)) AS 'Avg Monthly Charge', 
CAST(AVG(Tenure_in_Months)*AVG(Monthly_Charge) AS INT) AS 'Avg Customer Value',
CAST(AVG(Tenure_in_Months)*AVG(Monthly_Charge) * COUNT(*) AS INT) AS 'Avg Group Charge',
SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1 ELSE 0 END) AS 'Customers Churn',
FORMAT(SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1.0 ELSE 0 END)*1.0/COUNT(*),'P') AS 'Churn Rate',
AVG(Tenure_in_Months)*AVG(Monthly_Charge) * SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1 ELSE 0 END) AS 'Total churn value'
FROM [Telecom _Customer_Churm] 
WHERE Device_Protection_Plan IS NOT NULL
GROUP BY Device_Protection_Plan),

CTEF AS (
SELECT CASE WHEN Online_Security = 'Yes' THEN 'Online Security Yes' WHEN Online_Security ='No' THEN 'Online Security No' END AS 'Service',
COUNT(*) AS 'Total Customers',
FORMAT(COUNT(CASE WHEN Online_Security IN ('Yes','No') THEN 1 END)*1.0/
(SELECT COUNT(CASE WHEN Online_Security IN ('Yes','No') THEN 1 END)
FROM [Telecom _Customer_Churm]),'P') AS 'Customer PCT',
CAST(AVG(Tenure_in_Months) AS DEC(4,2)) AS 'Avg Months Tenure',
CAST(AVG(Monthly_Charge) AS DEC(4,2)) AS 'Avg Monthly Charge', 
CAST(AVG(Tenure_in_Months)*AVG(Monthly_Charge) AS INT) AS 'Avg Customer Value',
CAST(AVG(Tenure_in_Months)*AVG(Monthly_Charge) * COUNT(*) AS INT) AS 'Avg Group Charge',
SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1 ELSE 0 END) AS 'Customers Churn',
FORMAT(SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1.0 ELSE 0 END)*1.0/COUNT(*),'P') AS 'Churn Rate',
AVG(Tenure_in_Months)*AVG(Monthly_Charge) * SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1 ELSE 0 END) AS 'Total churn value'
FROM [Telecom _Customer_Churm] 
WHERE Online_Security IS NOT NULL
GROUP BY Online_Security),

CTEG AS (
SELECT CASE WHEN Online_Backup = 'Yes' THEN 'Online Backup Yes' WHEN Online_Backup ='No' THEN 'Online Backup No' END AS 'Service',
COUNT(*) AS 'Total Customers',
FORMAT(COUNT(CASE WHEN Online_Backup IN ('Yes','No') THEN 1 END)*1.0/
(SELECT COUNT(CASE WHEN Online_Backup IN ('Yes','No') THEN 1 END)
FROM [Telecom _Customer_Churm]),'P') AS 'Customer PCT',
CAST(AVG(Tenure_in_Months) AS DEC(4,2)) AS 'Avg Months Tenure',
CAST(AVG(Monthly_Charge) AS DEC(4,2)) AS 'Avg Monthly Charge', 
CAST(AVG(Tenure_in_Months)*AVG(Monthly_Charge) AS INT) AS 'Avg Customer Value',
CAST(AVG(Tenure_in_Months)*AVG(Monthly_Charge) * COUNT(*) AS INT) AS 'Avg Group Charge',
SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1 ELSE 0 END) AS 'Customers Churn',
FORMAT(SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1.0 ELSE 0 END)*1.0/COUNT(*),'P') AS 'Churn Rate',
AVG(Tenure_in_Months)*AVG(Monthly_Charge) * SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1 ELSE 0 END) AS 'Total churn value'
FROM [Telecom _Customer_Churm] 
WHERE Online_Backup IS NOT NULL
GROUP BY Online_Backup
UNION
SELECT CASE WHEN Streaming_Movies = 'Yes' THEN 'Streaming Movies Yes' WHEN Streaming_Movies ='No' THEN 'Streaming Movies No' END AS 'Service',
COUNT(*) AS 'Total Customers',
FORMAT(COUNT(CASE WHEN Streaming_Movies IN ('Yes','No') THEN 1 END)*1.0/
(SELECT COUNT(CASE WHEN Streaming_Movies IN ('Yes','No') THEN 1 END)
FROM [Telecom _Customer_Churm]),'P') AS 'Customer PCT',
CAST(AVG(Tenure_in_Months) AS DEC(4,2)) AS 'Avg Months Tenure',
CAST(AVG(Monthly_Charge) AS DEC(4,2)) AS 'Avg Monthly Charge', 
CAST(AVG(Tenure_in_Months)*AVG(Monthly_Charge) AS INT) AS 'Avg Customer Value',
CAST(AVG(Tenure_in_Months)*AVG(Monthly_Charge) * COUNT(*) AS INT) AS 'Avg Group Charge',
SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1 ELSE 0 END) AS 'Customers Churn',
FORMAT(SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1.0 ELSE 0 END)*1.0/COUNT(*),'P') AS 'Churn Rate',
AVG(Tenure_in_Months)*AVG(Monthly_Charge) * SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1 ELSE 0 END) AS 'Total churn value'
FROM [Telecom _Customer_Churm] 
WHERE Streaming_Movies IS NOT NULL
GROUP BY Streaming_Movies
UNION
SELECT CASE WHEN Streaming_Music = 'Yes' THEN 'Streaming Music Yes' WHEN Streaming_Music ='No' THEN 'Streaming Music No' END AS 'Service',
COUNT(*) AS 'Total Customers',
FORMAT(COUNT(CASE WHEN Streaming_Music IN ('Yes','No') THEN 1 END)*1.0/
(SELECT COUNT(CASE WHEN Streaming_Music IN ('Yes','No') THEN 1 END)
FROM [Telecom _Customer_Churm]),'P') AS 'Customer PCT',
CAST(AVG(Tenure_in_Months) AS DEC(4,2)) AS 'Avg Months Tenure',
CAST(AVG(Monthly_Charge) AS DEC(4,2)) AS 'Avg Monthly Charge', 
CAST(AVG(Tenure_in_Months)*AVG(Monthly_Charge) AS INT) AS 'Avg Customer Value',
CAST(AVG(Tenure_in_Months)*AVG(Monthly_Charge) * COUNT(*) AS INT) AS 'Avg Group Charge',
SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1 ELSE 0 END) AS 'Customers Churn',
FORMAT(SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1.0 ELSE 0 END)*1.0/COUNT(*),'P') AS 'Churn Rate',
AVG(Tenure_in_Months)*AVG(Monthly_Charge) * SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1 ELSE 0 END) AS 'Total churn value'
FROM [Telecom _Customer_Churm] 
WHERE Streaming_Music IS NOT NULL
GROUP BY Streaming_Music
UNION
SELECT CASE WHEN Streaming_TV = 'Yes' THEN 'Streaming TV Yes' WHEN Streaming_TV ='No' THEN 'Streaming TV No' END AS 'Service',
COUNT(*) AS 'Total Customers',
FORMAT(COUNT(CASE WHEN Streaming_TV IN ('Yes','No') THEN 1 END)*1.0/
(SELECT COUNT(CASE WHEN Streaming_TV IN ('Yes','No') THEN 1 END)
FROM [Telecom _Customer_Churm]),'P') AS 'Customer PCT',
CAST(AVG(Tenure_in_Months) AS DEC(4,2)) AS 'Avg Months Tenure',
CAST(AVG(Monthly_Charge) AS DEC(4,2)) AS 'Avg Monthly Charge', 
CAST(AVG(Tenure_in_Months)*AVG(Monthly_Charge) AS INT) AS 'Avg Customer Value',
CAST(AVG(Tenure_in_Months)*AVG(Monthly_Charge) * COUNT(*) AS INT) AS 'Avg Group Charge',
SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1 ELSE 0 END) AS 'Customers Churn',
FORMAT(SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1.0 ELSE 0 END)*1.0/COUNT(*),'P') AS 'Churn Rate',
AVG(Tenure_in_Months)*AVG(Monthly_Charge) * SUM(CASE WHEN Customer_Status LIKE 'churned' THEN 1 ELSE 0 END) AS 'Total churn value'
FROM [Telecom _Customer_Churm] 
WHERE Streaming_TV IS NOT NULL
GROUP BY Streaming_TV)





SELECT *
FROM CTE 
UNION
SELECT *
FROM CTEA
UNION 
SELECT *
FROM CTEB
UNION 
SELECT *
FROM CTEC
UNION
SELECT *
FROM CTED
UNION
SELECT *
FROM CTEF
UNION
SELECT *
FROM CTEG
ORDER BY Service
------

--Churn Reason
select *,sum(Yes)+sum([No])as Total_Category
from (
select Married,Churn_Category,Customer_ID
from [Telecom _Customer_Churm]
where Churn_Category is not null) tbl
PIVOT (count(Customer_ID) FOR married IN ([Yes],[No])) AS PVT 
group by Yes,[No],Churn_Category
order by 4 desc

;with cte as (
select Churn_Category,Churn_Reason,count(*) as Customers,Avg(Tenure_in_Months) Avg_Month
from [Telecom _Customer_Churm] 
where Churn_Category is not null
group by Churn_Category,Churn_Reason)

select *,sum(Customers) over(partition by Churn_Category)as Churm_Cust
,Customers*1.0/sum(Customers) over (partition by Churn_Category)as Churn_Reason_PCT
from cte
Order by 5 desc,1, 3 desc

