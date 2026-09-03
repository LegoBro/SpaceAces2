#Stores all hitboxes, which are used by all projectiles
#execute positioned ~ ~-1 ~ if entity @e[distance=..2,tag=hb_creeper] positioned ~ ~1 ~ run function projectile:hitboxes/creeper
execute positioned ~ ~-1 ~ if entity @n[distance=..2,tag=hb_player] positioned ~ ~1 ~ run function projectile:hitboxes/player
execute positioned ~ ~-1 ~ if entity @n[distance=..2,tag=hb_mine] positioned ~ ~1 ~ run function projectile:hitboxes/mine
execute positioned ~ ~-1 ~ if entity @n[distance=..2,tag=hb_block] positioned ~ ~1 ~ run function projectile:hitboxes/block
execute positioned ~ ~-1 ~ if entity @n[distance=..2,tag=hb_mine_runner] positioned ~ ~1 ~ run function projectile:hitboxes/mine_runner
execute positioned ~ ~-1 ~ if entity @n[distance=..2,tag=hb_training] positioned ~ ~1 ~ run function projectile:hitboxes/training
execute positioned ~ ~-1 ~ if entity @n[distance=..2,tag=hb_turret] positioned ~ ~1 ~ run function projectile:hitboxes/turret
execute positioned ~ ~ ~ if entity @n[distance=..2,tag=hb_mechanic_turret] positioned ~ ~ ~ run function projectile:hitboxes/mechanic_turret
return 1