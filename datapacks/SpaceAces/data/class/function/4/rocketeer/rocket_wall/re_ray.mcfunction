## Throw da rocket
tp @s ^ ^ ^0.125
#particle item{item:orange_stained_glass} ~ ~ ~ 0 0 0 0.1 5 force
scoreboard players add @s i 1

scoreboard players operation #team Team = @s Team

scoreboard players operation place_id id = @s id
execute as @a if score place_id id = @s id run tag @s add attacker


tag @s[tag=kill_trigger] add impact


## Stolen from raycasting
function projectile:validate_position
execute positioned ~ ~-1 ~ if entity @n[distance=..1.25,tag=!raycast,tag=!ignore,tag=!ignore.projectiles,tag=!rocket_wall,tag=!projectile.piercing.ignore] unless score @s id = @e[distance=..1.25,tag=!raycast,tag=!rocket_wall,sort=nearest,limit=1] id positioned ~ ~1 ~ run function projectile:hitbox

#execute if entity @s[tag=!impact] positioned ^ ^0.1 ^ if entity @n[distance=..2,tag=!raycast,tag=!ignore,tag=!ignore.projectiles,tag=!projectile.piercing.ignore] unless score @s id = @e[distance=..2,tag=!raycast,tag=!rocket_wall,sort=nearest,limit=1] id positioned ^ ^-0.1 ^ run function projectile:hitbox
#execute if entity @s[tag=!impact] positioned ^ ^-0.1 ^ if entity @n[distance=..2,tag=!raycast,tag=!ignore,tag=!ignore.projectiles,tag=!projectile.piercing.ignore] unless score @s id = @e[distance=..2,tag=!raycast,tag=!rocket_wall,sort=nearest,limit=1] id positioned ^ ^0.1 ^ run function projectile:hitbox
execute if entity @s[tag=grenade,tag=impact] run function class:4/rocketeer/rocket_wall/impact

tag @s remove attacker

#execute if entity @s[tag=!continue] run say no continue
#execute if entity @s[tag=impact] run say impact
kill @s[tag=!continue]
kill @s[tag=impact]

return 1