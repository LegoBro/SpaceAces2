execute store result score c-0-0-0-1 sab.var run execute if data storage sa_bots:team_composition root.classes[1].count[{team:2}]
execute store result score c-0-0-0-2 sab.var run execute if data storage sa_bots:team_composition root.classes[2].count[{team:2}]
execute store result score c-0-0-0-3 sab.var run execute if data storage sa_bots:team_composition root.classes[3].count[{team:2}]
execute store result score c-0-0-0-4 sab.var run execute if data storage sa_bots:team_composition root.classes[4].count[{team:2}]
execute store result score c-0-0-0-5 sab.var run execute if data storage sa_bots:team_composition root.classes[5].count[{team:2}]
execute store result score c-0-0-0-6 sab.var run execute if data storage sa_bots:team_composition root.classes[6].count[{team:2}]
execute store result score c-0-0-0-7 sab.var run execute if data storage sa_bots:team_composition root.classes[7].count[{team:2}]
execute store result score c-0-0-0-8 sab.var run execute if data storage sa_bots:team_composition root.classes[8].count[{team:2}]
execute store result score c-0-0-0-9 sab.var run execute if data storage sa_bots:team_composition root.classes[9].count[{team:2}]
execute store result score c-0-0-0-a sab.var run execute if data storage sa_bots:team_composition root.classes[10].count[{team:2}]
execute store result score c-0-0-0-b sab.var run execute if data storage sa_bots:team_composition root.classes[11].count[{team:2}]
execute store result score c-0-0-0-c sab.var run execute if data storage sa_bots:team_composition root.classes[12].count[{team:2}]
execute store result score c-0-0-0-d sab.var run execute if data storage sa_bots:team_composition root.classes[13].count[{team:2}]
execute store result score c-0-0-0-e sab.var run execute if data storage sa_bots:team_composition root.classes[14].count[{team:2}]
execute store result score c-0-0-0-f sab.var run execute if data storage sa_bots:team_composition root.classes[15].count[{team:2}]

#also do player count and thresholds
scoreboard players operation #playerCountCurrentTeam sab.var = #playerCountRed sab.var
scoreboard players operation #player_threshold_25_percent sab.var = #red_player_threshold_25_percent sab.var
scoreboard players operation #player_threshold_50_percent sab.var = #red_player_threshold_50_percent sab.var
scoreboard players operation #player_threshold_34_percent sab.var = #red_player_threshold_34_percent sab.var
scoreboard players operation #player_threshold_67_percent sab.var = #red_player_threshold_67_percent sab.var