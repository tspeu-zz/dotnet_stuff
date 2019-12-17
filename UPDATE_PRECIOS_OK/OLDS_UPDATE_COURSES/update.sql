--update cd.totalamount = 
    -- etc
SELECT  cd.totalamount 
         ,cn.Code
from coursedata as cd
left join courses as c on c.id = cd.courseid
left join CourseAreas as ca on ca.courseid = c.id
left join areas as a on a.id = ca.areaid
left join CourseTypeCountries as ctc on ctc.id = cd.CourseTypeCountryId
left join Countries as cn on cn.id = cd.countryid
where cn.code = 'ES' 
 and a.SeoUrl = 'medicina'
 and ctc.SeoUrl = 'curso-universitario'

------------------------------------------------
  SELECT *   FROM [testCRM_2].[dbo].[CourseData]
------------------------------------------------
SELECT  
    cd.CourseId,
    cr.Title
    ,c.Code
    ,cd.CourseTypeCountryId AS ORI_CourseTypeCountryId
    ,cd.TotalAmount
    ,ct.Name   AS ORIGINAL_NAME
    ,a.SeoUrl  As FacultyUrl
    ,ct.SeoUrl AS CategoryUrl
  FROM  CourseData cd
left join countries as c on c.id = cd.CountryId
left join CourseTypeCountries as ct on ct.Id = cd.CourseTypeCountryId
left join Courses as cr  on cr.id = cd.CourseId
left join CourseAreas as ca on ca.CourseId = cr.id
left join Areas as a on a.id = ca.AreaId
WHERE c.Code = 'AR'
AND 
a.SeoUrl = 'psicologia'
ORDER BY FacultyUrl

SELECT * from CourseAreas
SELECT * from Areas
SELECT * from Courses
SELECT * from countries

SELECT CountryId from CourseData
where CountryId = 17

SELECT * FROM Countries
SELECT * FROM CourseTypeCountries
WHERE CountryId = 22
--
UPDATE CourseData
SET CountryId  = 17
Where Id > 54 AND Id < 69  
---
ES 1   | 4298
AR 20  | 4317
CO 21  | 4318    
Mx 22  | 4319
PE 17  | 4314


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
AND ct.SeoUrl = ''
--and  ct.Name = 'oposiciones'
order by ct.SeoUrl ,  a.SeoUrl


SELECT * FROM CourseAreas
SELECT * FROM Areas
---
UPDATE CourseAreas
SET AreaId = 6
WHERE AreaId = 786

SELECT ID, SeoUrl FROM  Areas
--
SELECT ca.AreaId, ca.CourseId  
        ,a.Name , a.SeoUrl
FROM  CourseAreas as ca
join Areas as a ON a.id = ca.AreaId
join Courses as c ON c.id = ca.CourseId
--
Select  * from courses
Select  CourseId from CourseData
ORDER BY CourseId
--------
---------------- 264700 -264800
UPDATE CourseAreas
SET CourseId = 74
WHERE CourseId = 264701
-----------------------------
Select cd.CountryId, cd.CourseId
      ,cd.TotalAmount ,cd.Title, cd.SeoUrl, cd.SeoTitle
      ,c.Title
 from CourseData cd
inner join Courses as c on c.id = cd.CourseId
order by CourseId
------------------------------
--where CourseId = 264629 -   264699 -70
Select  * from CourseAreas as ca
order by CourseId
--------------------*---------*
UPDATE CourseData
SET CourseId = 13
WHERE CourseId = 264640
--------------------*---------*
DECLARE @cnt INT = 0;
DECLARE @CourseId INT = 265005;
DECLARE @IDCourse INT = 377;
WHILE @cnt <= 100
BEGIN
   PRINT 'CourseAreas-CourseId';  PRINT @CourseId;
   PRINT 'Course-Id';  PRINT @IDCourse;
    UPDATE CourseAreas
         SET CourseId = @IDCourse
         ,AreaId = 2
         WHERE CourseId = @CourseId;
   SET @CourseId = @CourseId + 1;
   SET @IDCourse +=  1;
   SET @cnt = @cnt + 1;
END;
GO
---------------------*--------*






------------------------------------------
SELECT CourseTypeCountryId FROM CourseData
order by CourseTypeCountryId
------------------------------------------
UPDATE  CourseData
SET CourseTypeCountryId = 71
WHERE CourseTypeCountryId = 38471




SELECT * FROM CourseTypeCountries

SELECT ID FROM Courses 
WHERE title = 'Valoración Integral del Riesgo de Cardiotoxicidad en el Paciente Oncológico'
----------------


--where courseId = 264628
SELECT courseId FROM CourseData
ORDER BY courseId

UPDATE  CourseData
SET courseId = 12
WHERE courseId = 264639

------
784	educacion            4
782	enfermeria           2
791	escuela-de-idiomas   11
--787	escuela-de-negocios   7
--783	farmacia              3
--788	filosofia             8
--781	medicina              1
--789	nutricion             9
--785	odontologia           5
786	psicologia            6

---
SELECT 
    cr.Title
    ,c.Code
    ,CourseData.CountryId
    ,ct.id AS CourseTypeCountries_ID
    , CourseData.CourseTypeCountryId AS ORI_CourseTypeCountryId
    ,[TotalAmount]
    ,ct.Name   AS ORIGINAL_NAME
    ,a.SeoUrl As a_SeoURL
    ,ct.SeoUrl AS ct_SeoURL
  FROM [dbo].[CourseData]
left join countries as c on c.id = CourseData.CountryId
left join CourseTypeCountries as ct on ct.Id = CourseData.CourseTypeCountryId
left join Courses as cr  on cr.id = CourseData.CourseId
left join CourseAreas as ca on ca.CourseId = cr.id
left join Areas as a on a.id = ca.AreaId
where c.Code = 'ES'
--and  ct.Name = 'oposiciones'
order by ct.SeoUrl ,  a.SeoUrl


-------------
SELECT  ct.Name,
        ct.SeoUrl 
        ,pa.CategoryUrl, pa.Amount
        ,cn.Code
  FROM [dbo].[CourseTypeCountries] ct
  join Countries as cn on cn.id = ct.CountryId
  inner join ProductAmounts as pa on pa.CategoryUrl = ct.Name

-------------------

SELECT  cd.totalamount 
         ,cn.Code
from coursedata as cd
left join courses as c on c.id = cd.courseid
left join CourseAreas as ca on ca.courseid = c.id
left join areas as a on a.id = ca.areaid
left join CourseTypeCountries as ctc on ctc.id = cd.CourseTypeCountryId
left join Countries as cn on cn.id = cd.countryid
where cn.code = 'ES' 
 and a.SeoUrl = 'medicina'
 and ctc.SeoUrl = 'curso-universitario'