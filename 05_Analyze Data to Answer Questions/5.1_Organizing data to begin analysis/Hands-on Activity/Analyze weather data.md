# Hands-On Activity: Analyze weather data in BigQuery

**Activity overview** 

Previously, you learned how to use BigQuery to clean data and prepare it for analysis. Now you will query a dataset and save the results into a new table. This is a useful skill when the original data source changes continuously and you need to preserve a specific dataset for continued analysis. It’s also valuable when you are dealing with a large dataset and know you’ll be doing more than one analysis using the same subset of data. 

In this scenario, you’re a data analyst at a local news station. You have been tasked with answering questions for meteorologists about the weather. You will work with public data from the National Oceanic and Atmospheric Administration (NOAA), which has data for the entire United States. This is why you will need to save a subset of the data in a separate table. 

By the time you complete this activity, you will be able to use SQL queries to create new tables when dealing with complex datasets. This will greatly simplify your analysis in the future.

**Access the public dataset **
**Refer to Weather file **

For this activity you will need the NOAA weather data from BigQuery’s public datasets. 

1. Click on the + ADD DATA button in the Explorer menu pane and select Explore public datasets. This will open a new menu where you can search public datasets that are already available through Google Cloud. If you have already loaded the BigQuery public datasets into your console, you can just search noaa_gsod in your Explorer menu and skip these steps.


2. Type noaa_gsod into the search bar. You’ll find the GSOD of Global Surface Summary of the Day Weather Data. 


3. Click the GSOD dataset to open it. This will provide you with more detailed information about the dataset if you’re interested. Click VIEW DATASET to open this dataset in your console. 


4. Search noaa_gsod in your Explorer menu pane to find the dataset. Click the dropdown menu to explore the tables in this dataset. Scroll down to gsod2020 and open the table menu by clicking the three vertical dots. 


5. Check the table’s schema and preview it to get familiar with the data. Once you’re ready, you can click COMPOSE NEW QUERY to start querying the dataset. 


**Querying the data**

The meteorologists who you’re working with have asked you to get the temperature, wind speed, and precipitation for stations La Guardia and JFK, for every day in 2020, in descending order by date, and ascending order by Station ID. Use the following query to request this information:

```
SELECT
  stn,

  date,
  -- Use the IF function to replace 9999.9 values, which the dataset description explains is the default value when temperature is missing, with NULLs instead.
       IF(

        temp=9999.9,
        NULL,
        temp) AS temperature,

  -- Use the IF function to replace 999.9 values, which the dataset description explains is the default value when wind speed is missing, with NULLs instead.
       IF(

        wdsp="999.9",
        NULL,
        CAST(wdsp AS Float64)) AS wind_speed,

-- Use the IF function to replace 99.99 values, which the dataset description explains is the default value when precipitation is missing, with NULLs instead.

    IF(

       prcp=99.99,
       0,
       prcp) AS precipitation
FROM
  `bigquery-public-data.noaa_gsod.gsod2020`
WHERE
  stn="725030" -- La Guardia

  OR stn="744860" -- JFK
ORDER BY
  date DESC,
  stn ASC
```
The meteorologists also asked you a couple questions while they were preparing for the nightly news: They want the average temperature in June 2020 and the average wind_speed in December 2020. 

Instead of rewriting similar, but slightly different, queries over and over again, there is an easier approach: Save the results from the original query as a table for future queries. 

Save a new table

In order to make this subset of data easier to query from, you can save the table from the weather data into a new dataset. 

1. From your Explorer pane, click the three vertical dots next to your project and select Create dataset. You can name this dataset demos and leave the rest of the default options. Click CREATE DATASET. 


2. Open your new dataset and select COMPOSE NEW QUERY. Input the following query to get the average temperature, wind speed, visibility, wind gust, precipitation, and snow depth La Guardia and JFK stations for every day in 2020, in descending order by date, and ascending order by Station ID: 

SELECT
  stn,

  date,
  -- Use the IF function to replace 9999.9 values, which the dataset description explains is the default value when temperature is missing, with NULLs instead.
       IF(

        temp=9999.9,
        NULL,
        temp) AS temperature,

  -- Use the IF function to replace 999.9 values, which the dataset description explains is the default value when wind speed is missing, with NULLs instead.
       IF(

        wdsp="999.9",
        NULL,
        CAST(wdsp AS Float64)) AS wind_speed,

-- Use the IF function to replace 99.99 values, which the dataset description explains is the default value when precipitation is missing, with NULLs instead.

    IF(

       prcp=99.99,
       0,
       prcp) AS precipitation
FROM
  `bigquery-public-data.noaa_gsod.gsod2020`
WHERE
  stn="725030" -- La Guardia

  OR stn="744860" -- JFK
ORDER BY
  date DESC,
  stn ASC

3. Before you run the query, select the MORE menu from the Query Editor and open the Query Settings menu. In the Query Settings menu, select Set a destination table for query results. Set the dataset option to demos and name the table nyc_weather.


4. Run the query from earlier; now it will save as a new table in your demos dataset. 

5. Return to the Query settings menu by using the MORE dropdown menu. Reset the settings to Save query results in a temporary table. This will prevent you from accidentally adding every query as a table to your new dataset.

Query your new table

Now that you have the subset of this data saved in a new table, you can query it more easily. Use the following query to find the average temperature from the meteorologists first question:
```

SELECT

AVG(temperature)

FROM

`airy-shuttle-315515.demos.nyc_weather` --remember to change the project name to your project before running this query

WHERE

date BETWEEN '2020-06-01' AND '2020-06-30'
```
You can also use this syntax to find the average wind_speed or any other information from this subset of data you’re interested in. Try constructing a few more queries to answer the meteorologists’ questions!

The ability to save your results into a new table is a helpful trick when you know you're only interested in a subset of a larger complex dataset that you plan on querying multiple times, such as the weather data for just La Guardia and JFK. This also helps minimize errors during your analysis.
