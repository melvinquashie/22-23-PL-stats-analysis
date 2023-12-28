# Created sub tables
Two tables were created from the initial tables created from the raw data:
* player_stats
* game_stats

These 2 tables are
* pl_player_stats
* team_stats

Their details are as follows:

A table for only Premier League player stats named "**pl_player_stats**" was generated from the "**player_stats**" table. Please note that some data was per 90 as mentioned earlier. This table contains the following columns:
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


A table named "**team_stats**" was created. This table was generated from "**game_stats**" and contains the following columns:
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
