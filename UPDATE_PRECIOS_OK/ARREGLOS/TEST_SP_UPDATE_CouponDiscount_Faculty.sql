DECLARE @CountryCode VARCHAR(02);
DECLARE @FacultyName VARCHAR (max);
DECLARE @CategoryName VARCHAR (max);
--- convert currency 
DECLARE @CurrencyRate REAL;
-- set values
SET @CountryCode = 'ES';
Set @FacultyName = 'educacion'
Set @CategoryName = 'curso-universitario';
--Set @FacultyName = 'escuela-de-idiomas'
--Set @CategoryName = 'clase-conversacion-idiomas';
SET @CurrencyRate = 66.38;
/*
(SELECT  pc.Value * 1  FROM ProductCouponDiscountCountryModifiers pc
        WHERE pc.CountryCode = @CountryCode
        AND pc.CategoryUrl = @CategoryName) 
*/
SELECT round( (pa.Amount * pfs.Value ) 
            *(SELECT pf.Value
            FROM ProductCouponDiscountFacultyStudyModifiers as pf 
            JOIN CourseTypeCountries as ct ON ct.Name = pf.CategoryUrl
            JOIN Countries as c ON c.id = ct.CountryId
            WHERE c.Code =  @CountryCode   
            AND  ct.SeoUrl = @CategoryName    
            AND  pf.FacultyUrl = @FacultyName)
         * (SELECT  pc.Value FROM ProductCouponDiscountCountryModifiers pc
        WHERE pc.CountryCode = @CountryCode
        AND pc.CategoryUrl = @CategoryName) 
        * 1 , 2,0)            
FROM [dbo].[CourseTypeCountries] ct
LEFT JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
LEFT JOIN ProductFacultyStudyModifiers as pfs On pfs.CategoryUrl = ct.name
LEFT JOIN Countries as c ON c.id = ct.CountryId
WHERE  c.Code =  @CountryCode    
AND  pfs.FacultyUrl = @FacultyName     
AND ct.SeoUrl = @CategoryName 
-------------------------------------------
--*********************************
/*SELECT 
     --ct.Name,  pa.CategoryUrl, pfs.CategoryUrl, ct.SeoUrl, pfs.FacultyUrl
    --,c.code 
    --,pa.Amount AS PRODUCT_AMOUNT,
    round(
    pa.Amount * pfs.Value *
    (SELECT  pc.[Value] FROM ProductCouponDiscountCountryModifiers pc
    WHERE pc.CountryCode = @CountryCode
    AND pc.CategoryUrl =  @CategoryName
    )
    ,2,0) AS New_CouponDiscount
    FROM [dbo].[CourseTypeCountries] ct
        INNER JOIN ProductAmounts as pa on pa.CategoryUrl = ct.Name
        JOIN ProductCouponDiscountFacultyStudyModifiers as pfs On pfs.CategoryUrl = pa.CategoryUrl
        JOIN Countries as c ON c.id = ct.CountryId
    WHERE  c.Code =  @CountryCode    
    AND  pfs.FacultyUrl = @FacultyName     
    AND ct.SeoUrl = @CategoryName 
    */
------------------
/*
--TABLA 6 -  ProductCouponDiscountFacultyStudyModifier	"

SELECT * FROM ProductCouponDiscountFacultyStudyModifiers
SELECT * FROM ProductCouponDiscountCountryModifiers
WHERE CountryCode = 'ES'*/
-- TABLA 5-   ProductCouponDiscountCountryModifier
-----------------------------
/*
Update ProductCouponDiscountCountryModifiers
SET Value = 0.7435
WHERE CategoryUrl = 'curso C1-C2'
AND CountryCode = 'AR'
SELECT * FROM ProductCouponDiscountCountryModifiers
*/
-----------------------------
