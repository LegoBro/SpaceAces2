#Hitbox for entities tagged with hb_mine
execute if entity @s[tag=!kill] positioned ~ ~-0.84375 ~ if entity @e[distance=..0.427,tag=hb_mine,sort=nearest,limit=1] run function projectile:doubledamage
return 1