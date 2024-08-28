#Hitbox for entities tagged with hb_mine_runner
execute if entity @s[tag=!kill] positioned ~ ~-0.15625 ~ if entity @e[distance=..0.427,tag=hb_mine_runner,sort=nearest,limit=1] run function projectile:doubledamage
return 1