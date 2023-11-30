SELECT*
FROM CountriesEconomy

-----1----Regional Analysis On Various Basis---------------

       ----Total Population and GDP per capita for each region---

SELECT Region, AVG(GDP_per_capita) AS AverageGDP, SUM(Population) AS TotalPopulation 
FROM CountriesEconomy 
GROUP BY Region

      -----Comparison Of literacy rates and infant mortality rates across regions----

SELECT Region, AVG(Literacy) AS AverageLiteracy, AVG(Infant_mortality_per_1000_births) AS InfantMortality 
FROM CountriesEconomy 
GROUP BY Region

      ---Distribution of countries by population density or coastline ratio in each region----

SELECT Region, COUNT(*) AS CountryCount, AVG(Pop_Density_per_sq_mi) AS AverragePopulationDensity, AVG(Coastline_coast_area_ratio) AS AverageCoastlineRatio
FROM CountriesEconomy
GROUP BY Region


----Total Population and GDP per capita in Malawi-----

SELECT Country, Population, GDP_per_capita
FROM CountriesEconomy 
WHERE Country = 'Malawi'
ORDER BY Population


-----2-----Economic Analysis On Various Basis-------

        ---Top 10 Countries With The Highest GDP Per Capita----

SELECT TOP 10 WITH TIES Country, GDP_per_capita 
FROM CountriesEconomy 
ORDER BY GDP_per_capita DESC


---Top 10 Countries With Lowest GDP Per Capita----

SELECT TOP 10 Country, GDP_per_capita 
FROM CountriesEconomy 
ORDER BY GDP_per_capita ASC


---------Correlation Between Literacy Rates & GDP Per Capita------

SELECT Literacy, GDP_per_capita 
FROM CountriesEconomy 

-----Contribution Of Agriculture, Industry and Services to GDP----

SELECT Country, Agriculture, Industry, Service
FROM CountriesEconomy 
ORDER BY Country


----Arable land & crop percentage and their relationship with agriculture sector and contribution to GDP----

SELECT Country, Arable, Crops, Agriculture
FROM CountriesEconomy 
ORDER BY Country


----Arable land & crop percentage and their relationship with agriculture sector and contribution to Malawi's GDP----

SELECT Country, Arable, Crops, Agriculture, GDP_per_capita
FROM CountriesEconomy 
WHERE Country =  'Malawi'

-----Distribution Of Countries By Climate And Its IMpact On Economic Indicators---

SELECT Climate, COUNT(*) AS CountryCount, AVG(GDP_per_capita) AS AverageGDP
FROM CountriesEconomy
GROUP BY Climate
ORDER BY Climate

-----Analysis Of Phones Per 1000 People & Its Relation With GDP Per Capita-----

SELECT Country, Phones_per_1000, GDP_per_capita
FROM CountriesEconomy 

-----Birthrate & DeathRate Across Different Countries And Regions----

SELECT Region, Country, Birthrate, Deathrate
FROM CountriesEconomy 
ORDER BY Country

-----3-----Migration Analysis On Various Basis-------

    -----Net Migration Trends & Its Relationship With GDP Per Capita 

SELECT Country, Net_migration, GDP_per_capita
FROM CountriesEconomy 
ORDER BY Country

    -----Net Migration Rates Across Different Regions----

SELECT Region, AVG(Net_migration) AS AverrageNetMigration
FROM CountriesEconomy 
GROUP BY Region

-----Impact Of Net Migration On Birth Rate & Death Rate-----

SELECT Country, Net_migration, Birthrate, Deathrate
FROM CountriesEconomy 

