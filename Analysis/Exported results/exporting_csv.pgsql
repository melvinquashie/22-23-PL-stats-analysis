-- exporting all generated tables to excel

COPY pl_player_stats TO '/Users/melvinquashie/Documents/Data Analytics /sql projects/22-23 PL stats analysis/Analysis/Exported results/pl_player_stats.csv' DELIMITER ',' CSV HEADER;

COPY team_stats TO '/Users/melvinquashie/Documents/Data Analytics /sql projects/22-23 PL stats analysis/Analysis/Exported results/team_stats.csv' DELIMITER ',' CSV HEADER;

COPY league_table TO '/Users/melvinquashie/Documents/Data Analytics /sql projects/22-23 PL stats analysis/Analysis/Exported results/league_table.csv' DELIMITER ',' CSV HEADER;
