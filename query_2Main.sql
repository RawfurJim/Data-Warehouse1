


/* 1st 6 Monoth Expense Type */
SELECT e.Expense_type, SUM(Amount)
FROM Fact as f inner join Time as q on f.Date_Id = q.Id
inner join Expense as e on e.Id = f.Expense_Id
where q.Date > '2015-04-01' and q.Date < '2015-09-30'

GROUP BY e.Expense_type  having SUM (Amount)> (select Avg(Amount) as av from Fact as d 
inner join Time as t on t.Id = d.Id where t.Date > '2015-04-01' and t.Date < '2015-09-30' );

/* 2nd 6 Monoth Expense Type */



SELECT e.Expense_type, SUM(Amount)

FROM Fact as f inner join Time as q on f.Date_Id = q.Id
inner join Expense as e on e.Id = f.Expense_Id
where q.Date > '2015-10-01' and q.Date < '2016-03-30'

GROUP BY e.Expense_type  having SUM (Amount)> (select Avg(Amount) as av from Fact as d 
inner join Time as t on t.Id = d.Id where t.Date > '2015-10-01' and t.Date < '2016-03-30' );



