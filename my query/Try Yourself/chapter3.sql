--try it yourself (Data types)

CREATE TABLE char_data_types (
varchar_column varchar(10),
char_column char(10),
text_column text
);
INSERT INTO char_data_types
VALUES
('abc', 'abc', 'abc'),
('defghi', 'defghi', 'defghi');

COPY char_data_types TO 'C:\YourDirectory\typetest.txt'
WITH (FORMAT CSV, HEADER, DELIMITER '|');

CREATE TABLE movies (id integer,
movie varchar, actor varchar);
   
COPY movies 
FROM 'C:\YourDirectory\typetest.txt'
WITH (FORMAT CSV, HEADER)


COPY (
SELECT geo_name, housing_unit_count_100_percent, geo_name
FROM us_counties_2010
LIMIT 20
)
TO 'C:\YourDirectory\typetest.txt'
WITH (FORMAT CSV, HEADER, DELIMITER '|');
  
