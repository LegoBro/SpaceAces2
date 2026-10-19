scoreboard players add activePoint Numbers 1
scoreboard players set point Numbers 0
execute if score activePoint Numbers matches 1.. run scoreboard players operation gamemode.setback.blue_points Numbers += activePoint Numbers

## Adds a capture delay so you can't cap next point for a few seconds to let players reposition
execute store result score #capture_delay gamemode run data get storage space_aces:gamemodes gamemodes[{"name":"setback"}].capture_delay

function gamemode:setback/update_captured_point
tellraw @a "Blue Captured the Point!"

execute unless entity @n[type=marker,tag=gamemode.setback.active_point] unless entity @a[tag=winner] run function gamemode:blue_win
execute if score gamemode.setback.blue_points Numbers >= gamemode.setback.goal_points Numbers unless entity @a[tag=winner] run function gamemode:blue_win
clear @a compass