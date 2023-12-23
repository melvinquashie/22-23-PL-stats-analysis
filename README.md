# Premier League 20222/2023 Season Data Analysis

In this project, we are given the following raw data as .csv files:
1. [2022-2023 Football Player Stats](https://www.kaggle.com/datasets/vivovinco/20222023-football-player-stats): This dataset contains 2022-2023 football player stats per 90 minutes. Only players of Premier League, Ligue 1, Bundesliga, Serie A and La Liga are listed. A table was created named "**player_stats**".
2. [Premier League Stats 2022-2023](https://www.kaggle.com/datasets/thamersekhri/premier-league-stats-2022-2023): This dataset contains the stats of all the Premier League matches during the season 2022-2023. A table was created named "**game_stats**".

### Some Inconsistencies and Inaccuracies noted from Dataset:

For the 2022-2023 Football Player Stats raw data:
* Incoistency with stats per 90: 
Stats are meant to be per 90 (per 90 mins) but the data shown in the goals column can not be per 90. NB: Stat90 (stat per 90 mins) = (Total os stat / Total minutes played)* 90
eg: Player: Erling Haaland, MP(total minutes played): 1636 Goals: 25; this stat cannot be per 90 otherwise this data would mean over the course of the season Haaland scored 454 goals.
Other data in the dataset (eg: assists) are per 90 data.
* Wrong data:
Some of the data in the dataset is wrong (per real world data).
eg: Player: Erling Haaland, Goals: 25 when the actual number of goals he scored in the premier league is 36.
Player: Mohamed Salah, Goals: 7 when the actual number of goals he scored in the premier league is 19.
* Lack of some data:
eg: saves per 90 for keepers to help analyse keepers as well and possibly rank them as well.

Regardless of the inaccuracies and limitations in the data, the above 2 datasets were analysed as is.

## Analysis to be done

### Basic Statistical Analysis:
1. Team Performance Metrics: Calculate and compare key metrics (goals scored, goals conceded, wins, losses,draws, points) for each team across different seasons.
For this analysis, a table named "**team_stats**" was created. This table was generated from "**game_stats**" and contains the following columns:
* Team name
* Total goals scored at home
* Total goals conceded at home
* Total goals scored away from home
* Total goals conceded away from home
* Games played at home
* Wins at home
* Losses at home
* Draws at home
* Games played away from home
* Wins away
* Losses away
* Draws away
* Average possession at home
* Average possession away
* Average shots at home
* Average shots away
* Average number of chances created at home
* Average number of chances created away
* Average corners taken at home
* Average corners taken away
* Average tackles committed at home
* Average tackles committed away
* Average saves made at home by keeper
* Average saves made away by keeper
* Average fouls committed at home
* Average fouls committed away
* Average number of yellow cards received at home
* Average number of yellow cards received away
* Average number of red cards received at home
* Average number of red cards received away

2. Player Performance: Analyze player statistics (goals, assists, shots on target, passes completed, tackles, etc.) to identify top performers or trends over seasons.
For this analysis, a table for only Premier League player stats named "**pl_player_stats**" was generated from the "**player_stats**" table. Please note that some data was per 90 as mentioned earlier. This table contains the following columns:
* Player name
* Team name
* Age
* Matches played
* Matches started
* Minutes played
* Own goals
* Goals
* Assists
* Shots
* Shots on target
* Shot distance
* Free kicks
* Penalty kicks
* Passes attempted
* Passes completed
* Pass distance
* Passes in final third
* Passes in 18 yard box
* Crosses in 18 yard box
* Passes before shot
* Corner kicks
* Chances created
* Shot creation actions
* Goal creation actions
* Blocks
* Interceptions
* Aerial battles won
* Aerial battles lost
* Touches in defensive penalty box
* Touches in defensive third
* Touches in attacking penalty box
* Touches in attacking third
* Yellow cards received
* 2nd Yellow cards received
* Red card received
* Fouls committed
* Fouls drawn
* Offsides
* Penalties won
* Penalties conceded

### Team Comparison and Rankings:
1. League Standings: Generate league tables by season based on points, wins, or goal differences to visualize team rankings.
The final league table at the end of the 22/23 season was determined with the given data. A table named "**league_table**" was created and contains the following columns:
* Team rank
* Club or Team name
* Number of games played
* Team wins
* Team draws
* Team losses
* Team goal difference
* Team points

##### NB// 
These columns are the same as what is chosen for the actual Premier League Table.

### Match Analysis:
1. Goal Analysis: Analyze goal distribution (home vs. away, half-wise distribution) to identify patterns in scoring.
2. Home vs. Away Performances: Compare team performances in home and away matches to find any home advantage or weakness trends.

The "**team_stats**" table helps analyse the above metrics.

##### NB//
A glossary and ERD (entity relationship diagram) for all the created tables is in the "**Tables.xlsx**" file.
The entire Database has ben backed up in the "**PL_2022-23.sql**" file.


## References
1. [Manage PostgreSQL Databases from the Command Line with psql](https://www.freecodecamp.org/news/manage-postgresql-with-psql/)
2. [Creating a table](https://www.youtube.com/watch?v=oReH2vO8Izc)
3. [Importing csv file into Database](https://www.youtube.com/watch?v=RzRTZqLmEsI)
4. [Saving a database locally](https://www.postgresql.org/docs/current/backup-dump.html)
5. [A90 (Assists per 90)](https://alvin-almazov.com/soccer-eng/a90-assists-per-90/) 
6. [Readme: key details at a glance – including a template](https://www.ionos.com/digitalguide/websites/web-development/readme-file/#:~:text=The%20table%20of%20contents%20can,and%20the%20list%20is%20created.)




