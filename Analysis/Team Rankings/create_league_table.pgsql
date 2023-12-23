-- Team rankings
-- Determining the Premier League table from the given raw data

CREATE TABLE league_table
AS
(
  SELECT RANK() OVER (ORDER BY (3 * (home_wins + away_wins)) + (home_draws + away_draws) DESC) AS "Rk",
         team "CLUB",
         (home_games + away_games) AS "PL",
         (home_wins + away_wins) AS "W",
         (home_draws + away_draws) AS "D",
         (home_losses + away_losses) AS "L",
         (home_goals_scored + away_goals_scored) - (home_goals_conceded + away_goals_conceded) AS "GD",
         (3 * (home_wins + away_wins)) + (home_draws + away_draws) AS "Pts"
  FROM team_stats
  --ORDER BY "Pts" DESC
)
