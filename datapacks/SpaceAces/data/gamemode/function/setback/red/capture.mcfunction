scoreboard players add activePoint Numbers 1
scoreboard players set point Numbers 0

function gamemode:setback/update_captured_point

execute if score activePoint Numbers matches 3.. unless entity @a[tag=winner] run function gamemode:red_win