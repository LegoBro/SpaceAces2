#xp add @a[tag=escape] 1

# Neat animation for Ship
gamemode spectator @a[gamemode=!spectator,tag=escape]
execute as @a[gamemode=spectator,tag=escape] run spectate @e[type=minecraft:armor_stand,tag=ship_anchor,limit=1] @s
scoreboard players add @e[type=minecraft:armor_stand,tag=ship_anchor] i 1
execute as @e[type=minecraft:armor_stand,tag=ship_anchor,limit=1] at @s if score @s i matches 1 run playsound minecraft:spaceship.takeoff player @a[tag=escape] ~ ~ ~ 1 1 1
execute as @e[type=minecraft:armor_stand,tag=ship_anchor,limit=1] at @s if score @s i matches 1 run title @a[tag=escape] times 0 50 10
execute as @e[type=minecraft:armor_stand,tag=ship_anchor,limit=1] at @s if score @s i matches 20 run title @a[tag=escape] title ["",{"text":"Ship powering on!","color":"dark_blue","type":"text"}]
execute as @e[type=minecraft:armor_stand,tag=ship_anchor,limit=1] at @s if score @s i matches 120 run title @a[tag=escape] title ["",{"text":"Ship is leaving the bay!","color":"dark_blue","type":"text"}]
execute as @e[type=minecraft:armor_stand,tag=ship_anchor,limit=1] at @s if score @s i matches 201..450 run tp @s ~ ~.05 ~
execute as @e[type=minecraft:armor_stand,tag=ship_anchor,limit=1] at @s if score @s i matches 275..475 run tp @s ^ ^ ^.15
execute as @e[type=minecraft:armor_stand,tag=ship_anchor,limit=1] at @s if score @s i matches 301..475 run tp @s ~ ~ ~ ~.5 ~
execute as @e[type=minecraft:armor_stand,tag=ship_anchor,limit=1] at @s if score @s i matches 475..500 run tp @s ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=ship_anchor,limit=1] at @s if score @s i matches 490 run title @a[tag=escape] title ["",{"text":"HYPERDRIVE!","color":"dark_blue","type":"text"}]
execute as @e[type=minecraft:armor_stand,tag=ship_anchor,limit=1] at @s if score @s i matches 501..514 run tp @s ^ ^ ^5
execute if score @e[type=minecraft:armor_stand,tag=ship_anchor,limit=1] i matches 550 run function gamemode:escape/point_tally
item replace entity @a[tag=escape,tag=in_game] armor.head with minecraft:carved_pumpkin

return 1