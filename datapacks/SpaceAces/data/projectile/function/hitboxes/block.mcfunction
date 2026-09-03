#Hitbox for entities tagged with hb_block
execute if entity @s[tag=!kill] if entity @e[distance=..0.7,tag=hb_block,sort=nearest,limit=1] run function projectile:damage
return 1