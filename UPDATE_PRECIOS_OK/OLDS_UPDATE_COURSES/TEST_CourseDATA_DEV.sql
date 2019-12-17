/*SELECT  [Id],[BaseCurrency],[Currency],[Date],[Rate]
  FROM [dbo].[CurrencyRates]
  order by date DESC

  SELECT  DISTINCT [Name]
  FROM [dbo].[CourseTypeCountries]
  */
  -- EJE
Declare @countriesTemp Table (code varchar(02));
Insert into  @countriesTemp(code)
Select Code from Countries 
--Select * from @countriesTemp;
--
Declare @facultiesTemp Table (faculty varchar(max));
Insert into  @facultiesTemp(faculty)
Select SeoUrl from Areas 
--Select * from @facultiesTemp
---
Declare @categoryTemp Table(category varchar(max))
Insert into  @categoryTemp(category)
Select DISTINCT SeoUrl from CourseTypeCountries 
WHERE SeoUrl NOT IN ('eir', 'posgrado', 'a1','a2','b1','b2','c1', 'c2')
--Select * from @categoryTemp
-------------------------------------------------------------------
SELECT cd.TotalAmount
        ,cd.SeoUrl ,a.SeoUrl ,a.Name ,ct.SeoUrl
        ,cd.Credits ,c.code  
FROM dbo.CourseData as cd
    left join countries as c on c.id = cd.CountryId
    left join CourseTypeCountries as ct on ct.Id = cd.CourseTypeCountryId
    left join Courses as cr  on cr.id = cd.CourseId
    left join CourseAreas as ca on ca.CourseId = cr.id
    left join Areas as a on a.id = ca.AreaId
where c.Code IN (Select Code from Countries )
and a.SeoUrl  IN (Select SeoUrl from Areas) 
AND ct.SeoUrl IN (Select DISTINCT SeoUrl from CourseTypeCountries 
                  WHERE SeoUrl NOT IN ('eir', 'posgrado', 'a1','a2','b1','b2','c1', 'c2'))
ORDER BY ct.SeoUrl
-------------------------------------------------------------------
SELECT  cd.TotalAmount
        ,cd.TotalAmount/IIF(cd.Credits!=0, cd.Credits,1)  as P_CREDITO, cd.Credits
        ,cd.SeoUrl ,a.SeoUrl ,a.Name ,ct.SeoUrl
        ,c.code
        ,count(ct.SeoUrl) as TOTAL_CURSOS
       FROM dbo.CourseData as cd
              left join countries as c on c.id = cd.CountryId
              left join CourseTypeCountries as ct on ct.Id = cd.CourseTypeCountryId
              left join Courses as cr  on cr.id = cd.CourseId
              left join CourseAreas as ca on ca.CourseId = cr.id
              left join Areas as a on a.id = ca.AreaId
          where c.Code IN (Select Code from Countries )
          AND ct.SeoUrl IN ('curso','curso-universitario','diplomado')
          and a.SeoUrl IN (Select SeoUrl from Areas )
-------------------------------------------------------------------
