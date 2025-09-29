#Hitbox for entities tagged with hb_player
execute positioned ~ ~-1.53125 ~ if entity @e[distance=..0.487,tag=hb_player,sort=nearest,limit=1] run return run function projectile:doubledamage
execute positioned ~ ~-0.984375 ~ if entity @e[distance=..0.657,tag=hb_player,sort=nearest,limit=1] run return run function projectile:damage
execute positioned ~ ~-0.328125 ~ if entity @e[distance=..0.511,tag=hb_player,sort=nearest,limit=1] run return run function projectile:damage
return 1