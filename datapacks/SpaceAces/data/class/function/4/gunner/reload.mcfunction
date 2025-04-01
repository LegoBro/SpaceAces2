## Used when reloading (generated)
execute if score @s totalShots matches 30.. run scoreboard players set @s reload 0

effect give @s[scores={reload=1}] minecraft:hunger 1 100 true
scoreboard players add @s[scores={reload=1..}] reload 1
scoreboard players set @s[scores={reload=70..}] totalShots 30
execute if score @s reload matches 70.. run playsound minecraft:gun.reload hostile @a ~ ~ ~
scoreboard players set @s[scores={reload=70..}] reload 0
return 1