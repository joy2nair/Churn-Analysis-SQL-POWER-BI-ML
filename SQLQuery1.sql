SELECT Gender, COUNT(Gender) AS TotalCount,
COUNT(Gender) * 100.0 / (SELECT COUNT(*) FROM stg_Churn) AS Percentage
FROM stg_Churn
GROUP BY Gender;


SELECT Contract, COUNT(Contract) AS TotalCount,
COUNT(Contract) * 1.0 / (SELECT COUNT(*) FROM stg_Churn) AS Percentage
FROM stg_Churn
GROUP BY Contract;


Select Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
sum(Total_Revenue) / (Select sum(Total_Revenue) from stg_Churn) * 100 as Percentage
FROM stg_Churn
GROUP BY Customer_Status;

select State , Count(State) as TotalCount,
Count(State) * 100.0/ (Select Count(*) from Stg_Churn)as Percentage
FROM stg_Churn
group by State 
Order By Percentage desc


Select Distinct Internet_Type
from stg_Churn;

