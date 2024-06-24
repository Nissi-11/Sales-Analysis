-- Cleansed DIM Customer Table
SELECT 
  c.CustomerKey as CustomerKey, 
  --[GeographyKey]
  --[CustomerAlternateKey]
  --[Title]
  c.FirstName as [First Name], 
  --[MiddleName]
  c.LastName as [Last Name], 
  c.FirstName + '' + LastName as [Full Name], 
  --Combined first anme and last name
  --[NameStyle]
  --[BirthDate]
  --[MaritalStatus]
  --[Suffix]
  CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  --,[EmailAddress]
  -- ,[YearlyIncome]
  -- ,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  -- ,[SpanishEducation]
  -- ,[FrenchEducation]
  -- ,[EnglishOccupation]
  -- ,[SpanishOccupation]
  -- ,[FrenchOccupation]
  -- ,[HouseOwnerFlag]
  -- ,[NumberCarsOwned]
  --,[AddressLine1]
  -- ,[AddressLine2]
  -- ,[Phone]
  c.DateFirstPurchase as DateFirstPurchase, 
  --[CommuteDistance]
  g.city as [Customer City] --Joined customer city from geography table
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] as c 
  LEFT JOIN dbo.dimgeography as g ON g.geographyKey = c.geographyKey 
ORDER BY 
  CustomerKey ASC --Ordered list by customer key

