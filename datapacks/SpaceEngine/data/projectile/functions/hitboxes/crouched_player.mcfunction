#Hitbox for entities tagged with hb_crouched_player
execute if entity @s[tag=!kill] positioned ~ ~-1.09375 ~ if entity @e[tag=hb_crouched_player,distance=..0.487,limit=1,sort=nearest] run function projectile:doubledamage
execute if entity @s[tag=!kill] positioned ~ ~-0.546875 ~ if entity @e[tag=hb_crouched_player,distance=..0.657,limit=1,sort=nearest] run function projectile:damage
execute if entity @s[tag=!kill] positioned ~ ~-0.109375 ~ if entity @e[tag=hb_crouched_player,distance=..0.371,limit=1,sort=nearest] run function projectile:damage