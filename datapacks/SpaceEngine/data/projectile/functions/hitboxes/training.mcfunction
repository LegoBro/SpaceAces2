#Hitbox for entities tagged with hb_training
execute if entity @s[tag=!kill] positioned ~ ~-1.71875 ~ if entity @e[tag=hb_training,distance=..0.378,limit=1,sort=nearest] run function projectile:doubledamage
execute if entity @s[tag=!kill] positioned ~ ~-1.109375 ~ if entity @e[tag=hb_training,distance=..0.603,limit=1,sort=nearest] run function projectile:damage
execute if entity @s[tag=!kill] positioned ~ ~-0.359375 ~ if entity @e[tag=hb_training,distance=..0.434,limit=1,sort=nearest] run function projectile:damage