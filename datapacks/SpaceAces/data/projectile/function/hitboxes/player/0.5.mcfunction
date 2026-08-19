#Hitbox for entities tagged with hb_player_0.5
execute positioned ~ ~-0.765625 ~ if entity @n[distance=..0.2435,tag=hb_player_0.5] run return run function projectile:doubledamage
execute positioned ~ ~-0.4921875 ~ if entity @n[distance=..0.3285,tag=hb_player_0.5] run return run function projectile:damage
execute positioned ~ ~-0.1640625 ~ if entity @n[distance=..0.2555,tag=hb_player_0.5] run return run function projectile:damage
return 1