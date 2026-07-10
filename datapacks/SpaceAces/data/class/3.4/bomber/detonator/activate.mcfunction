scoreboard players operation place_id id = @s id
execute as @e[type=minecraft:armor_stand,tag=standby_sticky_bomb,sort=nearest] at @s positioned ~ ~1.5 ~ if score @s id = place_id id run function class:3.4/bomber/detonator/detonate
playsound minecraft:block.tripwire.click_on player @a ~ ~ ~ 1 0 0

return 1