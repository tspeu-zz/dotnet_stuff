-------------------------------------------------
SELECT  (pa.Amount * f.Value * pc.Value) AS AMOUNT
        ,pa.Amount as ORIGINA_AMOUNT
        ,pc.CountryCode , pa.CategoryUrl, f.FacultyUrl
FROM ProductAmounts pa
JOIN ProductFacultyStudyModifiers as f ON f.CategoryUrl = pa.CategoryUrl
JOIN ProductCountryModifiers AS  pc ON pc.CategoryUrl = pa.CategoryUrl
WHERE pc.CountryCode IN (SELECT DISTINCT Code FROM Countries)
AND pa.CategoryUrl IN (SELECT DISTINCT CategoryUrl FROM ProductCountryModifiers WHERE CountryCode IN (SELECT DISTINCT CountryCode FROM ProductCountryModifiers))
AND f.FacultyUrl IN (SELECT DISTINCT FacultyUrl FROM ProductFacultyStudyModifiers)
-------------------------------------------------
-------------------------------------------------
SELECT  (pa.Amount * f.Value * pc.Value) AS AMOUNT
        ,pa.Amount as ORIGINA_AMOUNT
        ,pc.CountryCode AS ProductCountryModifiers  , ct.CountryId
        ,f.FacultyUrl, pa.CategoryUrl AS paCategoryUrl, f.CategoryUrl AS fCategoryUrl , pc.CategoryUrl AS pcCategoryUrl
        ,ct.SeoUrl
FROM ProductAmounts pa
 LEFT JOIN CourseTypeCountries as ct ON ct.SeoUrl = pa.CategoryUrl
 LEFT JOIN ProductFacultyStudyModifiers as f ON f.CategoryUrl = ct.SeoUrl
 LEFT JOIN ProductCountryModifiers AS  pc ON pc.CategoryUrl = pa.CategoryUrl
 LEFT JOIN Countries as cs ON cs.CODE = pc.CountryCode
WHERE pc.CountryCode  IN (SELECT DISTINCT Code FROM Countries)
AND pa.CategoryUrl IN (Select DISTINCT ct.SeoUrl from CourseTypeCountries as ct JOIN Countries as c ON c.Id = ct.CountryId)
AND f.FacultyUrl IN (SELECT DISTINCT FacultyUrl FROM ProductFacultyStudyModifiers)
-------------------------------------------------

----- amount por category y traducido a categorty pais
SELECT  --ct.Name,
        ct.SeoUrl 
        ,cn.Code
        --,pa.CategoryUrl
        ,pa.Amount AS AMOUNT_ORIGINAL
        ,pc.CategoryUrl
       , pc.CountryCode
       ,pa.Amount * pc.[Value] AS AMOUNT_por_PAIS
  FROM [dbo].[CourseTypeCountries] ct
  join Countries as cn on cn.id = ct.CountryId
  inner join ProductAmounts as pa on pa.CategoryUrl = ct.Name
  inner join ProductCountryModifiers as pc on pc.CountryCode = cn.Code AND pc.CategoryUrl = ct.SeoUrl
ORDER BY pc.CountryCode
  
-------------------------------------------------



-----------------------------------------------
SELECT CountryCode from ProductCountryModifiers
--THEN
-- POR PARTES->  PRIMERO AMOUNT POR CATEFGORIA Y FACULTAD
SELECT DISTINCT  pa.Amount as ORIGINA_AMOUNT
        ,pa.CategoryUrl AS CategoryAMOUNT
        ,pc.CategoryUrl AS CategoryAFACULTY
        ,ct.SeoUrl   , ct.Name    , ct.SeoTitle  
        ,pc.FacultyUrl  
FROM ProductAmounts pa
INNER JOIN ProductFacultyStudyModifiers  AS  pc ON pc.CategoryUrl = pa.CategoryUrl
INNER JOIN CourseTypeCountries as ct ON ct.SeoUrl = pa.CategoryUrl

---
SELECT  pc.CategoryUrl, pc.Value
        ,cs.Code
 FROM  ProductCountryModifiers pc
 LEFT JOIN Countries as cs ON cs.CODE = pc.CountryCode

--



--------- SELECT CATEGORIAS POR PAIS
Select DISTINCT ct.SeoUrl from CourseTypeCountries as ct JOIN Countries as c ON c.Id = ct.CountryId
---------------
-------------------------------------------------
SELECT DISTINCT CategoryUrl FROM ProductCountryModifiers 
WHERE CountryCode IN (SELECT DISTINCT CountryCode FROM ProductCountryModifiers)
-------------------------------------------------
--SELECT DISTINCT FacultyUrl FROM ProductFacultyStudyModifiers
-------------------------------------------------
--THEN
SELECT pc.CountryCode, pc.CategoryUrl
 FROM ProductCountryModifiers pc
 JOIN CourseTypeCountries as ct ON ct.SeoUrl = pc.CategoryUrl
 WHERE pc.CountryCode = 'AR'
---



--

--------- SELECT CATEGORIAS POR PAIS
Select DISTINCT ct.SeoUrl 
from CourseTypeCountries as ct
JOIN Countries as c ON c.Id = ct.CountryId
where c.Code = 'AR'
---------------

SELECT pa.CategoryUrl , c.Code
 FROM ProductAmounts pa
 JOIN CourseTypeCountries as ct ON ct.SeoUrl = pa.CategoryUrl
 JOIN Countries as c ON c.Id = ct.CountryId
 WHERE c.Code = 'AR'

--WHERE CountryCode IN (SELECT DISTINCT Code FROM Countries)


--order by  pf.FacultyUrl ,pf.CategoryUrl,  cn.code

----------------------------- get VALUE POR PAIS FACULTAD CATEGORY
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
LEFT JOIN Countries AS cn ON cn.Id = ctp.CountryId
WHERE cn.code IN ('ES', 'PT')
AND pf.CategoryUrl = 'master'
AND pf.FacultyUrl = 'medicina'
-------------------------------------------------
--Code    ES AR CO MX PE - ('AR', 'CO', 'MX', 'PE')
-- FACULTY 
        --educacion 
        --escuela-de-negocios 
        --medicina odontologia 
        --farmacia enfermeria 
        --fisioterapia 
        --nutricion
        --psicologia
        --educacion
        --filosofia
        --escuela-de-idiomas
-- CategoryUrl        
        -- cfc
        -- curso
        -- grado
        -- master
        -- master-universitario
-----------------* ------------------------ 
----------------------------- get VALUE POR PAIS FACULTAD CATEGORY
SELECT DISTINCT
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
--------------
SELECT  pa.CategoryUrl, Amount , pf.CategoryUrl, pf.FacultyUrl
FROM ProductAmounts AS pa
LEFT JOIN ProductFacultyStudyModifiers AS pf on pf.CategoryUrl = pa.CategoryUrl
--SELECT CategoryUrl  FROM ProductFacultyStudyModifiers





----------------------------------------
SELECT  * FROM ProductCountryModifiers
 where CategoryUrl =  'curso c1-c2'
-- where CategoryUrl =  'curso a1-b2'
SELECT  * FROM ProductCountryModifiers
 where CategoryUrl =  'curso  c1-c2'

UPDATE ProductCountryModifiers
SET  CategoryUrl =  'curso c1-c2'
WHERE CategoryUrl = 'curso  c1-c2'

------
SELECT  ct.Name,
        ct.SeoUrl 
        ,pa.CategoryUrl, pa.Amount
  FROM [dbo].[CourseTypeCountries] ct
  join Countries as cn on cn.id = ct.CountryId
  inner join ProductAmounts as pa on pa.CategoryUrl = ct.Name
  WHERE cn.Code = 'AR'
  order by cn.Code

--
SELECT pa.CategoryUrl , pa.Amount from ProductAmounts as pa 