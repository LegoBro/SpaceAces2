## Locates sticky bombs, which will update hotbar for bomber
scoreboard players operation place_id id = @s id
execute as @e[type=minecraft:item_display,tag=standby_sticky_bomb,sort=nearest,distance=..256] at @s positioned ~ ~0.1 ~ if score @s id = place_id id run tag @s add class.bomber.sticky_owned

execute store result score #stack_input Numbers if entity @e[type=minecraft:item_display,tag=class.bomber.sticky_owned,distance=..256]

scoreboard players operation @s ability.1.cooldown = #stack_input Numbers
scoreboard players remove @s ability.1.cooldown 1
scoreboard players operation @s ability.1.cooldown *= 20 Numbers