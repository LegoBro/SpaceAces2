execute if entity @s[team=blue] run scoreboard players set @a[distance=..3,team=red] totalShots 0
execute if entity @s[team=blue] run scoreboard players set @e[distance=..5,tag=turret,team=red] reload -200
execute if entity @s[team=blue] run scoreboard players set @e[distance=..5,tag=bot,team=red] i -200
execute if entity @s[team=blue] run effect give @e[distance=..5,tag=bot,team=red] minecraft:weakness 10 5
execute if entity @s[team=blue] run scoreboard players add @a[distance=..4,team=red] ability.1.cooldown 200
execute if entity @s[team=blue] run scoreboard players add @a[distance=..5,team=red] ability.2.cooldown 200

execute if entity @s[team=blue] at @a[distance=..5,team=red] run particle minecraft:block{block_state:{Name:"minecraft:red_terracotta"}} ~ ~ ~ 0.3 1.3 .3 .5 15 force @a
execute if entity @s[team=blue] at @a[distance=..4,team=red] run particle minecraft:block{block_state:{Name:"minecraft:red_terracotta"}} ~ ~ ~ 0.3 1.3 .3 .5 15 force @a
execute if entity @s[team=blue] at @a[distance=..3,team=red] run particle minecraft:block{block_state:{Name:"minecraft:red_terracotta"}} ~ ~ ~ 0.3 1.3 .3 .5 15 force @a

execute if entity @s[team=red] run scoreboard players set @a[distance=..3,team=blue] totalShots 0
execute if entity @s[team=red] run scoreboard players set @e[distance=..5,tag=turret,team=blue] reload -200
execute if entity @s[team=red] run scoreboard players add @a[distance=..4,team=blue] ability.1.cooldown 200
execute if entity @s[team=red] run scoreboard players add @a[distance=..5,team=blue] ability.2.cooldown 200
execute if entity @s[team=red] at @a[distance=..5,team=blue] run particle minecraft:block{block_state:{Name:"minecraft:red_terracotta"}} ~ ~ ~ 0.3 1.3 .3 .5 15 force @a
execute if entity @s[team=red] at @a[distance=..4,team=blue] run particle minecraft:block{block_state:{Name:"minecraft:red_terracotta"}} ~ ~ ~ 0.3 1.3 .3 .5 15 force @a
execute if entity @s[team=red] at @a[distance=..3,team=blue] run particle minecraft:block{block_state:{Name:"minecraft:red_terracotta"}} ~ ~ ~ 0.3 1.3 .3 .5 15 force @a
playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 1 0

return 1