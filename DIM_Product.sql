-- Cleansed DIM Product Table
SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] as ProductItemCode, 
  --,[ProductSubcategoryKey]
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  p.[EnglishProductName] as [Product Name], 
  ps.EnglishProductSubcategoryName as [Sub Category], 
  -- Joined from subcategory table
  pc.EnglishProductCategoryName as [Product Category], 
  --joined from category table
  --SpanishProductName]
  --,[FrenchProductName]
  --,[StandardCost]
  --,[FinishedGoodsFlag]
  p.[Color] as [Product Color], 
  --,[SafetyStockLevel]
  --,[ReorderPoint]
  --,[ListPrice]
  p.[Size] as [Product Size], 
  --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  p.[ProductLine] as [Product Line], 
  --,[DealerPrice]
  --,[Class]
  --,[Style]
  p.[ModelName] as [Product Model Name], 
  --,[LargePhoto]
  p.[EnglishDescription] as [Product Description], 
  -- ,[FrenchDescription]
  -- ,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  -- ,[TurkishDescription]
  --,[StartDate]
  -- ,[EndDate]
  ISNULL (p.Status, 'Outdated') as [Product Status] 
FROM 
  [AdventureWorksDW2022].[dbo].[DimProduct] as p 
  LEFT JOIN dbo.DimProductSubcategory as ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory as pc ON ps.ProductSubcategoryKey = pc.ProductcategoryKey 
ORDER BY 
  p.ProductKey ASC


