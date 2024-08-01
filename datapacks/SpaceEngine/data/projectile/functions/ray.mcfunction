#Basis for recursive-raycasting. Should only be ran by entities used as raycast
tag @s[tag=!upd_accuracy] add upd_accuracy
tp @s ~ ~ ~ ~ ~
scoreboard players remove @s j 1
scoreboard players add @s i 1
execute if score @s i matches 16 run function projectile:subray
execute unless entity @s[tag=kill] unless score @s j matches 0 run function projectile:validate_position
execute positioned ~ ~-1 ~ if entity @e[distance=..2,tag=!raycast,tag=!ignore] unless score @s id = @e[distance=..2,tag=!raycast,limit=1,sort=nearest] id positioned ~ ~1 ~ run function projectile:hitbox
execute if entity @s[tag=grenade,tag=impact] run function projectile:impact
kill @s[tag=kill]
execute if entity @s[tag=continue,tag=!kill] unless score @s j matches 0 positioned ^ ^ ^.0625 run function projectile:ray
