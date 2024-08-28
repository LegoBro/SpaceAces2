#Hitbox for entities tagged with hb_training
execute if entity @s[tag=!kill] positioned ~ ~-1.71875 ~ if entity @e[distance=..0.378,tag=hb_training,sort=nearest,limit=1] run function projectile:doubledamage
execute if entity @s[tag=!kill] positioned ~ ~-1.109375 ~ if entity @e[distance=..0.603,tag=hb_training,sort=nearest,limit=1] run function projectile:damage
execute if entity @s[tag=!kill] positioned ~ ~-0.359375 ~ if entity @e[distance=..0.434,tag=hb_training,sort=nearest,limit=1] run function projectile:damage
return 1