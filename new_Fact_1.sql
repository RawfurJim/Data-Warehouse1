/*
select Expense.Id
from  Business
INNER JOIN   Expense ON  Business.[Expense Area] =  Expense.Expense_Area and 
Business.[Expense Type] =  Expense.Expense_Type and
Business.[Description] =  Expense.Description

select [Transaction Number], [Amount], [Expense Type]

from Business
where [Transaction Number] = 99086 order by [Amount] DESC

select * from Expense where Expense.Id = 1263
*/
