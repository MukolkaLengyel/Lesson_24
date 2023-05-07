/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Id] 
	,[First_Name] 
	,[Last_Name] 
	,[Age] 
	,[Gender] 
	,[Adress]

FROM [Beetroot].[dbo].[Person]

/* Select All Males */
select [First_Name], [Last_Name], [Gender]
from [Beetroot].[dbo].[Person]
where [Gender] = 'Male'; 

/* Select All Persons With Age About 18 */
select [First_Name], [Last_Name], [Age]
from [Beetroot].[dbo].[Person]
where [Age] = 18;

/* Select All Persons Without Address */
select [First_Name], [Last_Name], [Adress]
from [Beetroot].[dbo].[Person]
where [Adress] IS NULL;

/* Update Age Of All Persons, Add 1 Year */
select [First_Name], [Last_Name], [Age]
from [Beetroot].[dbo].[Person]
update [Person]
set [Age] = [Age] + 1

/* Delete All Rows Without Address */
select [First_Name], [Last_Name], [Adress]
from [Beetroot].[dbo].[Person]
delete from [Person] where [Adress] IS NULL;

/*group persons by age and show how many persons with same age*/
select [First_Name], [Last_Name], [Age]
from [Beetroot].[dbo].[Person]
group by [First_Name], [Last_Name], [Age];
