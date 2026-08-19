## Player is crouching, new dict for them
execute positioned ~ ~-1 ~ if entity @n[distance=..2,tag=hb_crouched_player,tag=hb_player_1] positioned ~ ~1 ~ run return run function projectile:hitboxes/player/crouched/1
execute positioned ~ ~-1 ~ if entity @n[distance=..2,tag=hb_crouched_player,tag=hb_player_1.25] positioned ~ ~1 ~ run return run function projectile:hitboxes/player/crouched/1.25
execute positioned ~ ~-1 ~ if entity @n[distance=..2,tag=hb_crouched_player,tag=hb_player_1.15] positioned ~ ~1 ~ run return run function projectile:hitboxes/player/crouched/1.15
execute positioned ~ ~-1 ~ if entity @n[distance=..2,tag=hb_crouched_player,tag=hb_player_0.9] positioned ~ ~1 ~ run return run function projectile:hitboxes/player/crouched/0.9
execute positioned ~ ~-1 ~ if entity @n[distance=..2,tag=hb_crouched_player,tag=hb_player_0.85] positioned ~ ~1 ~ run return run function projectile:hitboxes/player/crouched/0.85
execute positioned ~ ~-1 ~ if entity @n[distance=..2,tag=hb_crouched_player,tag=hb_player_0.25] positioned ~ ~1 ~ run return run function projectile:hitboxes/player/crouched/0.25
execute positioned ~ ~-1 ~ if entity @n[distance=..2,tag=hb_crouched_player,tag=hb_player_0.5] positioned ~ ~1 ~ run return run function projectile:hitboxes/player/crouched/0.5

#execute positioned ~ ~-1 ~ if entity @n[distance=..2,tag=hb_crouched_player,tag=hb_player_0.5] positioned ~ ~1 ~ run return run function projectile:hitboxes/player/crouched/crouched/0.5