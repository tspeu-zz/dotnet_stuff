SELECT BaseCurrency
      ,Currency
      ,[Date]
      ,[Rate]
      , ISNULL((2000/rate),1)
  FROM [dbo].[CurrencyRates]
  where Date =  '2019-11-28'