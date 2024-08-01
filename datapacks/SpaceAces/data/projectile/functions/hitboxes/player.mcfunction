#Hitbox for entities tagged with hb_player
execute if entity @s[tag=!kill] positioned ~ ~-1.53125 ~ if entity @e[tag=hb_player,distance=..0.487,limit=1,sort=nearest] run function projectile:doubledamage
execute if entity @s[tag=!kill] positioned ~ ~-0.984375 ~ if entity @e[tag=hb_player,distance=..0.657,limit=1,sort=nearest] run function projectile:damage
execute if entity @s[tag=!kill] positioned ~ ~-0.328125 ~ if entity @e[tag=hb_player,distance=..0.511,limit=1,sort=nearest] run function projectile:damage