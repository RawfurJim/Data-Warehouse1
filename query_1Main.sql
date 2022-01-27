/* Whole Year result */



select top(3) Supplier, sum(f.Amount) AS Amount from Fact as f
inner join Supplier as s on s.Id = f.Supplier_Id
group by Supplier order by Sum(f.Amount) desc


/* 1st quatar result */
select top(3) Supplier, sum(f.Amount) from Fact as f
inner join Supplier as s on s.Id = f.Supplier_Id
inner join Time as t on t.Id = f.Date_Id
where t.Date > '2015-04-01' and t.Date < '2015-06-30'
group by Supplier order by Sum(f.Amount) desc

/* 2nd quatar result */

select top(3) Supplier, sum(f.Amount) from Fact as f
inner join Supplier as s on s.Id = f.Supplier_Id
inner join Time as t on t.Id = f.Date_Id
where t.Date > '2015-07-01' and t.Date < '2015-09-30'
group by Supplier order by Sum(f.Amount) desc

/* 3rd quatar result */

select top(3) Supplier, sum(f.Amount) from Fact as f
inner join Supplier as s on s.Id = f.Supplier_Id
inner join Time as t on t.Id = f.Date_Id
where t.Date > '2015-10-01' and t.Date < '2015-12-30'
group by Supplier order by Sum(f.Amount) desc

/* 4th quatar result */

select top(3) Supplier, sum(f.Amount) from Fact as f
inner join Supplier as s on s.Id = f.Supplier_Id
inner join Time as t on t.Id = f.Date_Id
where t.Date > '2016-01-01' and t.Date < '2015-03-30'
group by Supplier order by Sum(f.Amount) desc
