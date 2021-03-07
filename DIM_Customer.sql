-- Cleansed DIM_Customer Table --
SELECT 
  c.customerkey AS CustomerKey, 
  --    ,[GeographyKey]
  --    ,[CustomerAlternateKey]
  --      ,[Title]
  c.firstname AS [FirstName], 
  --      ,[MiddleName]
  c.lastname AS [LastName], 
  c.firstname + '' + lastname AS [Full Name], 
  -- Combined First Name and Last Name --
  --      ,[NameStyle]
  --      ,[BirthDate]
  --      ,[MaritalStatus]
  --      ,[Suffix]
  CASE c.gender WHEN 'M' THEN 'Male' When 'F' THEN 'Female' END AS Gender, 
  --      ,[EmailAddress]
  c.yearlyincome AS [YearlyIncome], 
  --      ,[TotalChildren]
  --      ,[NumberChildrenAtHome]
  --      ,[EnglishEducation]
  --      ,[SpanishEducation]
  --      ,[FrenchEducation]
  --      ,[EnglishOccupation]
  --      ,[SpanishOccupation]
  --      ,[FrenchOccupation]
  --      ,[HouseOwnerFlag]
  --      ,[NumberCarsOwned]
  --      ,[AddressLine1]
  --      ,[AddressLine2]
  --      ,[Phone]
  c.datefirstpurchase AS DateFirstPurchase, 
  --      ,[CommuteDistance]
  g.city AS [Customer City] -- Joined in customer City from Geograph Table --
FROM 
  dbo.dimcustomer AS c 
  LEFT JOIN dbo.dimgeography AS g ON g.geographyKey = c.geographyKey 
ORDER BY 
  CustomerKey ASC -- Order List by CustomerKey --