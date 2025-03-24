effect give @s minecraft:speed 1 5 true
playsound minecraft:block.snow.break player @a ~ ~ ~ 1.0 2.0
particle minecraft:enchanted_hit ~ ~ ~ 0.01 0 0.01 .1 50 force @a

scoreboard players set @s activate_second 60
scoreboard players reset @s rightClick

return 1