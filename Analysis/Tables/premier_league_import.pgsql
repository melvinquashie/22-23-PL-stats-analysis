-- Importing data from Premier_League.csv to game_stats table

/**
BULK INSERT game_stats
FROM '/Users/melvinquashie/Documents/Data Analytics /sql projects/22-23 PL stats analysis/raw data/Premier_League.csv'
WITH (FORMAT = ‘CSV’
	    , FIRSTROW = 2
	    , FIELDTERMINATOR = ‘,’
	    , ROWTERMINATOR =  ‘0x0a’);
*/
      
COPY game_stats FROM '/Users/melvinquashie/Documents/Data Analytics /sql projects/22-23 PL stats analysis/raw data/Premier_League.csv' DELIMITER ',' CSV HEADER;
