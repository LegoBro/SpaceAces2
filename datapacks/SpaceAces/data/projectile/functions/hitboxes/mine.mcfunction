#Hitbox for entities tagged with hb_mine
execute if entity @s[tag=!kill] positioned ~ ~-0.84375 ~ if entity @e[tag=hb_mine,distance=..0.427,limit=1,sort=nearest] run function projectile:doubledamage