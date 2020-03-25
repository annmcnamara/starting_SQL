-- Drop table if exists
DROP TABLE firepower;

-- Create new table to import data
CREATE TABLE firepower (
	country VARCHAR,
	ISO3 VARCHAR,
	rank INT,
	TotalPopulation INT,
	ManpowerAvailable INT,
	TotalMilitaryPersonnel INT,
	ActivePersonnel INT,
	ReservePersonnel INT,
	TotalAircraftStrength INT,
	FighterAircraft INT,
	AttackAircraft INT,
	TotalHelicopterStrength INT,
	AttackHelicopters INT
);

-- Import data from firepower.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM firepower;

SELECT * FROM firepower WHERE ReservePersonnel = 0;
DELETE FROM firepower WHERE ReservePersonnel = 0;

UPDATE firepower 
SET FighterAircraft = 1
WHERE FighterAircraft = 0;

-- from lowest to highest
SELECT TotalAircraftStrength FROM firepower ORDER BY TotalAircraftStrength;
-- order by descending
SELECT TotalAircraftStrength FROM firepower ORDER BY TotalAircraftStrength DESC;

UPDATE firepower 
SET TotalAircraftStrength = TotalAircraftStrength + 1

-- Find the Averages for TotalMilitaryPersonnel, 
-- TotalAircraftStrength, TotalHelicopterStrength, 
---and TotalPopulation, and rename the columns with their designated average.

SELECT  AVG(TotalMilitaryPersonnel)  AS AveTotalMilitaryPersonnel, 
		AVG(TotalAircraftStrength)   AS AveTotalAircraftStrength,
 		AVG(TotalHelicopterStrength) AS AveTotalHelicopterStrength,
 		AVG(TotalPopulation)         AS AveTotalPopulation
FROM firepower;

INSERT INTO firepower(Country, TotalPopulation, 
					  TotalMilitaryPersonnel,TotalAircraftStrength,
					 TotalHelicopterStrength)
VALUES ('GlobalLand', 600000000, 50000000, 450, 183);					  


