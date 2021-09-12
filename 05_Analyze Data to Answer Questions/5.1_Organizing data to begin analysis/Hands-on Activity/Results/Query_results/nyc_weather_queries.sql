-- Fetch the first 10 rows to get to know the data
SELECT TOP 10 * 
FROM nyc_weather_table;

--Check if there's null values
SELECT * 
FROM nyc_weather_table
WHERE 
	stn IS NULL
	OR date IS NULL
	OR temp IS NULL 
	OR wdsp IS NULL 
	OR prcp IS NULL;

--Check if there's abnormal values
SELECT 
	min(temp) AS min_temp,
	max(temp) As max_temp,
	min(wdsp) AS min_wind_speed,
	max(wdsp) AS max_wind_speed,
	min(prcp) AS min_snow,
	max(prcp) AS max_snow
FROM nyc_weather_table; 

-- Temperature, wind speed and precipitation 
-- for stations La Guardia (725030) and JFK (744860) 
-- for every day in 2020 
-- in descending order of date 
-- and ascending order of station ID (stn)
SELECT
	stn,
	date,
	temp AS temperature,
	( CASE WHEN wdsp = 999.9 THEN NULL -- Replace numerical null values with actual null
		ELSE wdsp END) as wind_speed,
	(CASE WHEN prcp = 99.9  THEN NULL
		ELSE prcp END) AS snow_depth
FROM nyc_weather_table
WHERE 
	stn = 725030  OR  -- La Guardia
	stn = 744860     -- JFK
ORDER BY date DESC, stn;

--  Average temperature in June 2020 
SELECT
	stn,
	date,
	AVG(temp) AS temperature
FROM nyc_weather_table
WHERE mo = 06 AND year = 2020
GROUP BY date, stn 	
ORDER BY date DESC, stn;

-- The average wind_speed in December 2020
SELECT
	stn,
	date,
	AVG(wdsp) AS wind_speed
FROM nyc_weather_table
WHERE mo = 12 AND year = 2020
GROUP BY date, stn 	
ORDER BY date DESC, stn;
