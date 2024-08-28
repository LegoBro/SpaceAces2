execute if entity @s[type=minecraft:silverfish,tag=mine_runner] at @s if entity @e[distance=..1,team=blue] run function enemies:silverfish_bomb
execute if entity @s[tag=ranged] at @s run function enemies:ranged
execute if entity @s[tag=poison_bot] at @s run function enemies:poison_bot_tick
execute if entity @s[tag=fire_bot] at @s run function enemies:fire_bot_tick
execute if entity @s[tag=zap_bot] at @s run function enemies:zap_bot_tick
execute if entity @s[tag=poison_trail] at @s run function enemies:poison_trail
execute as @e[tag=mechanic] at @s unless entity @e[type=minecraft:slime,distance=..16,team=red] run function classes:mechanic/turret/activate
execute if entity @s[tag=boss] at @s run particle minecraft:angry_villager ~ ~1.5 ~ 0 0 0 0 1 force @a
execute if entity @s[tag=slow_aura] at @s run effect give @a[distance=..3,team=blue] minecraft:slowness 1 1 true
execute at @s positioned ^ ^ ^1 run scoreboard players add @e[distance=...5,team=blue] damage 1
effect give @s minecraft:resistance 5 50 true

return 1