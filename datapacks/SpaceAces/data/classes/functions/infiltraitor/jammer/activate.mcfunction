execute if entity @s[team=blue] run scoreboard players set @a[team=red,distance=..3] totalShots 0
execute if entity @s[team=blue] run scoreboard players set @e[team=red,distance=..5,tag=turret] reload -200
execute if entity @s[team=blue] run scoreboard players set @e[team=red,distance=..5,tag=bot] i -200
execute if entity @s[team=blue] run effect give @e[team=red,distance=..5,tag=bot] weakness 10 5
execute if entity @s[team=blue] run scoreboard players add @a[team=red,distance=..4] activate_second 200
execute if entity @s[team=blue] run scoreboard players add @a[team=red,distance=..5] activate_third 200

execute if entity @s[team=blue] at @a[team=red,distance=..5] run particle block red_terracotta ~ ~ ~ 0.3 1.3 .3 .5 15 force @a
execute if entity @s[team=blue] at @a[team=red,distance=..4] run particle block red_terracotta ~ ~ ~ 0.3 1.3 .3 .5 15 force @a
execute if entity @s[team=blue] at @a[team=red,distance=..3] run particle block red_terracotta ~ ~ ~ 0.3 1.3 .3 .5 15 force @a

execute if entity @s[team=red] run scoreboard players set @a[team=blue,distance=..3] totalShots 0
execute if entity @s[team=red] run scoreboard players set @e[team=blue,distance=..5,tag=turret] reload -200
execute if entity @s[team=red] run scoreboard players add @a[team=blue,distance=..4] activate_second 200
execute if entity @s[team=red] run scoreboard players add @a[team=blue,distance=..5] activate_third 200
execute if entity @s[team=red] at @a[team=blue,distance=..5] run particle block red_terracotta ~ ~ ~ 0.3 1.3 .3 .5 15 force @a
execute if entity @s[team=red] at @a[team=blue,distance=..4] run particle block red_terracotta ~ ~ ~ 0.3 1.3 .3 .5 15 force @a
execute if entity @s[team=red] at @a[team=blue,distance=..3] run particle block red_terracotta ~ ~ ~ 0.3 1.3 .3 .5 15 force @a
playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 1 0
