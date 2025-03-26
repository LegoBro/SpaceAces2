#Basis for recursive-raycasting. Should only be ran by entities used as raycast
tag @s[tag=!upd_accuracy] add upd_accuracy
tp @s ~ ~ ~ ~ ~
scoreboard players remove @s j 1
scoreboard players add @s i 1
execute if score @s i matches 8 run function projectile:subray
execute unless entity @s[tag=kill] unless score @s j matches 0 run function projectile:validate_position
execute if entity @s[tag=near_hb] positioned ~ ~-1 ~ if entity @e[distance=..2,tag=!raycast,tag=!ignore,tag=!ignore.projectiles] unless score @s id = @e[distance=..2,tag=!raycast,sort=nearest,limit=1] id positioned ~ ~1 ~ run function projectile:hitbox
execute if entity @s[tag=grenade,tag=impact] run function projectile:impact
kill @s[tag=kill]
execute if entity @s[tag=continue,tag=!kill] unless score @s j matches 0 positioned ^ ^ ^.125 run function projectile:ray
return 1