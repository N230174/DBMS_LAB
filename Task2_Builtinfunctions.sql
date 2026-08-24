USE PlaystoreDB;

-- level 0
SELECT UPPER(DeveloperName) From Developers;
SELECT LOWER(DeveloperName) From Developers;
SELECT LENGTH(AppName) From Apps;
SELECT CategoryName,LENGTH(CategoryName) From Categories;
SELECT CURRENT_DATE(),current_time();
SELECT ROUND(Rating,0) From Apps;

-- level 1
SELECT SUBSTRING(AppName,1,5) From Apps;
SELECT CONCAT(DeveloperName,' ',Country) From Developers;
SELECT ROUND(Rating) From Apps;
SELECT CEIL(Price) From Apps;
SELECT FoundedYear From Developers;
SELECT CONVERT(Downloads,CHAR) From Apps;

-- level 2
SELECT UPPER(AppName),Rating From Apps;
SELECT SUBSTRING(CategoryName,1,3) From Categories;
SELECT ABS(Price-200) From Apps;
SELECT DeveloperName,length(DeveloperName) From Developers;
SELECT CURRENT_DATE(),CURRENT_TIMESTAMP();
SELECT CAST(MinimumAge AS CHAR) From Categories;

