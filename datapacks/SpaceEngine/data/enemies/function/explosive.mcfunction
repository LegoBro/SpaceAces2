execute if score @s i matches 50.. facing entity @e[tag=!invis,sort=nearest,limit=1,team=blue] feet run function enemies:look/test
execute if score @s[tag=canSee] i matches 50.. facing entity @e[tag=!invis,sort=nearest,limit=1,team=blue] feet run function enemies:shoot_explosive
execute if score @s i matches 50.. run scoreboard players set @s i 0
execute if entity @s[tag=canSee] run effect give @s minecraft:slowness 5 10 true

return 1