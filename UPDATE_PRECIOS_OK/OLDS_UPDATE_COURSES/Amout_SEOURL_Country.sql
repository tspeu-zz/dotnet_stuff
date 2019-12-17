----- amount por category y traducido a categorty pais -------------------
SELECT   ct.SeoUrl 
        ,cn.Code
        ,pa.Amount AS AMOUNT_ORIGINAL
        ,pc.CategoryUrl
        ,pc.CountryCode
        ,pa.Amount * pc.[Value] AS AMOUNT_por_PAIS
        ,pf.CategoryUrl, pf.FacultyUrl
    FROM [dbo].[CourseTypeCountries] ct
  join Countries as cn on cn.id = ct.CountryId
  inner join ProductAmounts as pa on pa.CategoryUrl = ct.Name
  inner join ProductFacultyStudyModifiers As pf ON pf.CategoryUrl = pa.CategoryUrl
  inner join ProductCountryModifiers as pc on pc.CountryCode = cn.Code AND pc.CategoryUrl = ct.SeoUrl
WHERE pc.CountryCode = 'ES'
AND pc.CategoryUrl = 'curso-universitario'
 
ORDER BY pc.CountryCode

----------------------------------------------------------------------- 
  SELECT VALUE FROM ProductCountryModifiers
  WHERE CountryCode = 'ES'
  AND CategoryUrl = 'curso-universitario'
-----------------------------------------------------------------------
-- UPDATE CourseData cd 
--     SET cd.TotalAmount = ()
SELECT cd.TotalAmount
        ,cd.SeoUrl
        ,a.SeoUrl,a.Name
        ,ct.SeoUrl
        ---,
FROM dbo.CourseData as cd
    left join countries as c on c.id = cd.CountryId
    left join CourseTypeCountries as ct on ct.Id = cd.CourseTypeCountryId
    left join Courses as cr  on cr.id = cd.CourseId
    left join CourseAreas as ca on ca.CourseId = cr.id
    left join Areas as a on a.id = ca.AreaId
where c.Code = 'ES'
AND ct.SeoUrl = 'curso-universitario'
and a.SeoUrl IS NOT NULL

------------------------------------------------------------------------
SELECT 
      cn.Code,
      pf.FacultyUrl,
      pf.CategoryUrl,
      pf.Value,
      ctp.SeoUrl,
      ctp.CountryId,
      ctp.CourseCreditId
FROM ProductFacultyStudyModifiers pf
LEFT JOIN CourseTypeCountries As ctp ON ctp.SeoUrl = pf.CategoryUrl
left JOIN Countries AS cn ON cn.Id = ctp.CountryId
WHERE cn.code IS NOT NULL
order by  pf.FacultyUrl ,pf.CategoryUrl,  cn.code

------------------------------------------
SELECT * FROM ProductFacultyStudyModifiers
------------------------------------------




-------
select * from dbo.CourseData cd 
where 
cd.CountryId = 1

SELECT * FROM COURSES
courseTypeID
SELECT * FROM CourseTypeCountries
SELECT * FROM Areas
-----------------------------------------------------------------------
--UPDATE -- CourseData
SELECT 
    cr.Title
    ,c.Code
    ,CourseData.CountryId
    ,ct.id AS CourseTypeCountries_ID
    , CourseData.CourseTypeCountryId AS ORI_CourseTypeCountryId
    ,[TotalAmount]
    ,ct.Name   AS ORIGINAL_NAME
    ,a.SeoUrl As FACULTY
    ,ct.SeoUrl AS CATEGORY
  FROM [dbo].[CourseData]
left join countries as c on c.id = CourseData.CountryId
left join CourseTypeCountries as ct on ct.Id = CourseData.CourseTypeCountryId
left join Courses as cr  on cr.id = CourseData.CourseId
left join CourseAreas as ca on ca.CourseId = cr.id
left join Areas as a on a.id = ca.AreaId
where c.Code = 'ES'
AND a.SeoUrl = 'medicina'
AND ct.SeoUrl = 'curso-universitario'
order by ct.SeoUrl ,  a.SeoUrl


---
--
--SELECT CountryCode, CategoryUrl, Value FROM   ProductCountryModifiers
--
--SELECT FacultyUrl, CategoryUrl, Value FROM ProductFacultyStudyModifiers
--
/*
-----------------------------------------------------------------------
SELECT  cd.totalamount 
         ,cn.Code
from coursedata as cd
left join courses as c on c.id = cd.courseid
left join CourseAreas as ca on ca.courseid = c.id
left join areas as a on a.id = ca.areaid
left join CourseTypeCountries as ctc on ctc.id = cd.CourseTypeCountryId
left join Countries as cn on cn.id = cd.countryid
-----------------------------------------------------------------------

*/
