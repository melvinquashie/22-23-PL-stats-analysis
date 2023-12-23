-- Creating a table for only Premier League player selected stats.
-- This table is drawn from the already created player_stats table.

CREATE TABLE pl_player_stats
AS
(
  SELECT player player_name,
         squad team,
         age,
         mp matches_played,
         starts matches_started,
         min minutes_played,

         og own_goals,
         goals,
         assists,

         shots,
         sot shots_on_target,
         shodist shot_distance,
         shofk free_kicks,
         shopk penalty_kicks,

         pastotatt pass_attempted,
         pastotcmp pass_completed,
         pastotdist pass_distance,
         pas3rd pass_final_third,
         ppa pass_18_yard,
         crspa crosses_18_yard,
         pasass pass_before_shot,
         ck corner_kicks,
         pasass + tb chance_created,

         sca shot_creation_actions,
         gca goal_creation_actions,

         blocks + blksh + blkpass blocks,
         int interceptions,

         aerwon aerial_battles_won,
         aerlost aerial_battles_lost,

         toudefpen touches_defensive_pen,
         toudef3rd touches_defensive_third,
         touattpen touches_attacking_pen,
         touatt3rd touches_attacking_third,

         crdy yellow_card,
         crdy_2nd yellow_card_2nd,
         crdr red_card,
         fls fouls_commited,
         fld fouls_drawn,

         off offsides,
         pkwon penalty_won,
         pkcon penalty_conceded

FROM player_stats
WHERE comp = 'Premier League'      
      
)
