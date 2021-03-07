-- Clensed DIM_Products Table--
SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS ProductItemCode, 
  --      ,[WeightUnitMeasureCode]
  --      ,[SizeUnitMeasureCode]
  p.[EnglishProductName] AS [Product Name], 
  ps.EnglishProductSubcategoryName AS [Sub Category], -- Joined in from Sub Category Table
  pc.EnglishProductCategoryName AS [Product Category], -- Joined in from Category TAble
  --    ,[SpanishProductName]
  --      ,[FrenchProductName]
  p.StandardCost AS [Cost of Goods Sold], 
  --      ,[FinishedGoodsFlag]
  p.[color] AS [Product Color], 
  --      ,[SafetyStockLevel]
  --      ,[ReorderPoint]
  p.[ListPrice] AS [Price Per Unit], 
  p.[Size] AS [Product Size], 
  --      ,[SizeRange]
  --      ,[Weight]
  --      ,[DaysToManufacture]
  p.[ProductLine] AS [Product Line], 
  --      ,[DealerPrice]
  --    ,[Class]
  --    ,[Style]
  p.[ModelName] AS [Product Model Name], 
  --    ,[LargePhoto]
  p.[EnglishDescription] AS [Product Description], 
  --      ,[FrenchDescription]
  --    ,[ChineseDescription]
  --      ,[ArabicDescription]
  --      ,[HebrewDescription]
  --    ,[ThaiDescription]
  --      ,[GermanDescription]
  --      ,[JapaneseDescription]
  --      ,[TurkishDescription]
  --      ,[StartDate]
  --      ,[EndDate]
  ISNULL (p.Status, 'Outdated') AS [Product Status] 
FROM 
  [dbo].[DimProduct] as p 
  LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory AS pc ON pc.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY 
  p.ProductKey ASC