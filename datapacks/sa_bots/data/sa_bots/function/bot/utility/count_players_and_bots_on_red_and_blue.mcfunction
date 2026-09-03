#blue
execute store result score #count_blue_human sab.var run execute if entity @a[tag=in_game,scores={Team=1}]
execute store result score #count_blue_bot sab.var run execute if data storage sa_bots:bot_data bots[{team:1}]
scoreboard players operation #count_blue sab.var = #count_blue_human sab.var
scoreboard players operation #count_blue sab.var += #count_blue_bot sab.var

#red
execute store result score #count_red_human sab.var run execute if entity @a[tag=in_game,scores={Team=2}]
execute store result score #count_red_bot sab.var run execute if data storage sa_bots:bot_data bots[{team:2}]
scoreboard players operation #count_red sab.var = #count_red_human sab.var
scoreboard players operation #count_red sab.var += #count_red_bot sab.var