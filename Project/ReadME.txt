Outputs:
1. Total Cases Globally:
   TotalConfirmed  TotalDeaths    Recovered  TotalActive
0     828508482.0   43384903.0  388408229.0  396715350.0
we can see the total number of deaths, recovered, Active cases Globally

2. Total ConfirmedCases by country:
                   Country  TotalConfirmed
0                       US     224345948.0
1                   Brazil      89524967.0
2                   Russia      45408411.0
3                    India      40883464.0
4                    Spain      27404045.0
..                     ...             ...
182  Saint Kitts and Nevis          1772.0
183              Greenland          1507.0
184               Holy See          1356.0
185       Papua New Guinea          1185.0
186         Western Sahara           901.0
We can see the Total Confirmed cases by Countires the highest cases were found in US must be we can also use LIMIT operator to check the TOP 10 country with confirmed cases

3. Cases Over Time (Global Trend):
          Date  DailyDeaths  DailyCases
0   2020-01-22         17.0       555.0
1   2020-01-23         18.0       654.0
2   2020-01-24         26.0       941.0
3   2020-01-25         42.0      1434.0
4   2020-01-26         56.0      2118.0
..         ...          ...         ...
183 2020-07-23     633506.0  15510481.0
184 2020-07-24     639650.0  15791645.0
185 2020-07-25     644517.0  16047190.0
186 2020-07-26     648621.0  16251796.0
187 2020-07-27     654036.0  16480485.0
We can see the daily number of Deaths and ConfirmedCases Order by Date

4. Daily new cases per country:
      Country/Region       Date  Confirmed
0        Afghanistan 2020-01-22        0.0
1        Afghanistan 2020-01-23        0.0
2        Afghanistan 2020-01-24        0.0
3        Afghanistan 2020-01-25        0.0
4        Afghanistan 2020-01-26        0.0
...              ...        ...        ...
35151       Zimbabwe 2020-07-23     2124.0
35152       Zimbabwe 2020-07-24     2296.0
35153       Zimbabwe 2020-07-25     2434.0
35154       Zimbabwe 2020-07-26     2512.0
35155       Zimbabwe 2020-07-27     2704.0
We can check the daily new cases per country

5. Most recent Date in the Data:
  LatestDate
0 2020-07-27

6. Earliest Date in the Data:
  EarliestDate
0   2020-01-22

7. Cases By WHO Region
              WHO Region    Confirmed      Deaths    Recovered       Active
0  Eastern Mediterranean   74082892.0   1924029.0   48050703.0   24108160.0
1                 Europe  248879793.0  19271040.0  123202075.0  106406678.0
2                 Africa   21791827.0    439978.0   11193730.0   10158119.0
3        South-East Asia   55118365.0   1458134.0   30030327.0   23629904.0
4               Americas  402261194.0  19359292.0  157069444.0  225832458.0
5        Western Pacific   26374411.0    932430.0   18861950.0    6580031.0

8. Top 10 Countries with Highest DeathRate
   Country/Region  DeathRate
0           Yemen   0.263575
1         Belgium   0.153425
2  United Kingdom   0.149457
3          France   0.143724
4           Italy   0.138631
5         Hungary   0.128841
6     Netherlands   0.120428
7          Mexico   0.115633
8           Spain   0.110678
9         Bahamas   0.099421

9. Recovery Rate per Countries with Latest Date
         Country  TotalConfirmed  TotalRecovered  RecoveryRate
0       Holy See            12.0            12.0        100.00
1       Dominica            18.0            18.0        100.00
2        Grenada            23.0            23.0        100.00
3       Djibouti          5059.0          4977.0         98.38
4        Iceland          1854.0          1823.0         98.33
..           ...             ...             ...           ...
182  Timor-Leste            24.0             0.0          0.00
183        Syria           674.0             0.0          0.00
184       Sweden         79395.0             0.0          0.00
185   Mozambique          1701.0             0.0          0.00
186       Serbia         24141.0             0.0          0.00
[187 rows x 4 columns]

10. TOP 10 Countries with Highest Death
  Country/Region  TotalActiveCases
0              US       156981121.0
1          Brazil        31094060.0
2  United Kingdom        22624595.0
3          Russia        19668578.0
4           India        15987913.0
5          France        10980287.0
6           Spain         9277432.0
7          Canada         8656985.0
8            Peru         7748957.0
9           Italy         7363518.0

11. Countries with zero reported Cases
             Country/Region  Confirmed
0                   Armenia          0
1                   Bahamas          0
2                   Bahrain          0
3                Bangladesh          0
4    Bosnia and Herzegovina          0
..                      ...        ...
177                 Romania          0
178                   Spain          0
179                  Turkey          0
180                 Vietnam          0
181                  Malawi          0
[182 rows x 2 columns]
