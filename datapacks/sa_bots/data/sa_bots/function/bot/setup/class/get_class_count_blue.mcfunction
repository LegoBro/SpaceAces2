execute store result score c-0-0-0-1 sab.var run data get storage sa_bots:team_composition root.class[1].count{team:1}
execute store result score c-0-0-0-2 sab.var run data get storage sa_bots:team_composition root.class[2].count{team:1}
execute store result score c-0-0-0-3 sab.var run data get storage sa_bots:team_composition root.class[3].count{team:1}
execute store result score c-0-0-0-4 sab.var run data get storage sa_bots:team_composition root.class[4].count{team:1}
execute store result score c-0-0-0-5 sab.var run data get storage sa_bots:team_composition root.class[5].count{team:1}
execute store result score c-0-0-0-6 sab.var run data get storage sa_bots:team_composition root.class[6].count{team:1}
execute store result score c-0-0-0-7 sab.var run data get storage sa_bots:team_composition root.class[7].count{team:1}
execute store result score c-0-0-0-8 sab.var run data get storage sa_bots:team_composition root.class[8].count{team:1}
execute store result score c-0-0-0-9 sab.var run data get storage sa_bots:team_composition root.class[9].count{team:1}
execute store result score c-0-0-0-a sab.var run data get storage sa_bots:team_composition root.class[10].count{team:1}
execute store result score c-0-0-0-b sab.var run data get storage sa_bots:team_composition root.class[11].count{team:1}
execute store result score c-0-0-0-c sab.var run data get storage sa_bots:team_composition root.class[12].count{team:1}
execute store result score c-0-0-0-d sab.var run data get storage sa_bots:team_composition root.class[13].count{team:1}
execute store result score c-0-0-0-e sab.var run data get storage sa_bots:team_composition root.class[14].count{team:1}
execute store result score c-0-0-0-f sab.var run data get storage sa_bots:team_composition root.class[15].count{team:1}

#also do player count and thresholds
scoreboard players operation #playerCountCurrentTeam sab.var = #playerCountBlue sab.var
scoreboard players operation #player_threshold_25_percent sab.var = #blue_player_threshold_25_percent sab.var
scoreboard players operation #player_threshold_50_percent sab.var = #blue_player_threshold_50_percent sab.var
scoreboard players operation #player_threshold_34_percent sab.var = #blue_player_threshold_34_percent sab.var
scoreboard players operation #player_threshold_67_percent sab.var = #blue_player_threshold_67_percent sab.var