#this is what actually teleports the player
particle minecraft:poof ~ ~.5 ~ 0.3 0.3 0.3 0 30 force
execute in minecraft:overworld run tp @s[scores={worm_hole=1}] 8 200 8 0 0
execute in minecraft:overworld run tp @s[scores={worm_hole=2}] 2 199 32 90 0
execute in minecraft:overworld run tp @s[scores={worm_hole=3}] 8 200 63 0 0
execute in minecraft:overworld run tp @s[scores={worm_hole=4}] 8 205 34 0 0
execute in minecraft:overworld run tp @s[scores={worm_hole=5}] 8 195 14 180 0
execute in minecraft:overworld run tp @s[scores={worm_hole=6}] 8 215 5 180 0
playsound minecraft:block.portal.trigger master @s ~ ~ ~ .5 2 0
particle minecraft:poof ~ ~.5 ~ 0.3 0.3 0.3 0 30 force
scoreboard players reset @s worm_hole

return 1