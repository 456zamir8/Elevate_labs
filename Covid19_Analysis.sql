-- Basic Aggregates
-- Total Cases Globally:
SELECT 
  SUM(Confirmed) AS TotalConfirmed,
  SUM(Deaths) AS TotalDeaths,
  SUM(Recovered) AS Recovered,
  SUM(Active) AS TotalActive,
FROM
  covid19_data;

-- Total ConfirmedCases by country:
SELECT 
  "Country/Region" AS Country,
  SUM(Confirmed) AS TotalConfirmed,
FROM
  covid19_data;
GROUP BY
  "Country/Region"
ORDER BY
    TotalConfirmed DESC;

-- Time Based Trends:
-- Cases Over Time (Global Trend)
SELECT
  Date,
  SUM(Deaths) AS DailyDeaths,
  SUM(Confirmed) AS DailyCases
FROM covid19_data
GROUP BY Date
ORDER BY Date;

-- Daily new cases per country
SELECT 
  Date, 
  "Country/Region", 
  SUM(Confirmed) AS Confirmed
FROM 
  covid19_data
GROUP BY 
  Date, Country_Region
ORDER BY 
  Country_Region, Date;

-- Geographical Breakdown
-- Cases By WHO Region
SELECT 
  "WHO Region", 
  SUM(Confirmed) AS Confirmed,
  SUM(Deaths) AS Deaths,
  SUM(Recovered) AS Recovered,
  SUM(Active) AS Active
FROM 
  covid19_data
GROUP BY 
  "WHO Region";

-- Countries with Highest DeathRate
SELECT
  "Country/Region",
  SUM(Deaths)*1.0 / NULLIF(SUM(Confirmed), 0) AS DeathRate
FROM 
  covid19_data
GROUP BY
    "Country/Region"
HAVING
    SUM(Confirmed) > 0
ORDER BY
    DeathRate DESC;
