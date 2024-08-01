#Hitbox for entities tagged with hb_creeper
execute if entity @s[tag=!kill] positioned ~ ~-0.1875 ~ if entity @e[tag=hb_creeper,distance=..0.488,limit=1,sort=nearest] run function projectile:doubledamage
execute if entity @s[tag=!kill] positioned ~ ~-1.375 ~ if entity @e[tag=hb_creeper,distance=..0.433,limit=1,sort=nearest] run function projectile:damage
execute if entity @s[tag=!kill] positioned ~ ~-0.75 ~ if entity @e[tag=hb_creeper,distance=..0.467,limit=1,sort=nearest] run function projectile:damage