scoreboard players add activePoint Numbers 1
scoreboard players set point Numbers 0

## Adds a capture delay so you can't cap next point for a few seconds to let players reposition
execute store result score #capture_delay gamemode run data get storage space_aces:gamemodes gamemodes[{"name":"setback"}].capture_delay

function gamemode:setback/update_captured_point

execute if score activePoint Numbers matches 3.. unless entity @a[tag=winner] run function gamemode:red_win