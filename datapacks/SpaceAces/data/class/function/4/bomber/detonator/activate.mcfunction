#scoreboard players operation place_id id = @s id
execute as @e[type=minecraft:item_display,tag=standby_sticky_bomb,tag=class.bomber.sticky_owned] at @s positioned ~ ~0.1 ~ run tag @s add ignore.projectiles
execute as @e[type=minecraft:item_display,tag=standby_sticky_bomb,tag=class.bomber.sticky_owned] at @s positioned ~ ~0.1 ~ run function class:4/bomber/detonator/detonate
playsound minecraft:block.tripwire.click_on player @a ~ ~ ~ 1 0 0

scoreboard players operation @s ability.1.cooldown = class.bomber.1.cooldown Numbers
scoreboard players reset @s rightClick

return 1