scoreboard players operation place_id id = @s id
execute as @e[type=armor_stand,tag=standby_sticky_bomb,sort=nearest] at @s positioned ~ ~1.5 ~ if score @s id = place_id id run function classes:bomber/detonator/detonate
playsound minecraft:block.tripwire.click_on player @a ~ ~ ~ 1 0 0
