Create Database Company

Use Company

Create Table Brands 
(
	Id Int Primary Key Identity,
	Name Nvarchar(50) Not Null
)

Create Table Notebooks 
(	
	Id Int Primary Key Identity,
	Name Nvarchar(50) Not Null,
	Price Money Not Null Default 0
)

Create Table Phones 
(	
	Id Int Primary Key Identity,
	Name Nvarchar(50) Not Null,
	Price Money Not Null Default 0
)

-- 1

Alter Table Notebooks Add BrandId Int  Foreign Key  References Brands(Id)

--2

Alter Table Phones Add BrandId Int  Foreign Key  References Brands(Id)

--3

Select Notebooks.Name, Brands.Name as BrandName, Notebooks.Price From Notebooks Join Brands On Notebooks.BrandId = Brands.Id

--4

Select Phones.Name, Brands.Name as BrandName, Phones.Price From Phones Join Brands On Phones.BrandId = Brands.Id

--5

Select * From Notebooks Join Brands On Notebooks.BrandId = Brands.Id And CHARINDEX('s', Brands.Name) > 0

--6

Select * From Notebooks Where Notebooks.Price Between 2000 And 5000 Or Notebooks.Price > 5000

--7

Select * From Phones Where Phones.Price Between 1000 And 1500 Or Phones.Price > 1500

--8

https://www.youtube.com/watch?v=lJXhxvJBeX0&ab_channel=OguzhanEro%C4%9Flu

--9

https://www.youtube.com/watch?v=lJXhxvJBeX0&ab_channel=OguzhanEro%C4%9Flu

--10

Select Name, BrandId From Notebooks Union Select Name, BrandId From Phones

--11

Select * From Notebooks Union Select * From Phones

--12

Select Notebooks.Id, Notebooks.Name,  Notebooks.Price, Brands.Name as BrandName From Notebooks Join Brands On Notebooks.BrandId = Brands.Id
Union
Select Phones.Id, Phones.Name,  Phones.Price, Brands.Name as BrandName From Phones Join Brands On Phones.BrandId = Brands.Id

--13

Select Notebooks.Id, Notebooks.Name,  Notebooks.Price, Brands.Name as BrandName From Notebooks Join Brands On Notebooks.BrandId = Brands.Id And Notebooks.Price > 1000
Union
Select Phones.Id, Phones.Name,  Phones.Price, Brands.Name as BrandName From Phones Join Brands On Phones.BrandId = Brands.Id And Phones.Price > 1000

--14

N/A

--15

N/A



