-- Creating a table for only Premier League team selected stats.
-- This table is drawn from the already created game_stats table.


CREATE TABLE team_stats
AS
(
  WITH home AS 
  (
    SELECT DISTINCT home_team,
         SUM(home_goals) AS home_goals_scored,
         AVG(home_possessions) AS avg_home_possession,
         AVG(home_shots) AS avg_home_shots,
         AVG(home_chances) AS avg_home_chances,
         AVG(home_corners) AS avg_home_corners,
         AVG(home_tackles) AS avg_home_tackles,
         AVG(home_saves) AS avg_home_saves,
         AVG(home_fouls) AS avg_home_fouls,
         AVG(home_yellow) AS avg_home_yellows,
         AVG(home_red) AS avg_home_reds,

         SUM(away_goals) AS home_goals_conceded,

         COUNT(home_team) AS home_games,
         COUNT(CASE WHEN home_goals > away_goals THEN 1 END) AS home_win,
         COUNT(CASE WHEN home_goals = away_goals THEN 1 END) AS home_draw,
         COUNT(home_team) - (COUNT(CASE WHEN home_goals > away_goals THEN 1 END) + COUNT(CASE WHEN home_goals = away_goals THEN 1 END))AS home_loss

    FROM game_stats
    GROUP BY 1
  ),

  away AS
  (
    SELECT DISTINCT away_team,
            SUM(away_goals) AS away_goals_scored,
            AVG(away_possessions) AS avg_away_possession,
            AVG(away_shots) AS avg_away_shots,
            AVG(away_chances) AS avg_away_chances,
            AVG(away_corners) AS avg_away_corners,
            AVG(away_tackles) AS avg_away_tackles,
            AVG(away_saves) AS avg_away_saves,
            AVG(away_fouls) AS avg_away_fouls,
            AVG(away_yellow) AS avg_away_yellows,AVG(away_red) AS avg_away_reds,

            SUM(home_goals) AS away_goals_conceded,

            COUNT(away_team) AS away_games,
            COUNT(CASE WHEN home_goals < away_goals THEN 1 END) AS away_win,
            COUNT(CASE WHEN home_goals = away_goals THEN 1 END) AS away_draw,
            COUNT(away_team) - (COUNT(CASE WHEN home_goals < away_goals THEN 1 END) + COUNT(CASE WHEN home_goals = away_goals THEN 1 END)) AS away_loss

    FROM game_stats
    GROUP BY 1
  )

  SELECT h.home_team team,
         h.home_goals_scored home_goals_scored,
         h.home_goals_conceded home_goals_conceded,

         a.away_goals_scored away_goals_scored,
         a.away_goals_conceded away_goals_conceded,

         h.home_games home_games,
         h.home_win home_wins,
         h.home_loss home_losses,
         h.home_draw home_draws,

         a.away_games away_games,
         a.away_win away_wins,
         a.away_loss away_losses,
         a.away_draw away_draws,



         h.avg_home_possession avg_home_possession,
         a.avg_away_possession avg_away_possession,
         h.avg_home_shots avg_home_shots,
         a.avg_away_shots avg_away_shots,
         h.avg_home_chances avg_home_chances,
         a.avg_away_chances avg_away_chances,
         h.avg_home_corners avg_home_corners,
         a.avg_away_corners avg_away_corners,
         h.avg_home_tackles avg_home_tackles,
         a.avg_away_tackles avg_away_tackles,
         h.avg_home_saves avg_home_saves,
         a.avg_away_saves avg_away_saves,
         h.avg_home_fouls avg_home_fouls,
         a.avg_away_fouls avg_away_fouls,
         h.avg_home_yellows avg_home_yellows,
         a.avg_away_yellows avg_away_yellows,
         h.avg_home_reds avg_home_reds,
         a.avg_away_reds avg_away_reds

FROM home h
JOIN away a
ON h.home_team = a.away_team

)
