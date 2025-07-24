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

-- Most recent Date in the Data
SELECT MAX(Date) AS LatestDate
FROM covid19_data;

-- Earliest Date in the Data
SELECT MIN(Date) AS EarliestDate
FROM covid19_data;


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

-- Top 10 Countries with Highest DeathRate
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
    DeathRate DESC
LIMIT 10;

-- Recovery Rate per Countries with Latest Date
WITH latest_date AS (
  SELECT MAX(Date) AS max_date
  FROM covid19_data
)
SELECT 
  "Country/Region" AS country,
  SUM(Confirmed) AS TotalConfirmed,
  SUM(Recovered) AS TotalRecovered,
  ROUND(
      CASE 
          WHEN SUM(Confirmed) > 0 THEN 
              (SUM(Recovered) * 100.0) / SUM(Confirmed)
          ELSE 0
      END, 2
  ) AS RecoveryRate
FROM 
    covid19_data
JOIN latest_date ld ON cd.Date = ld.max_date
GROUP BY 
    "Country/Region"
ORDER BY 
    RecoveryRate DESC;

-- TOP 10 Countries with Highest Death
SELECT
  "Country/Region",
  SUM(Deaths) AS TotalDeaths
FROM 
  covid19_data
GROUP BY
    "Country/Region"
ORDER BY
    DeathRate DESC
LIMIT 10;

-- TOP 10 Countries with Highest ActiveCases
SELECT
  "Country/Region",
  SUM(Active) AS TotalActiveCases
FROM 
  covid19_data
GROUP BY
    "Country/Region"
ORDER BY
    TotalActiveCases DESC
LIMIT 10;

-- Countries with zero reported Cases
SELECT
  "Country/Region",
   Confirmed
FROM 
  covid19_data
WHERE
  Confirmed = 0
GROUP BY 
    "Country/Region", Confirmed;
