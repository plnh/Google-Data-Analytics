--Cleaning data 
-- Table automobie_data

SELECT
  MIN(length) AS min_length,
  MAX(length) AS max_length
FROM
  automobile_data;

SELECT *
FROM
  automobile_data 
WHERE 
  num_of_doors IS NULL;

UPDATE automobile_data
SET
  num_of_doors = 'four'
WHERE
  make = 'dodge' or make = 'mazda'
  AND (fuel_type = 'gas' or fuel_type = 'diesel')
  AND body_style = 'sedan';

SELECT
  DISTINCT num_of_cylinders
FROM automobile_data;

UPDATE
  automobile_data
SET
  num_of_cylinders = 'two'
WHERE
  num_of_cylinders = 'tow';


SELECT
  MIN(compression_ratio) AS min_compression_ratio,
  MAX(compression_ratio) AS max_compression_ratio
FROM
  automobile_data;

SELECT
  MIN(compression_ratio) AS min_compression_ratio,
  MAX(compression_ratio) AS max_compression_ratio
FROM
  automobile_data
WHERE
  compression_ratio <> 70;

SELECT COUNT(*) AS num_of_rows_to_delete
FROM 
	automobile_data
WHERE
   compression_ratio = 70;

DELETE automobile_data
WHERE 
	compression_ratio = 70;

SELECT DISTINCT drive_wheels
FROM
  automobile_data;

SELECT
  DISTINCT drive_wheels,
  LEN(drive_wheels) AS string_length
FROM
  automobile_data;

SELECT
  MAX(price) AS max_price
FROM
  automobile_data;