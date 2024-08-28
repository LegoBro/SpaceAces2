#Hitbox for entities tagged with hb_creeper
execute if entity @s[tag=!kill] positioned ~ ~-0.1875 ~ if entity @e[distance=..0.488,tag=hb_creeper,sort=nearest,limit=1] run function projectile:doubledamage
execute if entity @s[tag=!kill] positioned ~ ~-1.375 ~ if entity @e[distance=..0.433,tag=hb_creeper,sort=nearest,limit=1] run function projectile:damage
execute if entity @s[tag=!kill] positioned ~ ~-0.75 ~ if entity @e[distance=..0.467,tag=hb_creeper,sort=nearest,limit=1] run function projectile:damage
return 1