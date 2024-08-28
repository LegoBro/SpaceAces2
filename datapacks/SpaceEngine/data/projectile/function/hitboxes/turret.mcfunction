#Hitbox for entities tagged with hb_turret
execute if entity @s[tag=!kill] positioned ~ ~-1.21875 ~ if entity @e[distance=..0.451,tag=hb_turret,sort=nearest,limit=1] run function projectile:doubledamage
execute if entity @s[tag=!kill] positioned ~ ~-0.625 ~ if entity @e[distance=..0.541,tag=hb_turret,sort=nearest,limit=1] run function projectile:damage
return 1