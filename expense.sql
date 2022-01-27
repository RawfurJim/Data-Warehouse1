/*
INSERT INTO Expense
SELECT DISTINCT [Expense Type], [Expense Area], Description FROM Business 

select * from Expense
CREATE TABLE Supplier
(    Id INT IDENTITY(1,1) NOT NULL Primary Key,
     Supplier nvarchar(1000),
	 Supplier_Type nvarchar(1000),
	 
)


CREATE TABLE Time
(    Id INT IDENTITY(1,1) NOT NULL Primary Key
,    	[Date] datetime)
INSERT INTO Time
SELECT DISTINCT [Data of Payment] FROM Business 
select * from Time

CREATE TABLE Fact
(    Id INT IDENTITY(1,1) NOT NULL Primary Key,
     Transaction_Number float,
	 Amount float,
	 Expense_Id int,
	 Supplier_Id int,
	 Date_Id int,
	 FOREIGN KEY (Expense_Id) REFERENCES Expense(Id),
	 FOREIGN KEY (Supplier_Id) REFERENCES Supplier(Id),
	 FOREIGN KEY (Date_Id) REFERENCES Time(Id)

	 
)
insert into Fact (Transaction_Number)
select [Transaction Number] from Business
*/
select * from Fact




