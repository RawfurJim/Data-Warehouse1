;WITH MonthsCTE(n) as
(
    SELECT 1 n
    UNION ALL 
    SELECT n+1
    FROM MonthsCTE
    WHERE n < 12
)
SELECT n[month] , t.*, LAG(Rnk) OVER(PARTITION by Expense_Area order by month(n)
		
	) Previous_month_Rank,  LAG(Rnk) OVER(PARTITION by Expense_Area order by month(n)) - Rnk  difference 
FROM MonthsCTE
CROSS APPLY 
(
SELECT TOP (10) s.[Expense_Area] as Expense_Area, 
       SUM(f.Amount) AS TotalAmount,RANK() OVER( ORDER BY SUM(f.Amount) DESC) Rnk
	   
FROM (Expense as s INNER JOIN 
       Fact as f
       ON s.Id = f.[Expense_Id]
      ) INNER JOIN 
       Time AS t ON t.Id = f.[Date_Id]
Where   month(t.Date) = MonthsCTE.n

GROUP BY s.[Expense_Area] order by TotalAmount DESC

)
t

