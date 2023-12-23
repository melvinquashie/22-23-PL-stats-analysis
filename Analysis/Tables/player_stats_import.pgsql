-- Importing data from 2022-2023 Football Player Stats.csv to player_stats table

COPY player_stats FROM '/Users/melvinquashie/Documents/Data Analytics /sql projects/22-23 PL stats analysis/raw data/2022-2023 Football Player Stats.csv' DELIMITER ';' CSV HEADER ENCODING 'LATIN1';
