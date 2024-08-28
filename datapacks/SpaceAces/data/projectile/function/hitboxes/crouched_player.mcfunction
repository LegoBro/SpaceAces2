#Hitbox for entities tagged with hb_crouched_player
execute if entity @s[tag=!kill] positioned ~ ~-1.09375 ~ if entity @e[distance=..0.487,tag=hb_crouched_player,sort=nearest,limit=1] run function projectile:doubledamage
execute if entity @s[tag=!kill] positioned ~ ~-0.546875 ~ if entity @e[distance=..0.657,tag=hb_crouched_player,sort=nearest,limit=1] run function projectile:damage
execute if entity @s[tag=!kill] positioned ~ ~-0.109375 ~ if entity @e[distance=..0.371,tag=hb_crouched_player,sort=nearest,limit=1] run function projectile:damage
return 1