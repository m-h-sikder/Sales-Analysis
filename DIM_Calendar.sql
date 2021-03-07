-- Cleansed DIM_Date Table --
Select
  DateKey AS DateKey, 
  FullDateAlternateKey AS Date, 
  -- [DayNumberOfWeek],
  EnglishDayNameOfWeek AS Day, 
  EnglishMonthName As Month, 
  Left([EnglishMonthName], 3) AS MonthShort, 
  -- Useful for fron end date navigation and front end graphs --
  MonthNumberOfYear AS MonthNo, 
  CalendarQuarter AS Quarter, 
  CalendarYear AS Year
FROM 
  [dbo].[DimDate] 
WHERE 
  CalendarYear >= 2018