#Stores all hitboxes, which are used by all projectiles
execute positioned ~ ~-1 ~ if entity @e[tag=hb_creeper,distance=..2] positioned ~ ~1 ~ run function projectile:hitboxes/creeper
execute positioned ~ ~-1 ~ if entity @e[tag=hb_crouched_player,distance=..2] positioned ~ ~1 ~ run function projectile:hitboxes/crouched_player
execute positioned ~ ~-1 ~ if entity @e[tag=hb_mine,distance=..2] positioned ~ ~1 ~ run function projectile:hitboxes/mine
execute positioned ~ ~-1 ~ if entity @e[tag=hb_mine_runner,distance=..2] positioned ~ ~1 ~ run function projectile:hitboxes/mine_runner
execute positioned ~ ~-1 ~ if entity @e[tag=hb_player,distance=..2] positioned ~ ~1 ~ run function projectile:hitboxes/player
execute positioned ~ ~-1 ~ if entity @e[tag=hb_training,distance=..2] positioned ~ ~1 ~ run function projectile:hitboxes/training
execute positioned ~ ~-1 ~ if entity @e[tag=hb_turret,distance=..2] positioned ~ ~1 ~ run function projectile:hitboxes/turret