CREATE DATABASE TEST1
USE TEST1

CREATE TABLE Countries(
    Id int primary key identity,
    Name NVARCHAR(50),
    Population DECIMAL(18,2),
    Area DECIMAL(18,2)
)

CREATE TABLE Cities(
    Id int primary key identity,
    Name NVARCHAR(50),
    Population DECIMAL(18,2),
    Area DECIMAL(18,2),
    CountryId int REFERENCES Countries(Id),
)


-- SELECT * FROM Countries
-- SELECT * FROM Cities c 
-- Join Countries cn
-- ON

-- c.CountryId=cn.Id


-- inner join start
SELECT c.Name 'CityName', c.Population 'CityPopulation', c.Area ,cn.Name 'CountyName'  FROM Cities c
Join Countries cn
ON
c.CountryId=cn.Id

where c.Area BETWEEN 2 AND 3
-- inner join end




-- inner left join start
SELECT c.Name 'CityName', c.Population 'CityPopulation', c.Area ,cn.Name 'CountyName'  FROM Cities c
Left Join Countries cn
ON
c.CountryId=cn.Id
-- inner left join end



-- inner right join start
SELECT c.Name 'CityName', c.Population 'CityPopulation', c.Area ,cn.Name 'CountyName'  FROM Cities c
Right Join Countries cn
ON
c.CountryId=cn.Id
-- inner right join end



-- inner full join start
SELECT c.Name 'CityName', c.Population 'CityPopulation', c.Area ,cn.Name 'CountyName'  FROM Cities c
Full Join Countries cn
ON
c.CountryId=cn.Id
-- inner full join end






CREATE TABLE Positions (
    Id int primary key identity,
    Name nvarchar(50),
    DependId int,
)

-------self join

SELECT p.Name 'PositionName', p1.Name 'DependName' FROM Positions p, Positions p1
WHERE p.DependId=p1.Id
-------self join


------cross join
CREATE TABLE Products (
    Id int primary key identity,
    Name nvarchar(50)
)


CREATE TABLE Size (
    Id int primary key identity,
    Name nvarchar(50)
)





SELECT p.Name 'ProductName', s.Name 'ProductSize'   FROM Products p
CROSS JOIN
Size s
------cross join