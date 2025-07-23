-- Basic Aggregates
-- Total Cases Globally:
SELECT 
  SUM(Confirmed) AS TotalConfirmed,
  SUM(Deaths) AS TotalDeaths,
  SUM(Recovered) AS Recovered,
  SUM(Active) AS TotalActive,
FROM
  covid19_data;

   TotalConfirmed  TotalDeaths  TotalRecovered  TotalActive
0     828508482.0   43384903.0     388408229.0  396715350.0

-- Total cases by country:
SELECT 
  "Country/Region" AS Country,
  SUM(Confirmed) AS TotalConfirmed,
  SUM(Deaths) AS TotalDeaths,
  SUM(Recovered) AS Recovered,
  SUM(Active) AS TotalActive,
FROM
  covid19_data;
GROUP BY
  "Country/Region"
ORDER BY
    TotalConfirmed DESC;

