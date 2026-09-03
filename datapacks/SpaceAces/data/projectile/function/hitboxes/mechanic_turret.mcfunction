#Hitbox for entities tagged with hb_turret
execute if entity @s[tag=!kill] positioned ~ ~-0.5 ~ if entity @e[distance=..0.5,tag=hb_mechanic_turret,sort=nearest,limit=1] run function projectile:damage
execute if entity @s[tag=!kill] positioned ~ ~ ~ if entity @e[distance=..0.5,tag=hb_mechanic_turret,sort=nearest,limit=1] run function projectile:damage

return 1