
;WITH MonthsCTE(n) as
(
    SELECT 1 n
    UNION ALL 
    SELECT n+1
    FROM MonthsCTE
    WHERE n < 12
)
SELECT n[month] , t.*
FROM MonthsCTE
CROSS APPLY 
(
SELECT TOP (5) s.Expense_Area,s.Expense_type, u.Supplier, u.Supplier_Type ,
       SUM(f.Amount) AS TotalAmount
	   
FROM (Expense as s INNER JOIN 
       Fact as f
       ON s.Id = f.[Expense_Id]
      ) inner join Supplier as u on u.Id = f.Supplier_Id INNER JOIN 
       Time AS t ON t.Id = f.[Date_Id]
Where  month(t.Date) = MonthsCTE.n

GROUP BY s.[Expense_Area],s.Expense_type,u.Supplier_Type,u.Supplier,f.Supplier_Id, s.Id,t.Date order by TotalAmount DESC

)
t